namespace Supercell.Laser.Logic.Message.Home
{
    public class SetSupportedCreatorResponse : GameMessage
    {

        public override void Encode()
        {
            Stream.WriteVInt(0);
        }

        public override int GetMessageType()
        {
            return 28686;
        }

        public override int GetServiceNodeType()
        {
            return 9;
        }
    }
}
