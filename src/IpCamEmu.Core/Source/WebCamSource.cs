using System.Drawing.Imaging;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    class WebCamSource : BaseSource
    {
        #region Fields

        private readonly int _inputVideoDeviceId;
        private readonly uint _readSpeed;
        private readonly uint _width;
        private readonly uint _height;
        private readonly bool _rotateY;
        private IvdDataAdapter _adapter;

        #endregion

        #region Constructors

        public WebCamSource(
            ILog log,
            int inputVideoDeviceId,
            uint readSpeed,
            uint width,
            uint height, 
            bool rotateY,
            ImageFormat format,
            Region regionOfInterest)
            : base(log, format, regionOfInterest)
        {
            _inputVideoDeviceId = inputVideoDeviceId;
            _readSpeed = readSpeed;
            _width = width;
            _height = height;
            _rotateY = rotateY;
        }

        #endregion

        #region ISource Implementation

        public override bool IsSourceEnded
        {
            get { return false; }
        }

        public override bool Reset()
        {
            if (_adapter != null)
            {
                return true;
            }

            _adapter = new IvdDataAdapter(_inputVideoDeviceId, (int)_readSpeed, (int)_width, (int)_height); ;
            _adapter.Start();

            return true;
        }

        public override byte[] GetNextFrame()
        {
            return _adapter.GetFrame(_format, _rotateY, _regionOfInterest);
        }

        public override void Dispose()
        {
            if (_adapter != null)
            {
                _adapter.Pause();
                _adapter.Dispose();
                _adapter = null;
            }
        }

        #endregion
    }
}
