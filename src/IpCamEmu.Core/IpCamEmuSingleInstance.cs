namespace HDE.IpCamEmu.Core
{
    class IpCamEmuSingleInstance : SingleInstance
    {
        public IpCamEmuSingleInstance(string uri) : base(string.Format("IpCamEmu: {0}", uri))
        {
        }
    }
}