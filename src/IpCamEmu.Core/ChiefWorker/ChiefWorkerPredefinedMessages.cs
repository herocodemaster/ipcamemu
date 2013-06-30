namespace HDE.IpCamEmu.Core.ChiefWorker
{
    /// <summary>
    /// Predefined messages chief and worker both knows.
    /// </summary>
    public static class ChiefWorkerPredefinedMessages
    {
        /// <summary>
        /// Message from Worker to Chief informing
        /// - settings are good and loaded, 
        /// - caching is completed (if any).
        /// - worker is ready to process client requests.
        /// </summary>
        public const string WorkerReady = "Worker started...";
    }
}
