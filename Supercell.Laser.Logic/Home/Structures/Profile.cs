namespace Supercell.Laser.Logic.Home.Structures
{
    using Supercell.Laser.Logic.Avatar;
    using Supercell.Laser.Logic.Avatar.Structures;
    using Supercell.Laser.Logic.Data;

    using Supercell.Laser.Titan.DataStream;
    using Supercell.Laser.Titan.Math;

    public class Profile
    {
        public PlayerDisplayData DisplayData;
        public long AccountId;
        public Hero[] Heroes;
        public static int nameColor;
        public List<LogicVector2> Stats;

        public Profile()
        {
            DisplayData = new PlayerDisplayData();
            Stats = new List<LogicVector2>();
        }

        public void AddStat(int key, int value)
        {
            Stats.Add(new LogicVector2(key, value));
        }

        public void Encode(ByteStream stream)
        {
            stream.WriteVLong(AccountId);
            stream.WriteVInt(0);

            stream.WriteVInt(Heroes.Length);
            foreach (Hero hero in Heroes)
            {
                hero.Encode(stream);
            }

            stream.WriteVInt(Stats.Count);
            foreach (LogicVector2 stat in Stats)
            {
                stat.Encode(stream);
            }
            stream.WriteString(DisplayData.Name);
            stream.WriteVInt(100);
            stream.WriteVInt(28000000+DisplayData.ThumbnailId);
            stream.WriteVInt(43000000+nameColor);
            // DisplayData.Encode(stream);
        }

        public static Profile Create(ClientHome home, ClientAvatar avatar)
        {
            Profile profile = new Profile();

            profile.AccountId = avatar.AccountId;
            
            PlayerDisplayData playerDisplayData = new PlayerDisplayData();
            playerDisplayData.ThumbnailId = home.ThumbnailId;
            playerDisplayData.Name = avatar.Name;
            playerDisplayData.Color = home.NameColor;
            profile.DisplayData = playerDisplayData;

            profile.Heroes = avatar.Heroes.ToArray();

            profile.AddStat(1, avatar.TrioWins);
            profile.AddStat(2, 100); // Experience
            profile.AddStat(3, avatar.Trophies);
            profile.AddStat(4, avatar.HighestTrophies);
            profile.AddStat(5, profile.Heroes.Length);
            profile.AddStat(7, home.ThumbnailId);
            profile.AddStat(8, avatar.SoloWins);
            nameColor = home.NameColor;
            if (home.NameColor > 0) {
                // Совместимость с текущими игроками что-ли
                profile.AddStat(43000000, home.NameColor);
            }
           

            return profile;
        }
    }
}
