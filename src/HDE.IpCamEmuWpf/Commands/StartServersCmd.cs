using System;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.IpCamEmuWpf.ChiefWorker;

namespace HDE.IpCamEmuWpf.Commands
{
    class StartServesrCmd
    {
        public bool StartServers(Controller controller)
        {
            try
            {
                controller.Model.Chief = new ChiefWpf(
                    controller.Log,
                    CommandLineOptions.ParseCommandLineArguments(
                        CommandLineOptions.GetCurrentProcessCommandLineArguments()));
                return controller.Model.Chief.Launch();

            }
            catch (Exception unhandledException)
            {
                controller.Log.Error(unhandledException);
                return false;
            }
        }
    }
}
