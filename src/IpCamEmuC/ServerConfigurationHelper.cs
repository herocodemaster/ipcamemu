using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Xml;
using HDE.IpCamEmu.Core;
using HDE.IpCamEmu.Core.MJpeg;
using HDE.IpCamEmu.Core.Source;

namespace HDE.IpCamEmu
{
    static class ServerConfigurationHelper
    {
        /// <summary>
        /// Configuration approach specification:
        /// 
        /// Configuration simplification.
        /// Configuration.xml should be searched in the following order.
        /// 1) command line argument -Configuration=path to configuration file (if any)
        /// Relative paths are resolved relative to current folder.
        /// 2) folder with application\Configuration.xml
        /// 
        /// Relative paths in sources are resolved relative to source location.
        /// </summary>
        /// <param name="customConfiguration">Command line argument (or null)</param>
        /// <returns></returns>
        public static ServerSettingsBase[] Load(string customConfiguration)
        {
            string configurationToLoad;
            if (customConfiguration != null)
            {
                if (Path.IsPathRooted(customConfiguration))
                {
                    configurationToLoad = customConfiguration;
                }
                else
                {
                    configurationToLoad = new FileInfo(
                        Path.Combine(
                            Directory.GetCurrentDirectory(),
                            customConfiguration))
                        .FullName;
                }
            }
            else
            {
                configurationToLoad = new FileInfo(
                    Path.Combine(
                        Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),
                        "Configuration.xml"))
                    .FullName;
            }

            var result = new List<ServerSettingsBase>();

            var document = new XmlDocument();
            document.Load(configurationToLoad);

            var servers = document.SelectNodes("//Configuration/Servers/Server");
            var rootPath = Path.GetDirectoryName(configurationToLoad);

            foreach (XmlNode serverConfig in servers)
            {
                var configType = serverConfig.Attributes["Type"].Value.ToLowerInvariant();
                switch (configType)
                {
                    case "mjpeg":
                        result.Add(CreateMjpegConfig(serverConfig, rootPath));
                        break;
                    default:
                        throw new ArgumentOutOfRangeException(configType);
                }
            }
            return result.ToArray();
        }

        private static ServerSettingsBase CreateMjpegConfig(XmlNode document, string rootPath)
        {
            return new MJpegServerSettings(
                document.SelectSingleNode("Uri").InnerText,
                uint.Parse(document.SelectSingleNode("FrameDelay").InnerText),
                CreateSource(document.SelectSingleNode("Source"), rootPath)
                );
        }

        private static SourceSettings CreateSource(XmlNode document, string rootPath)
        {
            var sourceType = document.SelectSingleNode("@Type").InnerText;
            SourceSettings result;
            switch (sourceType.ToLowerInvariant())
            {
                case "videofile":
                    result = CreateVideoFileSettings(document, rootPath);
                    break;
                case "folder":
                    result = CreateFolderSettings(document, rootPath);
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

        private static SourceSettings CreateFolderSettings(XmlNode document, string rootPath)
        {
            return new FolderSettings()
                       {
                           InstanciateMode = ParseInstanciateMode(document.SelectSingleNode("InstanciateMode").InnerText),
                           BufferFrames = uint.Parse(document.SelectSingleNode("BufferFrames").InnerText),
                           Folder = ResolvePath(document.SelectSingleNode("Folder").InnerText, rootPath, true),
                           RegionOfInterest = ParseRegionOfInterest(document),
                       };
        }

        private static TimeSpan ParseTimeSpan(string text)
        {
            return TimeSpan.ParseExact(text, "G", CultureInfo.InvariantCulture);
        }

        private static SourceSettings CreateVideoFileSettings(XmlNode document, string rootPath)
        {
            return new VideoFileSettings
            {
                InstanciateMode = ParseInstanciateMode(document.SelectSingleNode("InstanciateMode").InnerText),
                RotateY = bool.Parse(document.SelectSingleNode("RotateY").InnerText),

                File = ResolvePath(document.SelectSingleNode("File").InnerText, rootPath, false),
                BufferFrames = uint.Parse(document.SelectSingleNode("BufferFrames").InnerText),
                TimeStart = ParseTimeSpan(document.SelectSingleNode("TimeStart").InnerText),
                TimeEnd = ParseTimeSpan(document.SelectSingleNode("TimeEnd").InnerText),
                TimeStep = ParseTimeSpan(document.SelectSingleNode("TimeStep").InnerText),

                RegionOfInterest = ParseRegionOfInterest(document)
            };
        }

        private static string ResolvePath(string path, string root, bool isPathToFolder)
        {
            string realPath = path;
            if (!Path.IsPathRooted(realPath))
            {
                realPath = Path.Combine(root, realPath);
            }

            return isPathToFolder ?
                    new DirectoryInfo(realPath).FullName :
                    new FileInfo(realPath).FullName;
            
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