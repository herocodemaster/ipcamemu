using System.Linq;

namespace HDE.IpCamEmu.Core.ConfigurationStaff
{
    public class CommandLineOptions
    {
        #region Constants

        public const string SettingName_WorkerSettingsPipeHandle = "WorkerSettingsPipeHandle";

        #endregion

        #region Properties

        /// <summary>
        /// Custom configuration file. Relative paths are resolved relative to current directory.
        /// </summary>
        public string Configuration { get; private set; }

        /// <summary>
        /// Internal usage. 
        /// Settings pipe for transferring setting from Chief to Worker.
        /// </summary>
        public string WorkerSettingsPipeHandle { get; private set; }

        #endregion

        private CommandLineOptions()
        {
        }

        public static CommandLineOptions ParseCommandLineArguments(string[] args)
        {
            var result = new CommandLineOptions();
            try
            {
                if (args == null)
                {
                    args = new string[]{};
                }

                var options = args
                    .Select(arg => arg.Split('='))
                    .Where(item => item.Length == 2)
                    .ToDictionary(items => items[0].Trim('-', '/'), items => items[1]);

                if (options.ContainsKey("Configuration"))
                {
                    result.Configuration = options["Configuration"];
                }

                if (options.ContainsKey(SettingName_WorkerSettingsPipeHandle))
                {
                    result.WorkerSettingsPipeHandle = options[SettingName_WorkerSettingsPipeHandle];
                }
            }
            catch
            {
                // Application should launch even if settings are invalid.
            }
            return result;
        }
    }
}