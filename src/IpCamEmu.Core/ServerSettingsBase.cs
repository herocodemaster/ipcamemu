using System;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core
{
    public abstract class ServerSettingsBase
    {
        public SourceSettings SourceSettings { get; protected set; }

        public abstract IDisposable CreateServer(ILog log);
    }
}