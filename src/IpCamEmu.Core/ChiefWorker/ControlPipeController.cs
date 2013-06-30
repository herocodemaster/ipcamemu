using System.IO;
using System.IO.Pipes;
using System.Runtime.Serialization.Formatters.Binary;
using System.Threading;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ChiefWorker
{
    public static class ControlPipeController
    {
        public static void SendSettings(
            AnonymousPipeServerStream chiefControlPipe,

            AnonymousPipeServerStream chiefLogReceiverPipe,
            ServerSettingsBase serverSettings)
        {
            // transfer settings
            var binaryWriter = new BinaryWriter(chiefControlPipe);
            binaryWriter.Write(chiefLogReceiverPipe.GetClientHandleAsString());

            new BinaryFormatter()
                .Serialize(chiefControlPipe, serverSettings);

            Thread.Sleep(10000); // 10 seconds for child process to connect to pipe and read settings
            //controlPipe.WaitForPipeDrain(); -- this is blocking when client failed to read or start or disconnected, so we just waiting
            chiefControlPipe.DisposeLocalCopyOfClientHandle();
            binaryWriter.Dispose();
        }

        public static void ReadSettings(
            string workerControlPipeHandle,
            
            out ILog workerLogPipe,
            out ServerSettingsBase serverSettings)
        {
            using (var workerControlPipe = new AnonymousPipeClientStream(PipeDirection.In, workerControlPipeHandle))
            {
                var binaryReader = new BinaryReader(workerControlPipe);
                workerLogPipe = new AnonymousPipeClientStreamLog(binaryReader.ReadString());
                workerLogPipe.Open();

                serverSettings = (ServerSettingsBase)new BinaryFormatter().Deserialize(workerControlPipe);
                binaryReader.Dispose();
            }
        }
    }
}