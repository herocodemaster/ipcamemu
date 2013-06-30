using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Runtime.InteropServices;
using DexterLib;
using DirectShowLib;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    class VideoFileSourceServerCache : ISourceServerCache
    {
        #region Constructors

        public VideoFileSourceServerCache(
            int width, 
            int height, 
            int bufferSize,
            int videoStreamIndex,
            double videoStreamLengthSec,

            TimeSpan timeStart,
            TimeSpan timeEnd,
            TimeSpan timeStep)
        {
            Width = width;
            Height = height;
            BufferSize = bufferSize;
            VideoStreamIndex = videoStreamIndex;
            VideoStreamLengthSec = videoStreamLengthSec;
            Processed = new Dictionary<int, byte[]>();

            _startPositionSec = ((double) timeStart.TotalMilliseconds)/1000.0;
            _shiftSec = ((double) timeStep.TotalMilliseconds)/1000.0;
            var timeEndSec = ((double) timeEnd.TotalMilliseconds)/1000.0;

            var timeEndToUseSec = timeEndSec > videoStreamLengthSec ? videoStreamLengthSec : timeEndSec;
            FramesInInterval = (int)Math.Floor( (timeEndToUseSec - _startPositionSec) / _shiftSec );
        }

        #endregion

        #region Properties

        public int Width { get; private set; }
        public int Height { get; private set; }
        public int BufferSize { get; private set; }
        public int VideoStreamIndex { get; private set; }
        public double VideoStreamLengthSec { get; private set; }
        public Dictionary<int, byte[]> Processed { get; private set; }
        public int FramesInInterval { get; private set; }

        #endregion

        #region IDispose Implementations

        public void Dispose()
        {
            Processed = new Dictionary<int, byte[]>();
        }

        #endregion

        #region Public Methods

        readonly double _startPositionSec;
        readonly double _shiftSec;
        public double GetStreamPosition(int frameNo)
        {
            return _startPositionSec + _shiftSec*frameNo;
        }

        #endregion
    }

    class VideoFileSource : BaseSource
    {
        #region Fields

        readonly string _file;
        readonly uint _bufferFrames;
        readonly TimeSpan _timeStart;
        readonly TimeSpan _timeEnd;
        readonly TimeSpan _timeStep;
        readonly bool _rotateY;
        
        #endregion

        #region Constructors

        public VideoFileSource(ILog log, 
            ImageFormat format, 
            string file, 
            uint bufferFrames, 
            TimeSpan timeStart,
            TimeSpan timeEnd, 
            TimeSpan timeStep, 
            bool rotateY,
            Region regionOfInterest)
            : base(log, format, regionOfInterest)
        {
            _file = file;
            _bufferFrames = bufferFrames;
            _timeStart = timeStart;
            _timeEnd = timeEnd;
            _timeStep = timeStep;
            _rotateY = rotateY;
        }

        #endregion

        #region ISource Implementation

        public override ISourceServerCache PrepareSourceServerCache()
        {
            _log.Debug("Opening the video file {0}...", _file);

            int width;
            int height;
            int bufferSize;
            int videoStreamIndex;
            double videoStreamLengthSec;
            var mediaDet = MediaDetHelper.OpenVideoFile(_file, out width, out height, out bufferSize, out videoStreamIndex, out videoStreamLengthSec);
            var result = new VideoFileSourceServerCache(width, height, bufferSize, videoStreamIndex, videoStreamLengthSec, _timeStart, _timeEnd, _timeStep);
            var framesInInterval = result.FramesInInterval;

            var needCache = new List<int>();
            if (_bufferFrames == 0)
            {
            }
            else if (_bufferFrames >= framesInInterval)
            {
                for (int i = 0; i < framesInInterval; i++)
                {
                    needCache.Add(i);
                }
            }
            else
            {
                var listOfVacantImages = new List<int>();
                for (int i = 0; i < framesInInterval; i++)
                {
                    listOfVacantImages.Add(i);
                }

                var rnd = new Random();
                for (int i = 0; i < _bufferFrames; i++)
                {
                    var id = rnd.Next(listOfVacantImages.Count);
                    needCache.Add(listOfVacantImages[id]);
                    listOfVacantImages.RemoveAt(id);
                }
            }

            _log.Debug("Caching video...");
            foreach (var imageNo in needCache)
            {
                var position = result.GetStreamPosition(imageNo);
                _log.Debug("Caching at {0} sec...", position);
                result.Processed.Add(imageNo, MediaDetHelper.LoadFrame(
                    mediaDet, 
                    position, 
                    result.BufferSize, 
                    result.Width, 
                    result.Height, 
                    _rotateY, 
                    _format,
                    _regionOfInterest));
            }

            _log.Debug("Caching completed!");
            
            return result;
        }

        private VideoFileSourceServerCache _cache;
        private MediaDet _mediaDet;
        public override void SetSourceServerCache(ISourceServerCache cache)
        {
            base.SetSourceServerCache(cache);
            _cache = (VideoFileSourceServerCache)cache;
        }

        int _currentFrameId;
        public override bool IsSourceEnded
        {
            get { return _currentFrameId >= _cache.FramesInInterval; }
        }

        public override bool Reset()
        {
            if (_mediaDet == null)
            {
                _mediaDet = MediaDetHelper.OpenVideoFile(_file, _cache.VideoStreamIndex);
            }

            if (!IsSourceEnded)
            {
                return true;
            }

            _currentFrameId = 0;

            return !IsSourceEnded;
        }
        
        private readonly object _syncObj = new object();
        public override byte[] GetNextFrame()
        {
            lock (_syncObj)
            {
                var result = MediaDetHelper.LoadFrame(
                    _mediaDet,
                    _cache.GetStreamPosition(_currentFrameId),
                    _cache.BufferSize,
                    _cache.Width,
                    _cache.Height,
                    _rotateY,
                    _format,
                    _regionOfInterest);
                _currentFrameId++;

                return result;
            }
        }

        public override void Dispose()
        {
            // That's dark side of MediaDet. It is undisposable!
        }

        #endregion
    }

    public static class MediaDetHelper
    {
        #region Constants

        static readonly Guid MediatypeVideo = new Guid(0x73646976, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
        const uint BitmapInfoHeaderSize = 40;

        #endregion

        #region Public Methods

        public static MediaDet OpenVideoFile(
           string file,
           int videoStreamIndex)
        {
            return new MediaDet
                {
                    Filename = file,
                    CurrentStream = videoStreamIndex
                };
        }

        public static MediaDet OpenVideoFile(
            string file,
            out int width,
            out int height,
            out int bufferSize,
            out int videoStreamIndex,
            out double videoStreamLengthSec)
        {
            MediaDet mediaDet;
            _AMMediaType amMediaType;
            if (!OpenVideoStream(
                file,
                out mediaDet,
                out amMediaType,
                out videoStreamIndex))
            {
                throw new InvalidDataException(string.Format("Video stream was not found: {0}", file));
            }

            videoStreamLengthSec = mediaDet.StreamLength;

            _AMMediaType mt = mediaDet.StreamMediaType;
            var videoInfo = (VideoInfoHeader)Marshal.PtrToStructure(mt.pbFormat, typeof(VideoInfoHeader));
            width = videoInfo.BmiHeader.Width;
            height = videoInfo.BmiHeader.Height;

            // extract buffer size.
            var buffer = IntPtr.Zero;
            bufferSize = 0;

            mediaDet.GetBitmapBits(0.0, ref bufferSize, buffer, width, height);

            return mediaDet;
        }

        public static byte[] LoadFrame(MediaDet mediaDet, double positionSec,
            int bufferSize,
            int width,
            int height,
            bool rotateY,
            ImageFormat imageFormat,
            Region regionOfInterest)
        {
            IntPtr buffer = Marshal.AllocHGlobal(bufferSize);
            try
            {
                mediaDet.GetBitmapBits(positionSec, ref bufferSize, buffer, width, height);
                using (var bitmap = new Bitmap(width, height, width * 3,
                        PixelFormat.Format24bppRgb,
                        new IntPtr((int)buffer + BitmapInfoHeaderSize)))
                {
                    if (rotateY)
                    {
                        bitmap.RotateFlip(RotateFlipType.Rotate180FlipX);
                    }

                    return ImageHelper.ConvertToBytes(bitmap, imageFormat, regionOfInterest);
                }
            }
            finally
            {
                Marshal.FreeHGlobal(buffer);
            }
        }

        #endregion

        #region Private Methods

        private static bool OpenVideoStream(string videoFile,
            out MediaDet mediaDet, 
            out _AMMediaType aMMediaType,
            out int streamNumber)
        {
            mediaDet = new MediaDet
            {
                Filename = videoFile
            };
            var streamsNumber = mediaDet.OutputStreams;

            //finds a video stream and grabs a frame
            for (streamNumber = 0; streamNumber < streamsNumber; streamNumber++)
            {
                mediaDet.CurrentStream = streamNumber;
                _AMMediaType mediaType = mediaDet.StreamMediaType;

                if (mediaType.majortype == MediatypeVideo)
                {
                    aMMediaType = mediaType;
                    return true;
                }
            }

            aMMediaType = new _AMMediaType();
            return false;
        }

        #endregion
    }
}