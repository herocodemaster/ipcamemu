using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.IO.Pipes;
using System.Linq;
using System.Reflection;
using System.Threading;
using HDE.IpCamEmu.Core;
using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu
{
    class Program
    {
        static int Main(string[] args)
        {
            var options = CommandLineOptions.ParseCommandLineArguments(args);

            return options.WorkerPipeControl == null ?
                LaunchChief(options):
                LaunchWorker(options);
        }

        private static int LaunchWorker(CommandLineOptions options)
        {
            ILog log;
            ServerSettingsBase settings;

            // Initializing.
            ChiefWorkerSettingsHelper.ReadSettings(
                options.WorkerPipeControl,

                out log,
                out settings);

            try
            {
                IDisposable server = null;
                try
                {
                    server = WebServerFactory.CreateServer(log, settings);
                    log.Debug(ChiefWorkerPredefinedMessages.WorkerReady);
                    Console.ReadLine();
                }
                finally
                {
                    if (server != null)
                    {
                        server.Dispose();
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

        private class ChiefWorkerProcess : IDisposable
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
                                _workerProcess.StartInfo.Arguments = string.Format("\"-WorkerPipeControl={0}\"", controlPipeHandle);
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

        static int LaunchChief(CommandLineOptions options)
        {
            var log = new QueueLog(
                new ConsoleLog(),
                new SimpleFileLog(Path.Combine(Path.GetTempPath(), @"HDE\IpCamEmu")));
            log.Open();

            try
            {
                log.Debug("Loading settings...");
                var settings = ConfigurationHelper.Load(options.Configuration);
                log.Debug("Starting machinery...");
                List<ChiefWorkerProcess> workers = new List<ChiefWorkerProcess>();
                try
                {
                    foreach (var setting in settings)
                    {
                        workers.Add(new ChiefWorkerProcess(log, setting));
                    }

                    while (workers.All(worker => worker.IsAlive && worker.IsStartingMachinery))
                    {
                        Thread.Sleep(1000);
                    }

                    if (workers.All(worker => worker.IsAlive))
                    {
                        log.Debug("Server(s) started...\n\nPress <Enter> to exit.");
                        Console.ReadLine();
                    }
                    else
                    {
                        log.Error("Some workers are not alive!");
                    }
                }
                finally
                {
                    if (workers != null)
                    {
                        workers.ForEach(item => item.Dispose());
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
