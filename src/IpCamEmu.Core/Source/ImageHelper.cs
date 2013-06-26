using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

namespace HDE.IpCamEmu.Core.Source
{
    static class ImageHelper
    {
        /// <summary>
        /// Converts to bytes required part of image in specified image format.
        /// </summary>
        public static byte[] ConvertToBytes(Image image, ImageFormat format, Region regionOfInterest)
        {
            using (var ms = new MemoryStream())
            {
                if (regionOfInterest.Everything)
                {
                    image.Save(ms, format);
                }
                else
                {
                    using (var regionOfInterestImage = ExtractRegionOfInterest(
                        image,
                        (int)regionOfInterest.FromLine,
                        (int)regionOfInterest.FromColumn,
                        (int)regionOfInterest.Width,
                        (int)regionOfInterest.Height))
                    {
                        regionOfInterestImage.Save(ms, format);
                    }
                }
                return ms.ToArray();
            }
        }

        #region Private Methods

        /// <summary>
        /// Does not support indexed images yet.
        /// </summary>
        private static Bitmap ExtractRegionOfInterest(Image image, 
            int fromLine,
            int fromColumn,
            int width,
            int height)
        {
            var result = new Bitmap(width, height, image.PixelFormat);
            result.SetResolution(image.HorizontalResolution, image.VerticalResolution);
            using (var graphics = Graphics.FromImage(result))
            {
                graphics.DrawImage(image, 0,0,new Rectangle(fromColumn, fromLine, width, height), GraphicsUnit.Pixel);
            }

            return result;
        }

        #endregion
    }
}
