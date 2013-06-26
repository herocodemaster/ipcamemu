using System;

namespace HDE.IpCamEmu.Core
{
    /// <summary>
    /// When exception of such type appears, then it is logged in different way.
    /// </summary>
    public class UserFriendlyException: Exception
    {
        public UserFriendlyException(string messsage)
            :base(messsage)
        {

        }

        public override string ToString()
        {
            return Message;
        }
    }
}
