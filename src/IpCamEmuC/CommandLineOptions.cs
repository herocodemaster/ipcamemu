using System.Linq;

namespace HDE.IpCamEmu
{
    class CommandLineOptions
    {
        #region Properties

        public string Configuration { get; private set; }

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
            }
            catch
            {
                // Application should launch even if settings are invalid.
            }
            return result;
        }
    }
}