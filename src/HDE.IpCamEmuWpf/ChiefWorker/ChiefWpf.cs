using System;
using System.Windows.Threading;
using HDE.IpCamEmu.Core.ChiefWorker;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.Platform.Logging;

namespace HDE.IpCamEmuWpf.ChiefWorker
{
    sealed class ChiefWpf : Chief
    {
        #region Fields

        private volatile bool _requestClose;
        private readonly Dispatcher _dispatcher;
        private readonly Action _onInitializeCompleted;
        private readonly Action<string> _onError;

        #endregion

        #region Constructors

        public ChiefWpf(ILog log, 
            CommandLineOptions options,
            Dispatcher dispatcher,
            Action onInitializeCompleted,
            Action<string> onError
            ) : base(log, options)
        {
            _dispatcher = dispatcher;
            _onInitializeCompleted = onInitializeCompleted;
            _onError = onError;
        }

        #endregion

        #region Protected Methods

        protected override bool IsExitOnDemand()
        {
            return _requestClose;
        }

        protected override void ReadyToAcceptClients()
        {
            if (_dispatcher.CheckAccess())
            {
                _onInitializeCompleted();
            }
            else
            {
                _dispatcher.BeginInvoke(DispatcherPriority.Send, _onInitializeCompleted);
            }
        }

        protected override void ErrorOccured(string error)
        {
            if (_dispatcher.CheckAccess())
            {
                _onError(error);
            }
            else
            {
                _dispatcher.BeginInvoke(DispatcherPriority.Send, _onError, error);
            }
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
