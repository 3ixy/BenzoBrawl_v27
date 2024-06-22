namespace Supercell.Laser.Logic.Message.Home
{
    public class ListBrawlTvChannelsMessage : GameMessage
    {
        public long AccountId;

        public override void Decode()
        {
            AccountId = Stream.ReadLong();
        }

        public override int GetMessageType()
        {
            return 14700;
        }

        public override int GetServiceNodeType()
        {
            return 9;
        }
    }
}