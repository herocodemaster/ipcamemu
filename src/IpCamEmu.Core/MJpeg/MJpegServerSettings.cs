using System;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.MJpeg
{
    public class MJpegServerSettings : ServerSettingsBase
    {
        #region Properties

        public string Uri { get; private set; }
        public uint FrameDelay { get; private set; }

        #endregion

        #region Constructors

        public MJpegServerSettings(
            string uri, 
            uint frameDelay,
            SourceSettings sourceSettings)
        {
            Uri = uri;
            FrameDelay = frameDelay;
            SourceSettings = sourceSettings;
        }

        #endregion

        public override IDisposable CreateServer(ILog log)
        {
            return new MJpegServer(log, this);
        }
    }
}