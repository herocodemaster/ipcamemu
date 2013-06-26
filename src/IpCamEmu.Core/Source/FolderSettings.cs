using System.IO;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    public class FolderSettings : SourceSettings
    {
        #region Properties

        public uint BufferFrames { get; set; }
        public string Folder { get; set; }

        #endregion

        #region Create Implementation

        internal override ISource Create(ILog log)
        {
            return new FolderSource(log, Name, new DirectoryInfo(Folder).FullName, Format, BufferFrames, RegionOfInterest);
        }

        #endregion
    }
}