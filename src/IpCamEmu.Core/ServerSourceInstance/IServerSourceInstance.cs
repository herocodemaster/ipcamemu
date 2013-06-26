using HDE.IpCamEmu.Core.Source;

namespace HDE.IpCamEmu.Core.ServerSourceInstance
{
    interface IServerSourceInstance
    {
        void DisposeServer();
        void DisposeClient (ISource source);

        ISource GetSource();

        bool IsSourceEnded (ISource source);
        bool Reset(ISource source);
        byte[] GetNextFrame(ISource source, uint timeoutMsec);
        void SetCache(ISourceServerCache cache);
    }
}