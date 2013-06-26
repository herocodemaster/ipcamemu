using System;
using System.Linq;
using HDE.IpCamEmu;
using HDE.IpCamEmu.Core;

namespace HDE.IpCamEmuWpf.Commands
{
    class StartServesrCmd
    {
        public bool StartServers(Controller controller)
        {
            try
            {
                controller.Log.Debug("Loading settings...");
                var settings = ServerConfigurationHelper.Load();
                controller.Log.Debug("Starting machinery...");
                controller.Model.Servers = settings
                    .Select(item => WebServerFactory.CreateServer(controller.Log, item))
                    .ToList();
                controller.Log.Debug("Server(s) started...");
            }
            catch (Exception unhandledException)
            {
                controller.Log.Error(unhandledException);
                return false;
            }

            return true;
        }
    }
}
