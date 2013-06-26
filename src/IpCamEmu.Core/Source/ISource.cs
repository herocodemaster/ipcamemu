using System;

namespace HDE.IpCamEmu.Core.Source
{
    public interface ISourceServerCache : IDisposable
    {
    }

    public interface ISource: IDisposable
    {
        /// <summary>
        /// Place for caching.
        /// </summary>
        ISourceServerCache PrepareSourceServerCache();
        
        /// <summary>
        /// Sets cache.
        /// </summary>
        /// <param name="cache">Cache</param>
        void SetSourceServerCache(ISourceServerCache cache);

        /// <summary>
        /// Set to true when image sequence is ended.
        /// </summary>
        bool IsSourceEnded { get; }

        /// <summary>
        /// Prepares everything for opening
        /// </summary>
        /// <returns>true if source can be read, false otherwise.</returns>
        bool Reset();

        /// <summary>
        /// Gets next frame.
        /// </summary>
        /// <returns>Image</returns>
        byte[] GetNextFrame();
    }
}
