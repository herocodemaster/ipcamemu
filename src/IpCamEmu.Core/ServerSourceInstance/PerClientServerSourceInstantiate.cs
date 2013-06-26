using System.Threading;
using HDE.IpCamEmu.Core.Source;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.ServerSourceInstance
{
    class PerClientServerSourceInstantiate : BaseServerSourceInstance
    {
        public PerClientServerSourceInstantiate(ILog log, SourceSettings settings) : base(log, settings)
        {
        }

        public override void DisposeServer()
        {
            ;
        }

        public override void DisposeClient(ISource source)
        {
            source.Dispose();
        }

        public override ISource GetSource()
        {
            var result = _settings.Create(_log);
            result.SetSourceServerCache(_serverCache);
            return result;
        }

        public override bool IsSourceEnded(ISource source)
        {
            return source.IsSourceEnded;
        }

        public override bool Reset(ISource source)
        {
            return source.Reset();
        }

        public override byte[] GetNextFrame(ISource source, uint timeoutMsec)
        {
            if (timeoutMsec > 0)
            {
                Thread.Sleep((int)timeoutMsec);
            }
            return source.GetNextFrame();
        }
    }
}