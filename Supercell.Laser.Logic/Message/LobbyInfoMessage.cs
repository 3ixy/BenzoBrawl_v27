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
            Stream.WriteString("Benzo Brawl (Бета-тест)\nОнлайн: "+_online+"\n\nt.me/benzobrawl\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
            Stream.WriteVInt(10);
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
