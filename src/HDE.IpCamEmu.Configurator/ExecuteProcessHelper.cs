using System.Diagnostics;
using System.Text;
using System.Threading;

namespace HDE.IpCamEmu.Configurator
{
    static class ExecuteProcessHelper
    {
        public static void ExecuteAndGrabOutputNotLoadProfile(
            string executable,
            string workDir,
            string args,

            out string standardOutput, out int exitCode, out string errorOutput)
        {
            var output = new StringBuilder();
            var error = new StringBuilder();

            using (var process = new Process())
            {
                process.StartInfo.FileName = executable;
                process.StartInfo.Arguments = args;

                process.StartInfo.WorkingDirectory = workDir;
                process.StartInfo.CreateNoWindow = true;
                process.StartInfo.RedirectStandardOutput = true;
                process.StartInfo.RedirectStandardError = true;
                process.StartInfo.UseShellExecute = false;
                process.StartInfo.ErrorDialog = false;

                using (var outputWaitHandle = new AutoResetEvent(false))
                using (var errorWaitHandle = new AutoResetEvent(false))
                {
                    process.OutputDataReceived += (sender, e) =>
                                                      {
                                                          if (e.Data == null)
                                                          {
                                                              outputWaitHandle.Set();
                                                          }
                                                          else
                                                          {
                                                              output.AppendLine(e.Data);
                                                          }
                                                      };
                    process.ErrorDataReceived += (sender, e) =>
                                                     {
                                                         if (e.Data == null)
                                                         {
                                                             errorWaitHandle.Set();
                                                         }
                                                         else
                                                         {
                                                             error.AppendLine(e.Data);
                                                         }
                                                     };

                    process.Start();

                    process.BeginOutputReadLine();
                    process.BeginErrorReadLine();

                    process.WaitForExit();
                    outputWaitHandle.WaitOne();
                    errorWaitHandle.WaitOne();
                }
                exitCode = process.ExitCode;
            }

            standardOutput = output.ToString();
            errorOutput = error.ToString();
        }
    }
}