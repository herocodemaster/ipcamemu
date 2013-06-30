using System.IO;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Log
{
    public sealed class IpCamEmuFileLog : SimpleFileLog
    {
        public IpCamEmuFileLog()
            : base(Path.Combine(Path.GetTempPath(), @"HDE\IpCamEmu"))
        {
        }
    }
}
