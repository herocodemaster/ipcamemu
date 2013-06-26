using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    class FolderServerCache: ISourceServerCache
    {
        #region Constructors

        public FolderServerCache(string[] images, Dictionary<string, byte[]> processed)
        {
            Images = images;
            Processed = processed;
        }

        #endregion

        #region Properties

        public string[] Images { get; private set; }
        public Dictionary<string, byte[]> Processed { get; private set; }

        #endregion

        #region IDispose Implementations

        public void Dispose()
        {
            Images = new string[] {};
            Processed = new Dictionary<string, byte[]>();
        }

        #endregion
    }

    class FolderSource : BaseSource
    {
        #region Fields

        private readonly string _folder;
        private readonly uint _bufferFrames;

        #endregion

        #region Constructors

        public FolderSource(ILog log, string name, string folder, ImageFormat format, uint bufferFrames, Region regionOfInterest)
            : base(log, name, format, regionOfInterest)
        {
            _folder = folder;
            _bufferFrames = bufferFrames;
        }

        #endregion

        #region ISource Implementation

        public override bool IsSourceEnded
        {
            get { return _files.Count == 0; }
        }

        private readonly Queue<string> _files = new Queue<string>();

        public override ISourceServerCache PrepareSourceServerCache()
        {
            _log.Debug("{0}: Reading folder contents...", _name);
            const string supportedExtensions = "*.jpg,*.gif,*.png,*.bmp,*.jpe,*.jpeg,*.wmf,*.emf,*.xbm,*.ico,*.eps,*.tif,*.tiff,*.g01,*.g02,*.g03,*.g04,*.g05,*.g06,*.g07,*.g08";
            var images = Directory
                .GetFiles(_folder, "*.*", SearchOption.AllDirectories)
                .Where(s => supportedExtensions.Contains(Path.GetExtension(s).ToLower()) &&
                            !s.Contains(".svn"))
                .OrderBy(item => item)
                .ToArray();

            var needCache = new List<string>();
            var processed = new Dictionary<string, byte[]>();
            if (_bufferFrames == 0)
            {
            }
            else if (_bufferFrames >= images.Length)
            {
                foreach (var image in images)
                {
                    needCache.Add(image);
                }
            }
            else
            {
                var listOfVacantImages = images
                    .ToList();

                var rnd = new Random();
                for (int i = 0; i < _bufferFrames; i++)
                {
                    var id = rnd.Next(listOfVacantImages.Count);
                    needCache.Add(listOfVacantImages[id]);
                    listOfVacantImages.RemoveAt(id);
                }
            }

            _log.Debug("{0}: Caching...", _name);
            foreach (var image in needCache)
            {
                _log.Debug("{0}: Caching {1}...", _name, image);
                processed.Add(image, LoadFrame(_format, _regionOfInterest, image));
            }

            _log.Debug("{0}: Caching completed!", _name);
            return new FolderServerCache(images, processed);
        }

        private FolderServerCache _cache;
        public override void SetSourceServerCache(ISourceServerCache cache)
        {
            base.SetSourceServerCache(cache);
            _cache = (FolderServerCache)cache;
        }

        public override bool Reset()
        {
            if (!IsSourceEnded)
            {
                return true;
            }

            _files.Clear();

            foreach (var image in _cache.Images)
            {
                _files.Enqueue(image);
            }

            return !IsSourceEnded;
        }

        public override byte[] GetNextFrame()
        {
            var file = _files.Dequeue();
            byte[] result;
            if (!_cache.Processed.TryGetValue(file, out result))
            {
                result = LoadFrame(_format, _regionOfInterest, file);
            }
            return result;
        }

        public override void Dispose()
        {
            _files.Clear();
        }

        #endregion

        #region Private Methods

        private static byte[] LoadFrame(ImageFormat format, Region region, string file)
        {
            using (var image = Image.FromFile(file))
            {
                return ImageHelper.ConvertToBytes(image, format, region);
            }
        }

        #endregion
    }
}