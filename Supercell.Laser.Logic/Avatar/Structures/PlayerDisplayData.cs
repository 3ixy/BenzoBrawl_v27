namespace Supercell.Laser.Logic.Avatar.Structures
{
    using Supercell.Laser.Titan.DataStream;

    public class PlayerDisplayData
    {
        public int ThumbnailId;
        public string Name;
        public int Color;

        public PlayerDisplayData()
        {
            ;
        }

        public PlayerDisplayData(int thumbnail, string name, int Color = 1)
        {
            ThumbnailId = thumbnail;
            Name = name;
            Color = Color;
        }

        public void Encode(ByteStream stream)
        {
            stream.WriteString(Name);
            stream.WriteVInt(100);
            stream.WriteVInt(ThumbnailId);
            stream.WriteVInt(43000000+Color);
            if (Color > 0) {
                
                stream.WriteVInt(Color);
            }
        }
    }
}
