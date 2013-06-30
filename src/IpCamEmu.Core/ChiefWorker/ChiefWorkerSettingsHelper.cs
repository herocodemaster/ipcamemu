using System;
using System.IO;
using System.IO.Pipes;
using System.Runtime.Serialization.Formatters.Binary;
using System.Threading;
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
        /// <param name="afterControlPipeCreated">Invoked with control pipe handler, so the child worker process can be launched there with with handler as command line argument.</param>
        /// <param name="chiefLogReceiverPipe">Log receiver pipe settings to transfer.</param>
        /// <param name="workerSettings">Worker settings to transfer.</param>
        /// <remarks>
        /// Method has 10 seconds timeout for worker process to connect to pipe and read settings.
        /// That is used to avoid blocking with controlPipe.WaitForPipeDrain() in case client failed to read settings or disconnected in the middle of sending message.
        /// </remarks>
        public static void SendSettings(
            Action<string> afterControlPipeCreated,

            AnonymousPipeServerStream chiefLogReceiverPipe,
            ServerSettingsBase workerSettings)
        {
            using (var chiefControlPipe = new AnonymousPipeServerStream(PipeDirection.Out, HandleInheritability.Inheritable))
            {
                afterControlPipeCreated(chiefControlPipe.GetClientHandleAsString());
                
                var binaryWriter = new BinaryWriter(chiefControlPipe);
                binaryWriter.Write(chiefLogReceiverPipe.GetClientHandleAsString());

                new BinaryFormatter()
                    .Serialize(chiefControlPipe, workerSettings);

                Thread.Sleep(10000);
                chiefControlPipe.DisposeLocalCopyOfClientHandle();
                binaryWriter.Dispose(); // because it disposes underlying stream.
            }
        }

        /// <summary>
        /// Reading by worker settings Chief passed.
        /// </summary>
        /// <param name="workerControlPipeHandle">Control pipe handler.</param>
        /// <param name="workerLogPipe">Log redirector setting.</param>
        /// <param name="workerSettings">Worker settings.</param>
        public static void ReadSettings(
            string workerControlPipeHandle,
            
            out ILog workerLogPipe,
            out ServerSettingsBase workerSettings)
        {
            using (var workerControlPipe = new AnonymousPipeClientStream(PipeDirection.In, workerControlPipeHandle))
            {
                var binaryReader = new BinaryReader(workerControlPipe);
                workerLogPipe = new AnonymousPipeClientStreamLog(binaryReader.ReadString());
                workerLogPipe.Open();

                workerSettings = (ServerSettingsBase)new BinaryFormatter().Deserialize(workerControlPipe);
                binaryReader.Dispose(); // because it closes underlying stream.
            }
        }
    }
}