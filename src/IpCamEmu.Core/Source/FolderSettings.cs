using System;
using System.IO;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    [Serializable]
    public class FolderSettings : SourceSettings
    {
        #region Properties

        public uint BufferFrames { get; set; }
        public string Folder { get; set; }

        #endregion

        #region Create Implementation

        internal override ISource Create(ILog log)
        {
            return new FolderSource(log, new DirectoryInfo(Folder).FullName, GetFormat(), BufferFrames, RegionOfInterest);
        }

        #endregion
    }
}