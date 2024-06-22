namespace Supercell.Laser.Logic.Message.Home
{
    public class TuneBrawlTvChannelsMessage : GameMessage
    {
        public long AccountId;

        public override void Decode()
        {
        }

        public override int GetMessageType()
        {
            return 14701;
        }

        public override int GetServiceNodeType()
        {
            return 9;
        }
    }
}