using System;
using System.IO;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    [Serializable]
    public class VideoFileSettings : SourceSettings
    {
        #region Properties

        public string File { get; set; }
        public uint BufferFrames { get; set; }
        public TimeSpan TimeStart { get; set; }
        public TimeSpan TimeEnd { get; set; }
        public TimeSpan TimeStep { get; set; }
        public bool RotateY { get; set; }

        #endregion

        internal override ISource Create(ILog log)
        {
            return new VideoFileSource(
                log, 
                Name, 
                GetFormat(), 
                new FileInfo(File).FullName, 
                BufferFrames, 
                TimeStart, 
                TimeEnd, 
                TimeStep, 
                RotateY,
                RegionOfInterest);
        }
    }
}