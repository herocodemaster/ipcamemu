using System.Threading;

namespace HDE.IpCamEmuWpf.Commands
{
    class TearDownCmd
    {
        public void TearDown(Controller controller)
        {
            if (controller.Model.Chief != null)
            {
                controller.Model.Chief.RequestToClose();
                Thread.Sleep(5000);
                controller.Model.Chief.Dispose();
                controller.Model.Chief = null;
            }
        }
    }
}
