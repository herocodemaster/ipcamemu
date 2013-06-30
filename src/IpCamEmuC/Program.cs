using HDE.IpCamEmu.ChiefWorker;
using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;

namespace HDE.IpCamEmu
{
    class Program
    {
        static int Main(string[] args)
        {
            var options = CommandLineOptions.ParseCommandLineArguments(args);

            if (options.WorkerSettingsPipeHandle == null)
            {
                using (var chief = new Chief())
                {
                    return chief.Launch(options) ? 0 : -1;
                }
            }
            else
            {
                using (var worker = new Worker(options))
                {
                    worker.Launch();
                }
                return 0;
            }
        }
    }
}
