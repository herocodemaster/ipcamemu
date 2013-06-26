using System;
using HDE.IpCamEmu.Core.MJpeg;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ServerSourceInstance
{
    static class ServerSourceFactory
    {
        public static IServerSourceInstance Create(ILog log, SourceSettings settings)
        {
            switch (settings.InstanciateMode)
            {
                case InstanciateMode.InstancePerClient:
                    return new PerClientServerSourceInstantiate(log, settings);
                case InstanciateMode.InstancePerServer:
                    return new PerServerServerSourceInstantiate(log, settings);
            }
            throw new NotImplementedException(settings.InstanciateMode.ToString());
        }
    }
}