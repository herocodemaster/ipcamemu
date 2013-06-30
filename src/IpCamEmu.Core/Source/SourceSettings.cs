using System;
using System.Drawing.Imaging;
using HDE.Platform.Logging;

namespace HDE.IpCamEmu.Core.Source
{
    [Serializable]
    public abstract class SourceSettings
    {
        /// <summary>
        /// How instance must be instanciated.
        /// </summary>
        public InstanciateMode InstanciateMode { get; set; }

        public IpCamEmuImageFormat ImageFormat { get; set; }

        public string Name { get; set; }
        public Region RegionOfInterest { get; set; }

        public ImageFormat GetFormat()
        {
            switch (ImageFormat)
            {
                case IpCamEmuImageFormat.Jpeg:
                    return System.Drawing.Imaging.ImageFormat.Jpeg;
                default:
                    throw new ArgumentOutOfRangeException("ImageFormat", ImageFormat, "Such format is not supported.");
            }
        }

        internal abstract ISource Create(ILog log);
    }
}