using System;
using System.Diagnostics;
using System.IO;
using System.IO.Pipes;
using System.Runtime.Serialization.Formatters.Binary;
using System.Threading;
using HDE.IpCamEmu.Core.Log;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    /// <summary>
    /// Provides inter-process communication for settings 
    /// transferring from chief to workers 
    /// </summary>
    public static class ChiefWorkerSettingsHelper
    {
        /// <summary>
        /// Sends settings from chief to worker process via anonymous control pipe.
        /// </summary>
        /// <param name="afterSettingsPipeCreated">Invoked with settings pipe handler, so the child worker process can be launched there with with handler as command line argument.</param>
        /// <param name="chiefLogReceiverPipe">Log receiver pipe settings to transfer.</param>
        /// <param name="workerSettings">Worker settings to transfer.</param>
        /// <param name="chiefProcess">Chief process.</param>
        /// <remarks>
        /// Method has 10 seconds timeout for worker process to connect to pipe and read settings.
        /// That is used to avoid blocking with controlPipe.WaitForPipeDrain() in case client failed to read settings or disconnected in the middle of sending message.
        /// </remarks>
        internal static void SendSettings(
            Action<string> afterSettingsPipeCreated,

            AnonymousPipeServerStream chiefLogReceiverPipe,
            ServerSettingsBase workerSettings,
            Process chiefProcess)
        {
            using (var chiefSettingsPipe = new AnonymousPipeServerStream(PipeDirection.Out, HandleInheritability.Inheritable))
            {
                afterSettingsPipeCreated(chiefSettingsPipe.GetClientHandleAsString());
                
                var binaryWriter = new BinaryWriter(chiefSettingsPipe);
                binaryWriter.Write(chiefLogReceiverPipe.GetClientHandleAsString());
                binaryWriter.Write((Int32)chiefProcess.Id);

                new BinaryFormatter()
                    .Serialize(chiefSettingsPipe, workerSettings);

                Thread.Sleep(10000);
                chiefSettingsPipe.DisposeLocalCopyOfClientHandle();
                binaryWriter.Dispose(); // because it disposes underlying stream.
            }
        }

        /// <summary>
        /// Reading by worker settings Chief passed.
        /// </summary>
        /// <param name="workerSettingsPipeHandle">Settings pipe handler.</param>
        /// <param name="workerLogPipe">Log redirector setting.</param>
        /// <param name="workerSettings">Worker settings.</param>
        /// <param name="chiefProcess">Chief process.</param>
        public static void ReadSettings(
            string workerSettingsPipeHandle,
            
            out ILog workerLogPipe,
            out ServerSettingsBase workerSettings,
            out Process chiefProcess)
        {
            using (var workerControlPipe = new AnonymousPipeClientStream(PipeDirection.In, workerSettingsPipeHandle))
            {
                var binaryReader = new BinaryReader(workerControlPipe);
                workerLogPipe = new AnonymousPipeClientStreamLog(binaryReader.ReadString());
                chiefProcess = Process.GetProcessById(binaryReader.ReadInt32());
                workerLogPipe.Open();

                workerSettings = (ServerSettingsBase)new BinaryFormatter().Deserialize(workerControlPipe);
                binaryReader.Dispose(); // because it closes underlying stream.
            }
        }
    }
}