namespace HDE.IpCamEmuWpf.Commands
{
    class TearDownCmd
    {
        public void TearDown(Controller controller)
        {
            if (controller.Model.Chief != null)
            {
                controller.Model.Chief.RequestToClose();
            }
        }
    }
}
