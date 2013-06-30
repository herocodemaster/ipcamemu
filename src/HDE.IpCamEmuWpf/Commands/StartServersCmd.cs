using System;
using System.Linq;
using HDE.IpCamEmu;
using HDE.IpCamEmu.Core;
using HDE.IpCamEmu.Core.ConfigurationStaff;

namespace HDE.IpCamEmuWpf.Commands
{
    class StartServesrCmd
    {
        public bool StartServers(Controller controller)
        {
            try
            {
                controller.Log.Debug("Loading settings...");

                var allCommandLineArguments = Environment.GetCommandLineArgs();
                var realCommandLineArguments = new string[allCommandLineArguments.Length - 1 ];
                Array.Copy(allCommandLineArguments, 1, realCommandLineArguments, 0, realCommandLineArguments.Length);
                var settings = ConfigurationHelper.Load(CommandLineOptions.ParseCommandLineArguments(realCommandLineArguments).Configuration);
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
