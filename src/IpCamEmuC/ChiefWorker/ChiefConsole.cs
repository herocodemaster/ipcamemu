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

        protected override bool IsExitOnDemand()
        {
            var result = Console.KeyAvailable;
            if (result)
            {
                Console.ReadKey(false); // we need to read key send to app before quit.
            }
            return result;
        }

        protected override void ReadyToAcceptClients()
        {
            _log.Debug("\n\nPress any key to exit.");
        }

        protected override void ErrorOccured(string error)
        {
            Console.Title = error;
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
