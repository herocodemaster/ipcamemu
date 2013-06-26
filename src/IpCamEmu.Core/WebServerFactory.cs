using System;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core
{
    public static class WebServerFactory
    {
        public static IDisposable CreateServer(ILog log, ServerSettingsBase settings)
        {
            return settings.CreateServer(log);
        }
    }
}
