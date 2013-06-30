using System;
using System.Diagnostics;
using System.Threading;
using HDE.IpCamEmu.Core;
using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.ChiefWorker
{
    /// <summary>
    /// Controller for one of several worker instances (each per child)
    /// launched by chief to utilize more memory.
    /// 
    /// Worker handles request of one server declaration.
    /// </summary>
    sealed class Worker : IDisposable
    {
        #region Fields

        private ILog _log;
        private readonly ServerSettingsBase _settings;
        private Process _chiefProcess;

        #endregion

        #region Constructors

        public Worker(CommandLineOptions options)
        {
            ChiefWorkerSettingsHelper.ReadSettings(
                options.WorkerSettingsPipeHandle,

                out _log,
                out _settings,
                out _chiefProcess);
        }

        #endregion

        #region Public Methods

        public void Launch()
        {
            try
            {
                using (WebServerFactory.CreateServer(_log, _settings))
                {
                    _log.Debug(ChiefWorkerPredefinedMessages.WorkerReadyToAcceptClients);
                    while (!_chiefProcess.HasExited)
                    {
                        Thread.Sleep(3000);
                    }
                }
            }
            catch (UserFriendlyException)
            {
                // Exception is expected to be logged near the place it created.
            }
            catch (Exception unhandledException)
            {
                _log.Error(unhandledException);
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

        #endregion
    }
}
