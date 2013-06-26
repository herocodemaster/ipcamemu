using System;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Threading;
using DirectShowLib;

namespace HDE.IpCamEmu.Core.Source
{
    class IvdDataAdapter : ISampleGrabberCB, IDisposable
    {
        #region Member variables

        private IFilterGraph2 _filterGraph;
        private IMediaControl _mediaCtrl;
        private ManualResetEvent _pictureReadyResetEvent;
        private volatile bool _gotPicture;
        private bool _isRunning;
        private IntPtr _handle = IntPtr.Zero;
        private int _width;
        private int _height;
        private int _stride;

        #endregion

        #region API

        [DllImport("Kernel32.dll", EntryPoint = "RtlMoveMemory")]
        private static extern void CopyMemory(IntPtr Destination, IntPtr Source, int Length);

        #endregion

        /// <summary> Use capture device zero, default frame rate and size</summary>
        public IvdDataAdapter()
        {
            _Capture(0, 0, 0, 0);
        }
        /// <summary> Use specified capture device, default frame rate and size</summary>
        public IvdDataAdapter(int iDeviceNum)
        {
            _Capture(iDeviceNum, 0, 0, 0);
        }
        /// <summary> Use specified capture device, specified frame rate and default size</summary>
        public IvdDataAdapter(int iDeviceNum, int iFrameRate)
        {
            _Capture(iDeviceNum, iFrameRate, 0, 0);
        }
        /// <summary> Use specified capture device, specified frame rate and size</summary>
        public IvdDataAdapter(int iDeviceNum, int iFrameRate, int iWidth, int iHeight)
        {
            _Capture(iDeviceNum, iFrameRate, iWidth, iHeight);
        }
        /// <summary> release everything. </summary>
        public void Dispose()
        {
            CloseInterfaces();
            if (_pictureReadyResetEvent != null)
            {
                _pictureReadyResetEvent.Close();
                _pictureReadyResetEvent = null;
            }
        }
        // Destructor
        ~IvdDataAdapter()
        {
            Dispose();
        }

        public int Stride
        {
            get
            {
                return _stride;
            }
        }

        private readonly object _sync = new object();

        public byte[] GetFrame(ImageFormat format, bool rotateY, Region regionOfInterest)
        {
            // Problem: _handle is the same value across calls.
            //          when 2 parallel threads accesses that handle
            //          second thread could close it when the first thread
            //          was going to write data
            // Solution: Sync lock

            lock (_sync)
            {
                _handle = Marshal.AllocCoTaskMem(_stride*_height);

                try
                {
                    // get ready to wait for new image
                    _pictureReadyResetEvent.Reset();
                    _gotPicture = false;

                    // If the graph hasn't been started, start it.
                    Start();

                    // Start waiting
                    if (!_pictureReadyResetEvent.WaitOne(5000, false))
                    {
                        throw new Exception("Timeout waiting to get picture");
                    }
                }
                catch
                {
                    Marshal.FreeCoTaskMem(_handle);
                    throw;
                }

                // Got one
                using (var image = new Bitmap(_width, _height, _stride, PixelFormat.Format24bppRgb, _handle))
                {
                    if (rotateY)
                    {
                        image.RotateFlip(RotateFlipType.RotateNoneFlipY);
                    }

                    var result = ImageHelper.ConvertToBytes(image, format, regionOfInterest);
                    Marshal.FreeCoTaskMem(_handle);
                    return result;
                }
            }
        }
        // Start the capture graph
        public void Start()
        {
            if (!_isRunning)
            {
                int hr = _mediaCtrl.Run();
                DsError.ThrowExceptionForHR(hr);

                _isRunning = true;
            }
        }
        // Pause the capture graph.
        // Running the graph takes up a lot of resources.  Pause it when it
        // isn't needed.
        public void Pause()
        {
            if (_isRunning)
            {
                int hr = _mediaCtrl.Pause();
                DsError.ThrowExceptionForHR(hr);

                _isRunning = false;
            }
        }


        // Internal capture
        private void _Capture(int iDeviceNum, int iFrameRate, int iWidth, int iHeight)
        {
            // Get the collection of video devices
            DsDevice[] capDevices = DsDevice.GetDevicesOfCat(FilterCategory.VideoInputDevice);

            if (iDeviceNum + 1 > capDevices.Length)
            {
                throw new Exception("No video capture devices found at that index!");
            }

            try
            {
                // Set up the capture graph
                SetupGraph(capDevices[iDeviceNum], iFrameRate, iWidth, iHeight);

                // tell the callback to ignore new images
                _pictureReadyResetEvent = new ManualResetEvent(false);
                _gotPicture = true;
                _isRunning = false;
            }
            catch
            {
                Dispose();
                throw;
            }
        }

        /// <summary> build the capture graph for grabber. </summary>
        private void SetupGraph(DsDevice dev, int iFrameRate, int iWidth, int iHeight)
        {
            ISampleGrabber sampGrabber = null;
            IBaseFilter capFilter = null;
            ICaptureGraphBuilder2 capGraph = null;

            // Get the graphbuilder object
            _filterGraph = (IFilterGraph2)new FilterGraph();
            _mediaCtrl = _filterGraph as IMediaControl;
            try
            {
                // Get the ICaptureGraphBuilder2
                capGraph = (ICaptureGraphBuilder2)new CaptureGraphBuilder2();

                // Get the SampleGrabber interface
                sampGrabber = (ISampleGrabber)new SampleGrabber();

                // Start building the graph
                int hr = capGraph.SetFiltergraph(_filterGraph);
                DsError.ThrowExceptionForHR(hr);

                // Add the video device
                hr = _filterGraph.AddSourceFilterForMoniker(dev.Mon, null, "Video input", out capFilter);
                DsError.ThrowExceptionForHR(hr);

                var baseGrabFlt = (IBaseFilter)sampGrabber;
                ConfigureSampleGrabber(sampGrabber);

                // Add the frame grabber to the graph
                hr = _filterGraph.AddFilter(baseGrabFlt, "Ds.NET Grabber");
                DsError.ThrowExceptionForHR(hr);

                // If any of the default config items are set
                if (iFrameRate + iHeight + iWidth > 0)
                {
                    SetConfigParms(capGraph, capFilter, iFrameRate, iWidth, iHeight);
                }

                hr = capGraph.RenderStream(PinCategory.Capture, MediaType.Video, capFilter, null, baseGrabFlt);
                DsError.ThrowExceptionForHR(hr);

                SaveSizeInfo(sampGrabber);
            }
            finally
            {
                if (capFilter != null)
                {
                    Marshal.ReleaseComObject(capFilter);
                }
                if (sampGrabber != null)
                {
                    Marshal.ReleaseComObject(sampGrabber);
                }
                if (capGraph != null)
                {
                    Marshal.ReleaseComObject(capGraph);
                }
                GC.Collect();
            }
        }

        private void SaveSizeInfo(ISampleGrabber sampGrabber)
        {
            // Get the media type from the SampleGrabber
            var media = new AMMediaType();
            int hr = sampGrabber.GetConnectedMediaType(media);
            DsError.ThrowExceptionForHR(hr);

            if ((media.formatType != FormatType.VideoInfo) || (media.formatPtr == IntPtr.Zero))
            {
                throw new NotSupportedException("Unknown Grabber Media Format");
            }

            // Grab the size info
            var videoInfoHeader = (VideoInfoHeader)Marshal.PtrToStructure(media.formatPtr, typeof(VideoInfoHeader));
            _width = videoInfoHeader.BmiHeader.Width;
            _height = videoInfoHeader.BmiHeader.Height;
            _stride = _width * (videoInfoHeader.BmiHeader.BitCount / 8);

            DsUtils.FreeAMMediaType(media);
            GC.Collect();
        }
        private void ConfigureSampleGrabber(ISampleGrabber sampGrabber)
        {
            var media = new AMMediaType
                            {
                                majorType = MediaType.Video,
                                subType = MediaSubType.RGB24,
                                formatType = FormatType.VideoInfo
                            };
            int hr = sampGrabber.SetMediaType(media);
            DsError.ThrowExceptionForHR(hr);

            DsUtils.FreeAMMediaType(media);
            GC.Collect();

            // Configure the samplegrabber
            hr = sampGrabber.SetCallback(this, 1);
            DsError.ThrowExceptionForHR(hr);
        }

        private static void SetConfigParms(ICaptureGraphBuilder2 capGraph, IBaseFilter capFilter, int iFrameRate, int iWidth, int iHeight)
        {
            object o;
            AMMediaType media;

            // Find the stream config interface
            capGraph.FindInterface(PinCategory.Capture, MediaType.Video, capFilter, typeof(IAMStreamConfig).GUID, out o);

            var videoStreamConfig = o as IAMStreamConfig;
            if (videoStreamConfig == null)
            {
                throw new Exception("Failed to get IAMStreamConfig");
            }

            // Get the existing format block
            var hr = videoStreamConfig.GetFormat(out media);
            DsError.ThrowExceptionForHR(hr);

            // copy out the videoinfoheader
            var v = new VideoInfoHeader();
            Marshal.PtrToStructure(media.formatPtr, v);

            // if overriding the framerate, set the frame rate
            if (iFrameRate > 0)
            {
                v.AvgTimePerFrame = 10000000 / iFrameRate;
            }

            // if overriding the width, set the width
            if (iWidth > 0)
            {
                v.BmiHeader.Width = iWidth;
            }

            // if overriding the Height, set the Height
            if (iHeight > 0)
            {
                v.BmiHeader.Height = iHeight;
            }

            // Copy the media structure back
            Marshal.StructureToPtr(v, media.formatPtr, false);

            // Set the new format
            hr = videoStreamConfig.SetFormat(media);
            DsError.ThrowExceptionForHR(hr);

            DsUtils.FreeAMMediaType(media);
            GC.Collect();
        }

        private void CloseInterfaces()
        {
            try
            {
                if (_mediaCtrl != null)
                {
                    // Stop the graph
                    _isRunning = false;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }

            if (_filterGraph != null)
            {
                Marshal.ReleaseComObject(_filterGraph);
                _filterGraph = null;
            }
        }

        int ISampleGrabberCB.SampleCB(double sampleTime, IMediaSample sample)
        {
            if (!_gotPicture)
            {
                // Set bGotOne to prevent further calls until we
                // request a new bitmap.
                _gotPicture = true;
                IntPtr pBuffer;

                sample.GetPointer(out pBuffer);

                if (sample.GetSize() > _stride * _height)
                {
                    throw new Exception("Buffer is wrong size");
                }

                CopyMemory(_handle, pBuffer, _stride * _height);

                _pictureReadyResetEvent.Set();
            }

            Marshal.ReleaseComObject(sample);
            return 0;
        }

        int ISampleGrabberCB.BufferCB(double sampleTime, IntPtr buffer, int bufferLength)
        {
            if (!_gotPicture)
            {
                // The buffer should be long enought
                if (bufferLength <= _stride * _height)
                {
                    // Copy the frame to the buffer
                    CopyMemory(_handle, buffer, _stride * _height);
                }
                else
                {
                    throw new Exception("Buffer is wrong size");
                }

                // Set bGotOne to prevent further calls until we
                // request a new bitmap.
                _gotPicture = true;

                // Picture is ready.
                _pictureReadyResetEvent.Set();
            }
            return 0;
        }
    }
}