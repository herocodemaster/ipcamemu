using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    public abstract class Chief : IDisposable
    {
        #region Fields

        protected ILog _log;
        protected readonly CommandLineOptions _options;

        #endregion

        #region Constructors

        protected Chief(ILog log,
            CommandLineOptions options)
        {
            _log = log;
            if (!log.IsOpened)
            {
                log.Open();
            }
            _options = options;
        }

        #endregion

        #region Properties

        #endregion

        #region Protected Methods

        protected abstract bool IsExitOnDemand();
        protected abstract void ReadyToAcceptClients();
        protected abstract void ErrorOccured(string error);

        #endregion

        #region Public Methods

        public bool Launch()
        {
            var workers = new List<ChiefWorkerProcess>();
            try
            {
                _log.Debug("Loading settings...");
                var configuration = ConfigurationHelper.Load(_options.Configuration);
                _log.Debug("Starting machinery...");
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

                    _log.Debug("Server(s) started...");
                    ReadyToAcceptClients();

                    while (!IsExitOnDemand() && workers.All(worker => worker.IsAlive))
                    {
                        Thread.Sleep(3000);
                    }

                    if (!workers.All(worker => worker.IsAlive))
                    {
                        var error = string.Format("The following sources does not work: {0}",
                            string.Join(
                                ", ",
                                workers
                                    .Where(worker => !worker.IsAlive)
                                    .Select(worker => worker.Name)
                                    .ToArray()));
                        _log.Error(error);
                        ErrorOccured(error);
                        return false;
                    }
                }
                finally
                {
                    workers.ForEach(item => item.Dispose());
                }
                return true;
            }
            catch (Exception unhandledException)
            {
                _log.Error(unhandledException);
                return false;
            }
        }

        public abstract void Dispose();

        #endregion
    }
}
