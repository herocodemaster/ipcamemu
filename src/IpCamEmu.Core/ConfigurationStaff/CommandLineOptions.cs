using System.Linq;

namespace HDE.IpCamEmu.Core.ConfigurationStaff
{
    public class CommandLineOptions
    {
        #region Properties

        /// <summary>
        /// Custom configuration file. Relative paths are resolved relative to current directory.
        /// </summary>
        public string Configuration { get; private set; }

        /// <summary>
        /// Internal usage. 
        /// 
        /// Interprocess communication via anonymous pipes.
        /// Pipe handle for Chief controlling Worker.
        /// </summary>
        public string WorkerPipeControl { get; private set; }

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

                if (options.ContainsKey("WorkerPipeControl"))
                {
                    result.WorkerPipeControl = options["WorkerPipeControl"];
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