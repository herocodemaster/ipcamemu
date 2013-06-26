namespace HDE.IpCamEmuWpf.Commands
{
    class TearDownCmd
    {
        public void TearDown(Controller controller)
        {
            if (controller.Model.Servers != null)
            {
                controller.Model.Servers.ForEach(item => item.Dispose());
            }
        }
    }
}
