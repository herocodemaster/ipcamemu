using System;
using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.IpCamEmu.Core.Log;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.ChiefWorker
{
    class ChiefConsole: Chief
    {
        public ChiefConsole(CommandLineOptions options)
            : base(
                new QueueLog(
                    new ConsoleLog(),
                    new IpCamEmuFileLog()), 
                options)
        {
        }

        protected override string GetExitOnDemandMessage()
        {
            return "Press any key to exit.";
        }

        protected override bool IsExitOnDemand()
        {
            var result = Console.KeyAvailable;
            if (result)
            {
                Console.ReadKey(false); // we need to read key send to app before quit.
            }
            return result;
        }

        public override void Dispose()
        {
            if (_log != null)
            {
                _log.Close();
                _log = null;
            }
        }
    }
}
