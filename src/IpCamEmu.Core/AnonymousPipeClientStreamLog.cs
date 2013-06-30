using System;
using System.IO;
using System.IO.Pipes;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core
{
    public class AnonymousPipeClientStreamLog: LogBase
    {
        #region Fields

        private readonly string _pipeHandle;
        private PipeStream _pipeClient;
        private BinaryWriter _binaryWriter;

        #endregion

        #region Constructors

        public AnonymousPipeClientStreamLog(string anonymousPileClientStreamLogHandle)
        {
            _pipeHandle = anonymousPileClientStreamLogHandle;
        }

        #endregion

        #region Log Implementation

        protected override void OpenInternal()
        {
            _pipeClient = new AnonymousPipeClientStream(PipeDirection.Out, _pipeHandle);
            _binaryWriter = new BinaryWriter(_pipeClient);
        }

        protected override void CloseInternal()
        {
            _binaryWriter.Dispose();
            _pipeClient.Dispose();
        }

        protected override void WriteInternal(LoggingEvent loggingEvent, string message)
        {
            _binaryWriter.Write((Int32)loggingEvent);
            _binaryWriter.Write(message);
        }

        #endregion
    }
}
