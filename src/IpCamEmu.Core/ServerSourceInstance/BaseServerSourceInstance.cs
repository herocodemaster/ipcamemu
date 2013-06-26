using System;
using System.Drawing;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ServerSourceInstance
{
    abstract class BaseServerSourceInstance: IServerSourceInstance
    {
        protected readonly SourceSettings _settings;
        protected readonly ILog _log;
        protected ISourceServerCache _serverCache;

        protected BaseServerSourceInstance(ILog log, SourceSettings settings)
        {
            _log = log;
            _settings = settings;
        }

        public abstract void DisposeServer();
        public abstract void DisposeClient(ISource source);
        public abstract ISource GetSource();
        public abstract bool IsSourceEnded(ISource source);
        public abstract bool Reset(ISource source);
        public abstract byte[] GetNextFrame(ISource source, uint timeoutMsec);
        public void SetCache(ISourceServerCache cache)
        {
            _serverCache = cache;
        }
    }
}