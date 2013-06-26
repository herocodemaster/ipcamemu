using System;
using System.Diagnostics;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using System.Threading;
using HDE.IpCamEmu.Core.ServerSourceInstance;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.MJpeg
{
    class MJpegServer : IDisposable
    {
        #region Fields

        private readonly MJpegServerSettings _settings;
        private WebServer _server;
        private IServerSourceInstance _serverSource;
        private ISourceServerCache _cache;
        private readonly ILog _log;

        #endregion

        #region Constructors

        public MJpegServer(ILog log, MJpegServerSettings settings)
        {
            _log = log;
            _settings = settings;
            if (settings.SourceSettings.Format != ImageFormat.Jpeg)
            {
                throw new InvalidDataException("Expected input image format is jpeg!");
            }
            _serverSource = ServerSourceFactory.Create(_log, settings.SourceSettings);
            
            var sourcei = _serverSource.GetSource();
            try
            {
                _cache = sourcei.PrepareSourceServerCache();
                _serverSource.SetCache(_cache);
            }
            finally
            {
                _serverSource.DisposeClient(sourcei);
            }

            _server = new WebServer(log, _settings.Uri);
            _server.IncomingRequest += HandleRequest;
            _server.Start();
        }

        #endregion

        #region IDisposable Implementation

        void IDisposable.Dispose()
        {
            if (_server != null)
            {
                ((IDisposable)_server).Dispose();
                _server = null;
            }
            if (_serverSource != null)
            {
                _serverSource.DisposeServer();
                _serverSource = null;
            }
            if (_cache != null)
            {
                _cache.Dispose();
                _cache = null;
            }
        }

        #endregion

        const string boundaryName = "myBoundary";
        const string contentType = "multipart/x-mixed-replace; boundary=--" + boundaryName;

        private void DumpConnectedInfo(string requestId, HttpRequestEventArgs e)
        {
            _log.Debug("{0} Connected", requestId);
            
            var user = e.RequestContext.User;
            if (user != null)
            {
                _log.Debug("{0} identity info: Name = {1}, Is Authenticated = {2}, Authentication Type = {3}", 
                    requestId,
                    e.RequestContext.User.Identity.Name, 
                    e.RequestContext.User.Identity.IsAuthenticated, 
                    e.RequestContext.User.Identity.AuthenticationType);
            }

            _log.Debug("{0} request info: Agent = {1}, Host Address = {2}, Host Name = {3}", 
                requestId,
                e.RequestContext.Request.UserAgent,
                e.RequestContext.Request.UserHostAddress,
                e.RequestContext.Request.UserHostName);
        }

        private readonly object _syncObj = new object();
        private int _counter;
        private string GetConnectedId()
        {
            lock (_syncObj)
            {
                _counter++;
                return string.Format("[{0}]", _counter);
            }
        }

        [DebuggerStepThrough]
        private void HandleRequest(object sender, HttpRequestEventArgs e)
        {
            var requestId = GetConnectedId();
            DumpConnectedInfo(requestId, e);

            e.RequestContext.Response.StatusCode = 200;
            e.RequestContext.Response.ContentType = contentType;

            var sourcei = _serverSource.GetSource();
            try
            {
                while (_serverSource.Reset(sourcei))
                {
                    while (!_serverSource.IsSourceEnded(sourcei))
                    {
                        var frame = _serverSource.GetNextFrame(sourcei, _settings.FrameDelay);
                        if (frame != null)
                        {
                            WriteFrame(e.RequestContext.Response.OutputStream, frame);
                            e.RequestContext.Response.OutputStream.Flush();
                        }
                    }
                }
                e.RequestContext.Response.OutputStream.Close();
            }
            finally
            {
                _serverSource.DisposeClient(sourcei);
                _log.Debug("{0} Disconnected", requestId);
            }
        }

        private static byte[] CreateFooter()
        {
            return ASCIIEncoding.ASCII.GetBytes("\r\n");
        }

        private static byte[] CreateHeader(int length)
        {
            string header =
                "--" + boundaryName + "\r\n" +
                "Content-Type:image/jpeg\r\n" +
                "Content-Length:" + length + "\r\n" +
                "\r\n"; // there are always 2 new line character before the actual data

            // using ascii encoder is fine since there is no international character used in this string.
            return ASCIIEncoding.ASCII.GetBytes(header);
        }

        [DebuggerStepThrough]
        private static void WriteFrame(Stream st, byte[] imageData)
        {
            // prepare header
            byte[] header = CreateHeader(imageData.Length);
            // prepare footer
            byte[] footer = CreateFooter();

            // Start writing data
            st.Write(header, 0, header.Length);
            st.Write(imageData, 0, imageData.Length);
            st.Write(footer, 0, footer.Length);
        }
    }
}
