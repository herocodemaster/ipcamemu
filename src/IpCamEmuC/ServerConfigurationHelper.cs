using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Xml;
using HDE.IpCamEmu.Core;
using HDE.IpCamEmu.Core.MJpeg;
using HDE.IpCamEmu.Core.Source;

namespace HDE.IpCamEmu
{
    static class ServerConfigurationHelper
    {
        public static ServerSettingsBase[] Load()
        {
            var result = new List<ServerSettingsBase>();

            var document = new XmlDocument();
            document.Load("Configuration.xml");

            var servers = document.SelectNodes("//Configuration/Servers/Server");
            foreach (XmlNode serverConfig in servers)
            {
                var configType = serverConfig.Attributes["Type"].Value.ToLowerInvariant();
                switch (configType)
                {
                    case "mjpeg":
                        result.Add(CreateMjpegConfig(serverConfig));
                        break;
                    default:
                        throw new ArgumentOutOfRangeException(configType);
                }
            }
            return result.ToArray();
        }

        private static ServerSettingsBase CreateMjpegConfig(XmlNode document)
        {
            return new MJpegServerSettings(
                document.SelectSingleNode("Uri").InnerText,
                uint.Parse(document.SelectSingleNode("FrameDelay").InnerText),
                CreateSource(document.SelectSingleNode("Source"))
                );
        }

        private static SourceSettings CreateSource(XmlNode document)
        {
            var sourceType = document.SelectSingleNode("@Type").InnerText;
            SourceSettings result;
            switch (sourceType.ToLowerInvariant())
            {
                case "videofile":
                    result = CreateVideoFileSettings(document);
                    break;
                case "folder":
                    result = CreateFolderSettings(document);
                    break;
                case "webcam":
                    result = CreateWebCamSettings(document);
                    break;
                default: 
                    throw new ArgumentOutOfRangeException(sourceType);
            }
            result.Format = ParseImageFormat(document.SelectSingleNode("Format").InnerText);
            result.Name = document.SelectSingleNode("@Name").InnerText;

            return result;
        }

        private static SourceSettings CreateWebCamSettings(XmlNode document)
        {
            return new WebCamSettings
                       {
                           InstanciateMode = InstanciateMode.InstancePerServer, //!
                           RotateY = bool.Parse(document.SelectSingleNode("RotateY").InnerText),

                           InputVideoDeviceId = int.Parse(document.SelectSingleNode("InputVideoDeviceId").InnerText),
                           Height = uint.Parse(document.SelectSingleNode("CameraRealHeight").InnerText),
                           Width = uint.Parse(document.SelectSingleNode("CameraRealWidth").InnerText),
                           ReadSpeed = uint.Parse(document.SelectSingleNode("ReadSpeed").InnerText),
                           RegionOfInterest = ParseRegionOfInterest(document),
                       };
        }

        private static SourceSettings CreateFolderSettings(XmlNode document)
        {
            return new FolderSettings()
                       {
                           InstanciateMode = ParseInstanciateMode(document.SelectSingleNode("InstanciateMode").InnerText),
                           BufferFrames = uint.Parse(document.SelectSingleNode("BufferFrames").InnerText),
                           Folder = new DirectoryInfo(document.SelectSingleNode("Folder").InnerText).FullName,
                           RegionOfInterest = ParseRegionOfInterest(document),
                       };
        }

        private static TimeSpan ParseTimeSpan(string text)
        {
            return TimeSpan.ParseExact(text, "G", CultureInfo.InvariantCulture);
        }

        private static SourceSettings CreateVideoFileSettings(XmlNode document)
        {
            return new VideoFileSettings
            {
                InstanciateMode = ParseInstanciateMode(document.SelectSingleNode("InstanciateMode").InnerText),
                RotateY = bool.Parse(document.SelectSingleNode("RotateY").InnerText),

                File = new FileInfo(document.SelectSingleNode("File").InnerText).FullName,
                BufferFrames = uint.Parse(document.SelectSingleNode("BufferFrames").InnerText),
                TimeStart = ParseTimeSpan(document.SelectSingleNode("TimeStart").InnerText),
                TimeEnd = ParseTimeSpan(document.SelectSingleNode("TimeEnd").InnerText),
                TimeStep = ParseTimeSpan(document.SelectSingleNode("TimeStep").InnerText),

                RegionOfInterest = ParseRegionOfInterest(document)
            };
        }

        private static InstanciateMode ParseInstanciateMode(string value)
        {
            if (string.Compare(value, InstanciateMode.InstancePerClient.ToString(), StringComparison.OrdinalIgnoreCase) == 0)
            {
                return InstanciateMode.InstancePerClient;
            }

            if (string.Compare(value, InstanciateMode.InstancePerServer.ToString(), StringComparison.OrdinalIgnoreCase) == 0)
            {
                return InstanciateMode.InstancePerServer;
            }

            throw new ArgumentOutOfRangeException(value);
        }

        private static Region ParseRegionOfInterest(XmlNode document)
        {
            var regionOfInterestNode = document.SelectSingleNode("RegionOfInterest");
            if (regionOfInterestNode == null)
            {
                return new Region();
            }
            return new Region(
                uint.Parse(regionOfInterestNode.Attributes["FromLine"].Value),
                uint.Parse(regionOfInterestNode.Attributes["FromColumn"].Value),
                uint.Parse(regionOfInterestNode.Attributes["Width"].Value),
                uint.Parse(regionOfInterestNode.Attributes["Height"].Value)
                );
        }

        private static ImageFormat ParseImageFormat(string format)
        {
            switch (format.ToLowerInvariant())
            {
                case "memorybmp":
                    return ImageFormat.MemoryBmp;
                case "bmp":
                    return ImageFormat.Bmp;
                case "emf":
                    return ImageFormat.Emf;
                case "wmf":
                    return ImageFormat.Wmf;
                case "gif":
                    return ImageFormat.Gif;
                case "jpeg":
                    return ImageFormat.Jpeg;
                case "png":
                    return ImageFormat.Png;
                case "tiff":
                    return ImageFormat.Tiff;
                case "exif":
                    return ImageFormat.Exif;
                case "icon":
                    return ImageFormat.Icon;
                default: throw new ArgumentOutOfRangeException(format);
            }
        }
    }
}