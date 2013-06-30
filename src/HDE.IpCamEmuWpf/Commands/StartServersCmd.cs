using System;
using System.Threading;
using System.Windows.Threading;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.IpCamEmuWpf.ChiefWorker;

namespace HDE.IpCamEmuWpf.Commands
{
    class StartServesrCmd
    {
        public void StartServers(Controller controller, 
            Dispatcher dispatcher,
            Action onInitializeCompleted,
            Action<string> onError)
        {
            controller.Model.Chief = new ChiefWpf(
                    controller.Log,
                    CommandLineOptions.ParseCommandLineArguments(
                        CommandLineOptions.GetCurrentProcessCommandLineArguments()),
                    dispatcher,
                    onInitializeCompleted,
                    onError);

                
            new Thread(() => controller.Model.Chief.Launch()) {IsBackground = true}
                .Start(); // do not keep reference because launch.
        }
    }
}
