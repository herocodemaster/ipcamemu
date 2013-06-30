using HDE.IpCamEmu.Core.Log;
using HDE.IpCamEmuWpf.Commands;
using HDE.IpCamEmuWpf.Model;
using HDE.Platform.Logging;

namespace HDE.IpCamEmuWpf
{
    class Controller
    {
        #region Properties

        public ILog Log {get; private set; }

        public WpfModel Model { get; private set; }
        
        #endregion

        #region Constructors

        public Controller()
        {
            Model = new WpfModel();
            Log = new IpCamEmuFileLog();
            Log.Open();
        }

        #endregion

        #region Commands

        public bool Start()
        {
            return new StartServesrCmd().StartServers(this);
        }

        public void TearDown()
        {
            new TearDownCmd().TearDown(this);
            Log.Close();
        }

        #endregion
    }
}