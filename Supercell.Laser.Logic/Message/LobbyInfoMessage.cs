namespace Supercell.Laser.Logic.Message.Security
{
    public class LobbyInfoMessage : GameMessage
    {
        private int _online;
        public bool isVip;

        public LobbyInfoMessage() : base()
        {

        }

        public override void Encode()
        {
            string status;
            if (isVip) {
                status = "VIP-игрок";
            }else {
                status = "Игрок";
            }
            Stream.WriteVInt(_online);
            Stream.WriteString("Dummy Brawl (Бета-тест)\nОнлайн: "+_online+"\nВаш статус: "+status+"\n\nt.me/dummy_team\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
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
