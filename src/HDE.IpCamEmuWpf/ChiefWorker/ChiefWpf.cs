using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmuWpf.ChiefWorker
{
    sealed class ChiefWpf : Chief
    {
        #region Fields

        public volatile bool _requestClose;

        #endregion

        #region Constructors

        public ChiefWpf(ILog log, CommandLineOptions options) : base(log, options)
        {
        }

        #endregion

        #region Protected Methods

        protected override string GetExitOnDemandMessage()
        {
            return "Close application to exit.";
        }

        protected override bool IsExitOnDemand()
        {
            return _requestClose;
        }

        #endregion

        #region Public Methods

        public void RequestToClose()
        {
            _requestClose = true;
        }

        public override void Dispose()
        {
        }

        #endregion
    }
}
