using System.Drawing.Imaging;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    public abstract class SourceSettings
    {
        /// <summary>
        /// How instance must be instanciated.
        /// </summary>
        public InstanciateMode InstanciateMode { get; set; }
        public ImageFormat Format { get; set; }
        public string Name { get; set; }
        public Region RegionOfInterest { get; set; }

        internal abstract ISource Create(ILog log);
    }
}