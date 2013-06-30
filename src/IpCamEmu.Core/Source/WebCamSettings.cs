using System;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    [Serializable]
    public class WebCamSettings : SourceSettings
    {
        #region Properties

        public int InputVideoDeviceId { get; set; }
        public uint ReadSpeed { get; set; }
        public uint Width { get; set; }
        public uint Height { get; set; }
        public bool RotateY { get; set; }
        
        #endregion

        internal override ISource Create(ILog log)
        {
            if (InstanciateMode == InstanciateMode.InstancePerClient)
            {
                throw new NotSupportedException("Instantiate mode for web-camera MUST be InstancePerServer.");
            }

            return new WebCamSource(
                log, 
                InputVideoDeviceId, 
                ReadSpeed, 
                Width, 
                Height, 
                RotateY, 
                GetFormat(),
                RegionOfInterest);
        }
    }
}
