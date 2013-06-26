using System.Threading;

namespace HDE.IpCamEmu.Core
{
    /// <summary>
    /// Enables single instance functional in scheduler for each user
    /// </summary>
    class SingleInstance
    {
        #region Internal Fields

        readonly Mutex _mutex;

        #endregion

        #region Constructors

        public SingleInstance(string name)
        {
            try
            {
                _mutex = Mutex.OpenExisting(name);
            }
            catch (WaitHandleCannotBeOpenedException)
            {
                FirstInstance = true;
            }

            if (_mutex == null)
            {
                _mutex = new Mutex(false, name);
            }
        }

        #endregion

        #region Public Properties

        public bool FirstInstance { get; private set; }

        #endregion
    }
}
