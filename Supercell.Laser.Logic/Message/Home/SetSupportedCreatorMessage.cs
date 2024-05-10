namespace Supercell.Laser.Logic.Message.Home
{
    public class SetSupportedCreatorMessage : GameMessage
    {
        public string Code;

        public SetSupportedCreatorMessage() : base()
        {

        }

        public override void Decode()
        {
            Code = Stream.ReadString();
        }

        public override int GetMessageType()
        {
            return 14366;
        }

        public override int GetServiceNodeType()
        {
            return 9;
        }
    }
}
