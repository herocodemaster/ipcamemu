using System;
using System.Diagnostics;
using System.IO;
using System.IO.Pipes;
using System.Reflection;
using System.Threading;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    public class ChiefWorkerProcess : IDisposable
    {
        #region Fields

        private Process _workerProcess;

        private ILog _log;
        private Thread _logReceiverThread;
        private AnonymousPipeServerStream _logReceiverPipe;

        #endregion

        #region Properties

        /// <summary>
        /// Indicates that worker is under initialization
        /// </summary>
        public bool IsStartingMachinery { get; private set; }

        /// <summary>
        /// Indicates that worker is under initialization
        /// </summary>
        public bool IsAlive 
        {
            get { return _workerProcess != null; } 
        }

        #endregion

        #region Constructors

        public ChiefWorkerProcess(
            ILog log,
            ServerSettingsBase serverSettings)
        {
            IsStartingMachinery = true;
            _log = log;
            _logReceiverPipe = new AnonymousPipeServerStream(PipeDirection.In, HandleInheritability.Inheritable);
            _logReceiverThread = new Thread(LogReceiverThreadJob)
                                     {
                                         IsBackground = true,
                                     };
            _logReceiverThread.Start();

            _workerProcess = new Process
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

            _workerProcess.Exited += delegate 
                                         { 
                                             _workerProcess = null;
                                         };

            ChiefWorkerSettingsHelper.SendSettings(
                controlPipeHandle =>
                    {
                        _workerProcess.StartInfo.Arguments = String.Format("\"-WorkerPipeControl={0}\"", controlPipeHandle);
                        _workerProcess.Start();
                    },
                _logReceiverPipe,
                serverSettings);
        }

        #endregion

        #region Private Methods

        private void LogReceiverThreadJob()
        {
            using (var binaryReader = new BinaryReader(_logReceiverPipe))
            {
                while (true)
                {
                    var eventType = (LoggingEvent) binaryReader.ReadInt32();
                    var message = binaryReader.ReadString();

                    if (message == ChiefWorkerPredefinedMessages.WorkerReady)
                    {
                        IsStartingMachinery = false;
                    }
                    else
                    {
                        _log.Write(eventType, message);
                    }
                }
            }
        }

        #endregion

        public void Dispose()
        {
            try
            {
                if (_workerProcess != null)
                {
                    _workerProcess.Kill();
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