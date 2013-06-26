
using System.Timers;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ServerSourceInstance
{
    class PerServerServerSourceInstantiate : BaseServerSourceInstance
    {
        private ISource _serverSource;

        public PerServerServerSourceInstantiate(ILog log, SourceSettings settings) : base(log, settings)
        {
            cachedImage_ = new byte[]{};
        }

        public override void DisposeServer()
        {
            if (_serverSource != null)
            {
                _serverSource.Dispose();
                _serverSource = null;
            }
        }

        public override void DisposeClient(ISource source)
        {
            ;
        }

        public override ISource GetSource()
        {
            if (_serverSource == null)
            {
                _serverSource = _settings.Create(_log);
            }
            // because first instance is cached
            _serverSource.SetSourceServerCache(_serverCache);
            return _serverSource;
        }

        public override bool IsSourceEnded(ISource source)
        {
            lock (source)
            {
                return source.IsSourceEnded;
            }
        }

        public override bool Reset(ISource source)
        {
            lock (source)
            {
                return source.Reset();
            }
        }

        private readonly object _syncObj = new object();
        private Timer timer_;
        public override byte[] GetNextFrame(ISource source, uint timeoutMsec)
        {
            lock(_syncObj)
            {
                if (timer_ == null)
                {
                    timer_ = new Timer(timeoutMsec);
                    timer_.Elapsed += OnTimerTick;
                    cachedImage_ = source.GetNextFrame();
                    timer_.Enabled = true;
                }
                if (source.IsSourceEnded)
                {
                    source.Reset();
                }
            }
            return cachedImage_;
        }

        private byte[] cachedImage_;
        private void OnTimerTick(object sender, ElapsedEventArgs e)
        {
            if (!GetSource().IsSourceEnded)
            {
                cachedImage_ = GetSource().GetNextFrame();
            }
        }
    }
}