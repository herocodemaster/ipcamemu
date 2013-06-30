using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using HDE.IpCamEmu.Core.ConfigurationStaff;
using HDE.IpCamEmu.Core.MJpeg;

namespace HDE.IpCamEmu.Configurator
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();

            //!
            _loginTextBox.Text = string.IsNullOrEmpty(Environment.UserDomainName) ?
                Environment.MachineName : Environment.UserDomainName;

            _loginTextBox.Text = _loginTextBox.Text + "\\";
        }

        private void LaunchScript(object sender, EventArgs e)
        {
            LoadInformation();

            if (Environment.OSVersion.Version.Major < 6)
            {
                MessageBox.Show("No need for registration.");
                return;
            }

            StringBuilder result = new StringBuilder();
            foreach (var item in _script)
            {
                Launch(item.Item2, item.Item1, result);
            }

            _configurationInformation.Text = _configurationInformation.Text + Environment.NewLine + Environment.NewLine +
                                             result;
            MessageBox.Show("Completed. See log on window.");
        }

        private void Launch(string commandLine, bool errorIsImportant, StringBuilder results)
        {
            string stdOutput;
            int exitCode;
            string errorOutput;
            ExecuteProcessHelper.ExecuteAndGrabOutputNotLoadProfile(
                "cmd.exe",
                Environment.CurrentDirectory,
                commandLine,
                
                out stdOutput,
                out exitCode,
                out errorOutput);

            results.AppendLine(string.Format("Executing: {0}... ", commandLine));

            if (errorIsImportant && exitCode != 0)
            {
                results.AppendLine("FAILED!");
                results.AppendLine(ConvertMsDosText(stdOutput));
                results.AppendLine(ConvertMsDosText(errorOutput));
                results.AppendLine();
            }
            else
            {
                results.AppendLine("Completed");
                results.AppendLine();
            }
        }

        private string ConvertMsDosText(string packerOutput)
        {
            Decoder dec = Encoding.GetEncoding("cp866").GetDecoder();
            byte[] ba = Encoding.Default.GetBytes(packerOutput);
            int len = dec.GetCharCount(ba, 0, ba.Length);
            char[] ca = new char[len];
            dec.GetChars(ba, 0, ba.Length, ca, 0);
            return new string(ca);
        }

        private Core.ServerSettingsBase[] _settings;
        private string _userName;
        private bool _isLocalUser;
        private string[] _scopeOfRegistration;
        private List<Tuple<bool, string>> _script;

        private void LoadInformation()
        {
            _settings = ConfigurationHelper.Load(CommandLineOptions.ParseCommandLineArguments(CommandLineOptions.GetCurrentProcessCommandLineArguments()).Configuration);
            _userName = _loginTextBox.Text;
            _isLocalUser = string.Compare(Environment.UserDomainName, Environment.MachineName, StringComparison.OrdinalIgnoreCase) == 0;
            _scopeOfRegistration = _settings
                .Where(setting => setting is MJpegServerSettings)
                .Select(setting => (MJpegServerSettings) setting)
                .Select(setting => setting.Uri)
                .ToArray();
            _script = GetScriptToLaunch();

            _configurationInformation.Text = string.Format(
                @"Configurator will register in Windows current configuration of IpCamEmu for the following settings:

User name: '{0}' ({1})

Scope of registration:
{2}

Script that is going to launch one by one the following commands under elevated permissions:
{3}",
                _userName,
                _isLocalUser ? "most probably it is local user" : "domain user",
                GetScopeOfRegistration(),
                string.Join(Environment.NewLine, 
                    _script.Select(item=>item.Item2)
                    .ToArray()));

        }

        private List<Tuple<bool,string>> GetScriptToLaunch()
        {
            var result = new List<Tuple<bool, string>>();
            foreach (var url in _scopeOfRegistration)
            {
                result.Add(new Tuple<bool, string>(false, string.Format("/c netsh http delete urlacl \"url={0}\"", url)));
                result.Add(new Tuple<bool, string>(true, string.Format("/c netsh http add urlacl \"url={0}\" \"user={1}\" listen=yes", url, _userName)));
            }
            return result;
        }

        private string GetScopeOfRegistration()
        {
            var builder = new StringBuilder();
            foreach (var item in _scopeOfRegistration)
            {
                builder.AppendLine(string.Format(
                    "- listen for url {0}{1}",
                    item,
                    item.Contains("http://+:") ? string.Empty : "(warning: url must be in form 'http://+:port/', for example http://+:2012/)"));
            }
            return builder.ToString();
        }
    }
}
