namespace Supercell.Laser.Logic.Message.Security
{
    public class LobbyInfoMessage : GameMessage
    {
        private int _online;

        public LobbyInfoMessage() : base()
        {

        }

        public override void Encode()
        {
            Stream.WriteVInt(_online);
            Stream.WriteString("Benzo Brawl (Stage server)\nServer: o1.benzo.brawlstarsgame.com.hasan.ovh");
            Stream.WriteVInt(0);
        }

        public void SetOnlineVal(int online)
        {
            _online = online;
        }

        public override int GetMessageType()
        {
            return 23457;
        }

        public override int GetServiceNodeType()
        {
            return 1;
        }
    }
}
