namespace HDE.IpCamEmu.Core.Source
{
    public sealed class Region
    {
        #region Properties

        public bool Everything { get; private set; }

        public uint FromLine { get; private set; }
        public uint FromColumn { get; private set; }
        public uint Width { get; private set; }
        public uint Height { get; private set; }

        #endregion

        #region Constructors

        public Region()
        {
            Everything = true;
        }

        public Region(
            uint fromLine,
            uint fromColumn,
            uint width,
            uint height)
        {
            Everything = false;

            FromLine = fromLine;
            FromColumn = fromColumn;
            Width = width;
            Height = height;
        }

        #endregion
    }
}