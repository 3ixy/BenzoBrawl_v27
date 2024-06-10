namespace Supercell.Laser.Logic.Command.Home
{
    using System.Drawing;

    using Supercell.Laser.Logic.Data;
    using Supercell.Laser.Logic.Data.Helper;
    using Supercell.Laser.Logic.Home;
    using Supercell.Laser.Titan.DataStream;

    public class LogicSetPlayerNameColorCommand : Command
    {
        public int ColorId;

        public override void Decode(ByteStream stream)
        {
            base.Decode(stream);
            stream.ReadVInt();
            ColorId = stream.ReadVInt();
        }

        public override int Execute(HomeMode homeMode)
        {
            // homeMode.Avatar.IsPremium
            if (ColorId < 0) return 1;
            if (ColorId > 11 && homeMode.Avatar.IsPremium) return 1;
            if (ColorId > 13) return 2;

            homeMode.Home.NameColor = ColorId;

            return 0;
        }

        public override int GetCommandType()
        {
            return 505;
        }
    }
}
