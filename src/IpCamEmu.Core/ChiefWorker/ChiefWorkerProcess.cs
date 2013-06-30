using System;
using System.Diagnostics;
using System.IO;
using System.IO.Pipes;
using System.Reflection;
using System.Threading;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    /// <summary>
    /// Worker process for its management by Chief.
    /// </summary>
    class ChiefWorkerProcess : IDisposable
    {
        #region Fields

        private ILog _log;
        private ServerSettingsBase _settings;
        
        private AnonymousPipeServerStream _logReceiverPipe;
        private Thread _logReceiverThread;

        private volatile Process _process;
        private Thread _launchProcessThread;
        
        #endregion

        #region Properties

        public string Name { get; private set; }

        /// <summary>
        /// Indicates that worker built cache and ready to accept client connections.
        /// </summary>
        public bool ReadyToAcceptClients { get; private set; }

        /// <summary>
        /// Indicates that worker is alive
        /// </summary>
        public bool IsAlive 
        {
            get { return _process != null; } 
        }

        #endregion

        #region Constructors

        public ChiefWorkerProcess(
            ILog log,
            ServerSettingsBase workerSettings)
        {
            _log = log;
            _settings = workerSettings;
            Name = _settings.SourceSettings.Name;

            _logReceiverPipe = new AnonymousPipeServerStream(PipeDirection.In, HandleInheritability.Inheritable);
            _logReceiverThread = new Thread(LogReceiverThreadJob)
                {
                    IsBackground = true
                };

            _process = new Process
                {
                    EnableRaisingEvents = true,
                    StartInfo =
                        {
                            FileName = Path.Combine(
                                Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),
                                "IpCamEmu Console.exe"),
                            UseShellExecute = false,
                            ErrorDialog = false,
                            CreateNoWindow = true
                        }
                };
            _process.Exited += delegate { _process = null; };

            _launchProcessThread = new Thread(LaunchWorkerThreadJob)
                {
                    IsBackground = true
                };
        }

        #endregion

        #region Public Methods

        public void LaunchAsync()
        {
            _launchProcessThread.Start();
            _logReceiverThread.Start();
        }

        #endregion

        #region Private Methods

        private void LaunchWorkerThreadJob()
        {
            ChiefWorkerSettingsHelper.SendSettings(
                settingsPipeHandle =>
                {
                    _process.StartInfo.Arguments = String.Format("\"-{0}={1}\"", CommandLineOptions.SettingName_WorkerSettingsPipeHandle, settingsPipeHandle);
                    _process.Start();
                },
                _logReceiverPipe,
                _settings,
                Process.GetCurrentProcess());
        }

        private void LogReceiverThreadJob()
        {
            using (var binaryReader = new BinaryReader(_logReceiverPipe))
            {
                while (true)
                {
                    var eventType = (LoggingEvent) binaryReader.ReadInt32();
                    var message = binaryReader.ReadString();

                    if (message == ChiefWorkerPredefinedMessages.WorkerReadyToAcceptClients)
                    {
                        ReadyToAcceptClients = true;
                    }
                    else
                    {
                        _log.Write(eventType, string.Format("{0}: {1}", Name, message));
                    }
                }
            }
        }

        #endregion

        public void Dispose()
        {
            try
            {
                if (_launchProcessThread != null)
                {
                    _launchProcessThread.Abort();
                    _launchProcessThread = null;
                }
            }
            catch
            {
            }

            try
            {
                if (_process != null)
                {
                    _process.Kill();
                }
            }
            catch
            {
            }

            try
            {
                if (_logReceiverThread != null)
                {
                    _logReceiverThread.Abort();
                    _logReceiverThread = null;
                }
            }
            catch
            {
            }

            try
            {
                if (_logReceiverPipe != null)
                {
                    _logReceiverPipe.DisposeLocalCopyOfClientHandle();
                    _logReceiverPipe.Dispose();
                    _logReceiverPipe = null;
                }
            }
            catch 
            {
            }
        }
    }
}