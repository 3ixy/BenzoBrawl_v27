﻿using System.Linq;

namespace Supercell.Laser.Logic.Home
{
    using Newtonsoft.Json;
    using Supercell.Laser.Logic.Command.Home;
    using Supercell.Laser.Logic.Data;
    using Supercell.Laser.Logic.Data.Helper;
    using Supercell.Laser.Logic.Helper;
    using Supercell.Laser.Logic.Home.Gatcha;
    using Supercell.Laser.Logic.Home.Items;
    using Supercell.Laser.Logic.Home.Quest;
    using Supercell.Laser.Logic.Home.Structures;
    using Supercell.Laser.Logic.Message.Home;
    using Supercell.Laser.Titan.DataStream;


    [JsonObject(MemberSerialization.OptIn)]
    public class ClientHome
    {
        public const int DAILYOFFERS_COUNT = 10;

        public static readonly int[] GoldPacksPrice = new int[]
        {
            20, 50, 140, 280
        };

        public static readonly int[] GoldPacksAmount = new int[]
        {
            150, 400, 1200, 2600
        };

        [JsonProperty] public long HomeId;
        [JsonProperty] public int ThumbnailId;
        [JsonProperty] public int NameColor;
        [JsonProperty] public int CharacterId;

        [JsonProperty] public List<OfferBundle> OfferBundles;

        [JsonProperty] public int TrophiesReward;
        [JsonProperty] public int TokenReward;
        [JsonProperty] public int StarTokenReward;

        [JsonProperty] public int BrawlPassProgress;
        [JsonProperty] public int PremiumPassProgress;
        [JsonProperty] public int BrawlPassTokens;
        [JsonProperty] public bool HasPremiumPass;
        [JsonProperty] public List<int> UnlockedEmotes;

        [JsonProperty] public int TrophyRoadProgress;
        [JsonProperty] public Quests Quests;

        [JsonIgnore] public EventData[] Events;

        public PlayerThumbnailData Thumbnail => DataTables.Get(DataType.PlayerThumbnail).GetDataByGlobalId<PlayerThumbnailData>(ThumbnailId);
        public CharacterData Character => DataTables.Get(DataType.Character).GetDataByGlobalId<CharacterData>(CharacterId);

        public HomeMode HomeMode;

        [JsonProperty] public DateTime LastVisitHomeTime;

        public ClientHome()
        {
            ThumbnailId = GlobalId.CreateGlobalId(28, 0);
            CharacterId = GlobalId.CreateGlobalId(16, 0);

            OfferBundles = new List<OfferBundle>();
            LastVisitHomeTime = DateTime.UnixEpoch;

            TrophyRoadProgress = 1;

            BrawlPassProgress = 1;
            PremiumPassProgress = 1;

            UnlockedEmotes = new List<int>();
        }

        public void HomeVisited()
        {
            RotateShopContent(DateTime.UtcNow, OfferBundles.Count == 0);
            LastVisitHomeTime = DateTime.UtcNow;

            if (Quests == null && TrophyRoadProgress >= 11)
            {
                Quests = new Quests();
                Quests.AddRandomQuests(HomeMode.Avatar.Heroes, 8);
            }
            else if (Quests != null)
            {
                if (Quests.QuestList.Count < 8) // New quests adds at 07:00 AM UTC
                {
                    Quests.AddRandomQuests(HomeMode.Avatar.Heroes, 8 - Quests.QuestList.Count);
                }
            }
        }

        public void Tick()
        {
            LastVisitHomeTime = DateTime.UtcNow;
            TokenReward = 0;
            TrophiesReward = 0;
            StarTokenReward = 0;
        }

        public void PurchaseOffer(int index)
        {
            if (index < 0 || index >= OfferBundles.Count) return;

            OfferBundle bundle = OfferBundles[index];
            if (bundle.Purchased) return;

            if (bundle.Currency == 0)
            {
                if (!HomeMode.Avatar.UseDiamonds(bundle.Cost)) return;
            }
            else if (bundle.Currency == 1)
            {
                if (!HomeMode.Avatar.UseGold(bundle.Cost)) return;
            }

            bundle.Purchased = true;

            LogicGiveDeliveryItemsCommand command = new LogicGiveDeliveryItemsCommand();
            Random rand = new Random();

            foreach (Offer offer in bundle.Items)
            {
                if (offer.Type == ShopItem.BrawlBox || offer.Type == ShopItem.FreeBox)
                {
                    DeliveryUnit unit = new DeliveryUnit(10);
                    HomeMode.SimulateGatcha(unit);
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.HeroPower)
                {
                    DeliveryUnit unit = new DeliveryUnit(100);
                    GatchaDrop reward = new GatchaDrop(6);
                    reward.DataGlobalId = offer.ItemDataId;
                    reward.Count = offer.Count;
                    unit.AddDrop(reward);
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.BigBox)
                {
                    DeliveryUnit unit = new DeliveryUnit(12);
                    HomeMode.SimulateGatcha(unit);
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.MegaBox)
                {
                    DeliveryUnit unit = new DeliveryUnit(11);
                    HomeMode.SimulateGatcha(unit);
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.Emote)
                {
                    DeliveryUnit unit = new DeliveryUnit(19);
                    GatchaDrop reward = new GatchaDrop(10);
                    reward.PinGlobalId = offer.ItemDataId;
                    reward.Count = offer.Count;
                    unit.AddDrop(reward);
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.DummyVipBox)
                {
                    Random random = new Random();
                    int vipChange = random.Next(0, 10);
                    
                    DeliveryUnit unit = new DeliveryUnit(2);
                    
                    if (vipChange == 9)
                    {
                        GatchaDrop reward = new GatchaDrop(8);
                        reward.Count = 50;
                        unit.AddDrop(reward);
                        HomeMode.Avatar.IsPremium = true;
                    }
                    else
                    {
                        GatchaDrop reward = new GatchaDrop(7);
                        reward.Count = 0;
                        unit.AddDrop(reward);
                    }
                    
                    command.DeliveryUnits.Add(unit);
                }
                else if (offer.Type == ShopItem.DummyVipGuaranteed)
                {
                    DeliveryUnit unit = new DeliveryUnit(2);
                    GatchaDrop reward = new GatchaDrop(8);
                    reward.Count = 1;
                    unit.AddDrop(reward);
                    HomeMode.Avatar.IsPremium = true;
                    command.DeliveryUnits.Add(unit);
                }
                else
                {
                    // todo
                }

                command.Execute(HomeMode);

                AvailableServerCommandMessage message = new AvailableServerCommandMessage();
                message.Command = command;
                HomeMode.GameListener.SendMessage(message);
            }
        }

        private void RotateShopContent(DateTime time, bool isNewAcc)
        {
            if (OfferBundles.Select(bundle => bundle.IsDailyDeals).ToArray().Length > 6)
            {
                OfferBundles.RemoveAll(bundle => bundle.IsDailyDeals);
            }
            OfferBundles.RemoveAll(offer => offer.EndTime <= time);
            if (isNewAcc || DateTime.UtcNow >= DateTime.UtcNow.Date.AddHours(8)) // Daily deals refresh at 08:00 AM UTC
            {
                if (LastVisitHomeTime < DateTime.UtcNow.Date.AddHours(8))
                {
                    UpdateDailyOfferBundles();
                }
            }
            if (isNewAcc || DateTime.UtcNow >= LastVisitHomeTime.AddHours(2)) // Проверяем каждые 2 часа
            {
                if (LastVisitHomeTime < DateTime.UtcNow.AddHours(-2))
                {
                    for (int i = 0; i < 4; i++)
                    {
                        GenerateSpecialOffer();
                    }
                }
            }
        }

        private void UpdateDailyOfferBundles()
        {
            OfferBundles.Add(GenerateDailyGift());

            bool shouldPowerPoints = false;
            for (int i = 1; i < DAILYOFFERS_COUNT; i++)
            {
                OfferBundle dailyOffer = GenerateDailyOffer(shouldPowerPoints);
                if (dailyOffer != null)
                {
                    if (!shouldPowerPoints) shouldPowerPoints = dailyOffer.Items[0].Type != ShopItem.HeroPower;
                    OfferBundles.Add(dailyOffer);
                }
            }
        }

        private OfferBundle GenerateSpecialOffer()
        {
            OfferBundle bundle = new OfferBundle();
            bundle.EndTime = DateTime.UtcNow.Date.AddHours(2); // на 2 часа
            Offer vipOffer = new Offer(ShopItem.DummyVipBox, 1);
            bundle.Cost = 50;
            bundle.OldCost = 500;
            bundle.Currency = 0;
            bundle.Title = "Акция! Ящик с VIP-статусом!";
            bundle.IsDailyDeals = false;
            bundle.Items.Add(vipOffer);
            OfferBundles.Add(bundle);
            return bundle;
        }
        private OfferBundle GenerateDailyGift()
        {
            OfferBundle bundle = new OfferBundle();
            bundle.IsDailyDeals = true;
            bundle.EndTime = DateTime.UtcNow.Date.AddDays(1).AddHours(8); // tomorrow at 8:00 utc (11:00 MSK)
            bundle.Cost = 0;

            Offer offer = new Offer(ShopItem.FreeBox, 1);
            bundle.Items.Add(offer);

            return bundle;
        }

        private OfferBundle GenerateDailyOffer(bool shouldPowerPoints)
        {
            OfferBundle bundle = new OfferBundle();
            bundle.IsDailyDeals = true;
            bundle.EndTime = DateTime.UtcNow.Date.AddDays(1).AddHours(8); // tomorrow at 8:00 utc (11:00 MSK)

            Random random = new Random();
            int type = shouldPowerPoints ? 0 : random.Next(0, 3); // getting a type

            switch (type)
            {
                case 0: // Power points
                    List<Hero> unlockedHeroes = HomeMode.Avatar.Heroes;
                    bool heroValid = false;
                    int generateAttempts = 0;
                    int index = -1;
                    while (!heroValid && generateAttempts < 10)
                    {
                        generateAttempts++;
                        index = random.Next(unlockedHeroes.Count);
                        heroValid = unlockedHeroes[index].PowerPoints < 2300 + 1440;
                        if (heroValid)
                        {
                            foreach (OfferBundle b in OfferBundles)
                            {
                                if (!b.IsDailyDeals) continue;

                                if (b.Items.Count > 0)
                                {
                                    if (b.Items[0].Type == ShopItem.HeroPower)
                                    {
                                        if (b.Items[0].ItemDataId == unlockedHeroes[index].CharacterId)
                                        {
                                            heroValid = false;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }

                    if (!heroValid) return null;

                    int count = random.Next(15, 100) + 1;
                    Offer offer = new Offer(ShopItem.HeroPower, count, unlockedHeroes[index].CharacterId);

                    bundle.Items.Add(offer);
                    bundle.Cost = count * 2;
                    bundle.Currency = 1;

                    break;
                case 1: // VIP Offer
                    Offer vipOffer = new Offer(ShopItem.DummyVipBox, 1, 10000001);
                    bundle.Items.Add(vipOffer);
                    bundle.Cost = 50;
                    bundle.OldCost = 500;
                    bundle.Currency = 0;
                    bundle.Title = "Ежедневный ящик с VIP-статусом!";
                    bundle.IsDailyDeals = false;
                    break;
                case 2: // mega box
                    Offer megaBoxOffer = new Offer(ShopItem.MegaBox, 1);
                    bundle.Items.Add(megaBoxOffer);
                    bundle.Cost = 15;
                    bundle.OldCost = 80;
                    bundle.Currency = 0;
                    bundle.Title = "Ежедневный мегаящик";
                    bundle.IsDailyDeals = false;
                    break;
            }

            return bundle;
        }

        public void Encode(ByteStream encoder)
        {
            DateTime utcNow = DateTime.UtcNow;

            encoder.WriteVInt(utcNow.Year * 1000 + utcNow.DayOfYear); // 0x78d4b8
            encoder.WriteVInt(utcNow.Hour * 3600 + utcNow.Minute * 60 + utcNow.Second); // 0x78d4cc
            encoder.WriteVInt(HomeMode.Avatar.Trophies); // 0x78d4e0
            encoder.WriteVInt(HomeMode.Avatar.HighestTrophies); // 0x78d4f4
            encoder.WriteVInt(0); // highest trophy again?
            encoder.WriteVInt(TrophyRoadProgress);
            encoder.WriteVInt(99999); // experience

            ByteStreamHelper.WriteDataReference(encoder, Thumbnail);

            // Name colors not implemented since I used game patch to allow color codes in names and everywhere.
            encoder.WriteVInt(43);
            // if (HomeMode.Avatar.IsPremium) {
            //     encoder.WriteVInt(12);
            // }else {
            encoder.WriteVInt(HomeMode.Home.NameColor);
            // }
            

            encoder.WriteVInt(18); // Played game modes
            for (int i = 0; i < 18; i++)
            {
                encoder.WriteVInt(i);
            }

            encoder.WriteVInt(0); // Selected Skins Dictionary

            encoder.WriteVInt(0); // Unlocked Skins List

            encoder.WriteVInt(0);

            encoder.WriteVInt(0);
            encoder.WriteVInt(0); // 122
            encoder.WriteVInt(0);
            encoder.WriteVInt(1);
            encoder.WriteBoolean(true);
            encoder.WriteVInt(1);
            encoder.WriteVInt(0); // token doubler
            encoder.WriteVInt(0);
            encoder.WriteVInt(0);

            encoder.WriteVInt(0);
            encoder.WriteVInt(0);
            encoder.WriteVInt(0);

            encoder.WriteBoolean(false);
            encoder.WriteBoolean(false);
            encoder.WriteBoolean(false);
            encoder.WriteVInt(2);
            encoder.WriteVInt(2);
            encoder.WriteVInt(2);
            encoder.WriteVInt(0);
            encoder.WriteVInt(0);

            encoder.WriteVInt(OfferBundles.Count); // Shop offers at 0x78e0c4
            foreach (OfferBundle offerBundle in OfferBundles)
            {
                offerBundle.Encode(encoder);
            }
            
            encoder.WriteVInt(0);

            encoder.WriteVInt(200); // 0x78e228
            encoder.WriteVInt(0); // 0x78e23c
            encoder.WriteVInt(0); // 0x78e250
            encoder.WriteVInt(0); // 0x78e3a4
            encoder.WriteVInt(0); // 0x78e3a4

            ByteStreamHelper.WriteDataReference(encoder, Character);

            encoder.WriteString("RU"); // Z
            encoder.WriteString("DummyBrawl"); // V

            encoder.WriteVInt(2);
            {
                encoder.WriteInt(3);
                encoder.WriteInt(TokenReward); // tokens

                encoder.WriteInt(4);
                encoder.WriteInt(TrophiesReward); // trophies
            }
            TokenReward = 0;
            TrophiesReward = 0; // ну а где ещё. хотя....
            StarTokenReward = 0;

            encoder.WriteVInt(0); // array

            encoder.WriteVInt(1); // BrawlPassSeasonData
            {
                encoder.WriteVInt(0);
                encoder.WriteVInt(BrawlPassTokens);
                encoder.WriteVInt(PremiumPassProgress);
                encoder.WriteVInt(BrawlPassProgress);
                encoder.WriteBoolean(HasPremiumPass);
                encoder.WriteVInt(0);
            }

            encoder.WriteVInt(0);

            if (Quests != null)
            {
                encoder.WriteBoolean(true);
                Quests.Encode(encoder);
            }
            else
            {
                encoder.WriteBoolean(true);
                encoder.WriteVInt(0);
            }

            encoder.WriteBoolean(true);
            encoder.WriteVInt(UnlockedEmotes.Count);
            for (int i = 0; i < UnlockedEmotes.Count; i++)
            {
                ByteStreamHelper.WriteDataReference(encoder, UnlockedEmotes[i]);
                encoder.WriteVInt(0);
            }

            encoder.WriteVInt(utcNow.Year * 1000 + utcNow.DayOfYear);
            encoder.WriteVInt(100);
            encoder.WriteVInt(10);
            encoder.WriteVInt(30);
            encoder.WriteVInt(3);
            encoder.WriteVInt(80);
            encoder.WriteVInt(10);
            encoder.WriteVInt(40);
            encoder.WriteVInt(1000);
            encoder.WriteVInt(550);
            encoder.WriteVInt(0);
            encoder.WriteVInt(999900);

            encoder.WriteVInt(0); // Array
            
            encoder.WriteVInt(7);
            for (int i = 1; i <= 7; i++)
                encoder.WriteVInt(i);

            encoder.WriteVInt(Events.Length);
            foreach (EventData data in Events)
            {
                data.Encode(encoder);
            }

            encoder.WriteVInt(0);

            encoder.WriteVInt(8);
            {
                encoder.WriteVInt(20);
                encoder.WriteVInt(35);
                encoder.WriteVInt(75);
                encoder.WriteVInt(140);
                encoder.WriteVInt(290);
                encoder.WriteVInt(480);
                encoder.WriteVInt(800);
                encoder.WriteVInt(1250);
            }

            encoder.WriteVInt(8);
            {
                encoder.WriteVInt(1);
                encoder.WriteVInt(2);
                encoder.WriteVInt(3);
                encoder.WriteVInt(4);
                encoder.WriteVInt(5);
                encoder.WriteVInt(10);
                encoder.WriteVInt(15);
                encoder.WriteVInt(20);
            }

            encoder.WriteVInt(3);
            {
                encoder.WriteVInt(10);
                encoder.WriteVInt(15);
                encoder.WriteVInt(40);
            }

            encoder.WriteVInt(3);
            {
                encoder.WriteVInt(6);
                encoder.WriteVInt(20);
                encoder.WriteVInt(60);
            }

            ByteStreamHelper.WriteIntList(encoder, GoldPacksPrice);
            ByteStreamHelper.WriteIntList(encoder, GoldPacksAmount);

            encoder.WriteVInt(2);
            encoder.WriteVInt(200);
            encoder.WriteVInt(20);

            encoder.WriteVInt(8640);
            encoder.WriteVInt(10);
            encoder.WriteVInt(5);

            encoder.WriteBoolean(false);
            encoder.WriteBoolean(false);
            encoder.WriteBoolean(false);

            encoder.WriteVInt(50);
            encoder.WriteVInt(604800);

            encoder.WriteBoolean(true);

            encoder.WriteVInt(0); // Array

            encoder.WriteVInt(2); // IntValueEntries
            {
                encoder.WriteInt(1);
                encoder.WriteInt(41000013); // theme

                encoder.WriteInt(46);
                encoder.WriteInt(1);
            }

            encoder.WriteVInt(0);

// self.writeVint(1)  # array
//         # Custom Support Message Notification
//         self.writeVint(81) # Notification ID
//         self.writeInt(1) # Notification Index
//         self.writeBoolean(False) # Notification Read
//         self.writeInt(0) # Notification Time Ago
//         self.writeString(f"Добро пожаловать в <c8bfd28>V<c68fb51>B<c45f97a>C<c22f7a3> <c09f5cc>B<c00f5cc>R<c19f7a3>A<c33f97a>W<c4cfb51>L</c>!\nТвой ID: <c57fa66>{self.player.low_id}</c>\nКупить привилегию VIP TG - <c60fa5a>v<c4df971>b<c39f888>c<c26f79e>s<c13f6b5>u<c00f5cc>p<c00f5cc>p<c0ef6b5>o<c1cf79e>r<c2af887>t<c38f971>_<c47fa5a>b<c55fb43>o<c63fc2d>t</c>\nНовостной <c82fc33>T<c57fa66>e<c2bf799>l<c00f5cc>e<c20f799>g<c40fa66>r<c60fc33>a<c80ff00>m</c> канал: t.me/vbcbrawl\n") # Notification Message Entry       
//         self.writeVint(0)

            // {
            //     encoder.WriteVInt(81);
            //     encoder.WriteBoolean(false);
            //     encoder.WriteInt(0);
            //     encoder.WriteString("Test");
            //     encoder.WriteVInt(0);
            // }          

            encoder.WriteLong(HomeId);
            encoder.WriteVInt(0);
            encoder.WriteVInt(0);
            encoder.WriteBoolean(false);
            encoder.WriteVInt(0);
            encoder.WriteVInt(0);
        }
    }
}
