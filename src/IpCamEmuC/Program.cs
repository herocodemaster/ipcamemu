using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using HDE.IpCamEmu.Core;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu
{
    class Program
    {
        static int Main(string[] args)
        {
            var log = new QueueLog(
                new ConsoleLog(),
                new SimpleFileLog(Path.Combine(Path.GetTempPath(), @"HDE\IpCamEmu")));
            log.Open();

            try
            {
                log.Debug("Loading settings...");
                var settings = ServerConfigurationHelper.Load(
                    CommandLineOptions.ParseCommandLineArguments(args).Configuration);
                log.Debug("Starting machinery...");
                List<IDisposable> servers = null;
                try
                {
                    servers = settings
                        .Select(item => WebServerFactory.CreateServer(log, item))
                        .ToList();

                    log.Debug("Server(s) started...\n\nPress <Enter> to exit.");
                    Console.ReadLine();
                }
                finally
                {
                    if (servers != null)
                    {
                        servers.ForEach(item=>item.Dispose());
                    }
                }
                return 0;
            }
            catch (UserFriendlyException)
            {
                // Exception is expected to be logged near the place it created.
                return -1;
            }
            catch (Exception unhandledException)
            {
                log.Error(unhandledException);
                return -1;
            }
            finally
            {
                log.Close();
            }
        }
    }
}
