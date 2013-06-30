using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    public class Chief : IDisposable
    {
        #region Fields

        private ILog _log;

        #endregion

        public Chief()
        {
            _log = new QueueLog(
                new ConsoleLog(),
                new SimpleFileLog(Path.Combine(Path.GetTempPath(), @"HDE\IpCamEmu")));
            _log.Open();
        }

        public bool Launch(CommandLineOptions options)
        {
            try
            {
                _log.Debug("Loading settings...");
                var configuration = ConfigurationHelper.Load(options.Configuration);
                _log.Debug("Starting machinery...");
                var workers = new List<ChiefWorkerProcess>();
                try
                {
                    foreach (var workerSettings in configuration)
                    {
                        var workerProcess = new ChiefWorkerProcess(_log, workerSettings);
                        workers.Add(workerProcess);
                        workerProcess.LaunchAsync();
                    }

                    while (workers.All(worker => worker.IsAlive && !worker.ReadyToAcceptClients))
                    {
                        Thread.Sleep(1000);
                    }

                    _log.Debug("Server(s) started...\n\nPress any key to exit.");
                    while (!Console.KeyAvailable && workers.All(worker => worker.IsAlive))
                    {
                        Thread.Sleep(3000);
                    }

                    if (!workers.All(worker => worker.IsAlive))
                    {
                        _log.Error("Some workers are not alive: {0}", 
                            string.Join(
                                ", ", 
                                workers
                                    .Where(worker=>!worker.IsAlive)
                                    .Select(worker=>worker.Name)
                                    .ToArray()));
                        return false;
                    }
                }
                finally
                {
                    if (workers != null)
                    {
                        workers.ForEach(item => item.Dispose());
                    }
                }
                return true;
            }
            catch (Exception unhandledException)
            {
                _log.Error(unhandledException);
                return false;
            }
        }

        public void Dispose()
        {
            if (_log != null)
            {
                _log.Close();
                _log = null;
            }
        }
    }
}
