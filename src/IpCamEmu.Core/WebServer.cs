/*http://www.paraesthesia.com/archive/2008/07/16/simplest-embedded-web-server-ever-with-httplistener.aspx
 * Simplest Embedded Web Server Ever with HttpListener
 * Paraethesia
 */

using System;
using System.Diagnostics;
using System.Globalization;
using System.Net;
using System.Threading;
using HDE.Platform.Logging;
using ThreadState = System.Threading.ThreadState;

namespace HDE.IpCamEmu.Core
{
    class WebServer : IDisposable
    {
        public event EventHandler<HttpRequestEventArgs> IncomingRequest = null;

        public enum State
        {
            Stopped,
            Stopping,
            Starting,
            Started
        }

        private Thread _connectionManagerThread;
        private bool _disposed;
        private readonly HttpListener _listener;
        private long _runState = (long)State.Stopped;
        private readonly ILog _log;
        private readonly string _uri;
        private readonly IpCamEmuSingleInstance _singleInstance;

        public State RunState
        {
            get
            {
                return (State)Interlocked.Read(ref _runState);
            }
        }

        public virtual Guid UniqueId { get; private set; }

        public virtual Uri Url { get; private set; }

        public WebServer(ILog log, string uri)
        {
            _log = log;
            _uri = uri;
            if (!HttpListener.IsSupported)
            {
                throw new UserFriendlyException("The HttpListener class is not supported on this operating system.");
            }
            if (uri == null)
            {
                throw new ArgumentNullException("listenerPrefix");
            }
            UniqueId = Guid.NewGuid();
            _singleInstance = new IpCamEmuSingleInstance(uri);
            if (!_singleInstance.FirstInstance)
            {
                var errorMessage = string.Format("Cannot create HTTP listener on uri {0}, because other IpCamEmu instance on the same uri is running. Please launch Task Manager and kill it.", uri);
                log.Error(errorMessage);
                throw new UserFriendlyException(errorMessage);
            }
            _listener = new HttpListener();
            _listener.Prefixes.Add(uri);
        }

        ~WebServer()
        {
            Dispose(false);
        }

        [DebuggerStepThrough]
        private void ConnectionManagerThreadStart()
        {
            Interlocked.Exchange(ref this._runState, (long)State.Starting);
            try
            {
                if (!_listener.IsListening)
                {
                    _listener.AuthenticationSchemes = AuthenticationSchemes.Negotiate;//[SK.+]
                    _listener.Start();
                }
                if (_listener.IsListening)
                {
                    Interlocked.Exchange(ref _runState, (long)State.Started);
                }

                try
                {
                    while (RunState == State.Started)
                    {
                        HttpListenerContext context = _listener.GetContext();
                        RaiseIncomingRequest(context);
                    }
                }
                catch (HttpListenerException)
                {
                    // This will occur when the listener gets shut down.
                    // Just swallow it and move on.
                }
            }
            catch (HttpListenerException e)
            {
                if (e.ErrorCode == 5)
                {
                    _log.Error("Windows 7 registration is missing:\n1. Launch cmd as Administrator\n2. Paste in command line: netsh http add urlacl url={0} user={1}\\{2} listen=yes",
                        _uri, 
                        Environment.GetEnvironmentVariable("USERDOMAIN"), 
                        Environment.GetEnvironmentVariable("USERNAME"));
                }
                else if (e.ErrorCode == 183)
                {
                    _log.Error("Other application listens on {0}. Please install TCPView for Windows to find that application and disable it or change port in settings and reregister via Configurator.", _uri);
                }
                else
                {
                    _log.Error(e);
                }
                throw;
            }
            finally
            {
                Interlocked.Exchange(ref _runState, (long)State.Stopped);
            }
        }

        public virtual void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        private void Dispose(bool disposing)
        {
            if (this._disposed)
            {
                return;
            }
            if (disposing)
            {
                if (RunState != State.Stopped)
                {
                    Stop();
                }
                if (_connectionManagerThread != null)
                {
                    _connectionManagerThread.Abort();
                    _connectionManagerThread = null;
                }
            }
            _disposed = true;
        }

        private void RaiseIncomingRequest(HttpListenerContext context)
        {
            var e = new HttpRequestEventArgs(context);
            try
            {
                if (IncomingRequest != null)
                {
                    IncomingRequest.BeginInvoke(this, e, null, null);
                }
            }
            catch
            {
                // Swallow the exception and/or log it, but you probably don't want to exit
                // just because an incoming request handler failed.
            }
        }

        public virtual void Start()
        {
            if (_connectionManagerThread == null || this._connectionManagerThread.ThreadState == ThreadState.Stopped)
            {
                _connectionManagerThread = new Thread(new ThreadStart(this.ConnectionManagerThreadStart));
                _connectionManagerThread.Name = String.Format(CultureInfo.InvariantCulture, "ConnectionManager_{0}", this.UniqueId);
            }
            else if (_connectionManagerThread.ThreadState == ThreadState.Running)
            {
                throw new ThreadStateException("The request handling process is already running.");
            }

            if (this._connectionManagerThread.ThreadState != ThreadState.Unstarted)
            {
                throw new ThreadStateException("The request handling process was not properly initialized so it could not be started.");
            }
            this._connectionManagerThread.Start();

            long waitTime = DateTime.Now.Ticks + TimeSpan.TicksPerSecond * 10;
            while (this.RunState != State.Started)
            {
                Thread.Sleep(100);
                if (DateTime.Now.Ticks > waitTime)
                {
                    throw new TimeoutException("Unable to start the request handling process.");
                }
            }
        }

        public virtual void Stop()
        {
            // Setting the runstate to something other than "started" and
            // stopping the listener should abort the AddIncomingRequestToQueue
            // method and allow the ConnectionManagerThreadStart sequence to
            // end, which sets the RunState to Stopped.
            Interlocked.Exchange(ref this._runState, (long)State.Stopping);
            if (this._listener.IsListening)
            {
                this._listener.Stop();
            }
            long waitTime = DateTime.Now.Ticks + TimeSpan.TicksPerSecond * 10;
            while (this.RunState != State.Stopped)
            {
                Thread.Sleep(100);
                if (DateTime.Now.Ticks > waitTime)
                {
                    throw new TimeoutException("Unable to stop the web server process.");
                }
            }

            this._connectionManagerThread = null;
        }
    }

    public class HttpRequestEventArgs : EventArgs
    {
        public HttpListenerContext RequestContext { get; private set; }

        public HttpRequestEventArgs(HttpListenerContext requestContext)
        {
            RequestContext = requestContext;
        }
    }
}
