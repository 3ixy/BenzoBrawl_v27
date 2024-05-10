-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 09 2024 г., 04:13
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bsds`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `Id` bigint NOT NULL,
  `Trophies` int NOT NULL,
  `Data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`Id`, `Trophies`, `Data`) VALUES
(1, 27, '{\"AccountId\":1,\"PassToken\":\"cyTvOefxuclB4xNLMhoU8i9dne4L7l9e5U717BD8\",\"Home\":{\"HomeId\":1,\"ThumbnailId\":28000002,\"CharacterId\":16000010,\"OfferBundles\":[],\"BrawlPassProgress\":4,\"PremiumPassProgress\":1,\"BrawlPassTokens\":170,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":4,\"LastVisitHomeTime\":\"2024-05-09T01:13:31.5724464Z\"},\"Avatar\":{\"AccountId\":1,\"PassToken\":\"cyTvOefxuclB4xNLMhoU8i9dne4L7l9e5U717BD8\",\"Name\":\"Debug\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":11777,\"Diamonds\":2645,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"PowerPoints\":746,\"PowerLevel\":1},{\"CharacterId\":16000006,\"CardId\":23000024,\"PowerPoints\":666,\"PowerLevel\":4},{\"CharacterId\":16000018,\"CardId\":23000072,\"Trophies\":8,\"HighestTrophies\":8,\"PowerPoints\":1410,\"PowerLevel\":2},{\"CharacterId\":16000034,\"CardId\":23000218,\"Trophies\":9,\"HighestTrophies\":11,\"PowerPoints\":609,\"PowerLevel\":2},{\"CharacterId\":16000036,\"CardId\":23000218,\"Trophies\":3,\"HighestTrophies\":7,\"PowerPoints\":689,\"PowerLevel\":2},{\"CharacterId\":16000010,\"CardId\":23000040,\"Trophies\":7,\"HighestTrophies\":7,\"PowerPoints\":621},{\"CharacterId\":16000008,\"CardId\":23000032,\"PowerPoints\":545},{\"CharacterId\":16000019,\"CardId\":23000095,\"PowerPoints\":493},{\"CharacterId\":16000015,\"CardId\":23000060,\"PowerPoints\":183},{\"CharacterId\":16000035,\"CardId\":23000224,\"PowerPoints\":49}],\"TrioWins\":4,\"IsPremium\":true,\"AllianceId\":1,\"AllianceRole\":2,\"LastOnline\":\"2024-05-08T23:54:05.5415246Z\",\"Friends\":[{\"AccountId\":2,\"DisplayData\":{\"ThumbnailId\":28000000,\"Name\":\"енее\"},\"FriendState\":4},{\"AccountId\":3,\"DisplayData\":{\"ThumbnailId\":28000000,\"Name\":\"hasanb3t.2\"},\"FriendState\":4}],\"RollsSinceGoodDrop\":29}}'),
(2, 225, '{\"AccountId\":2,\"PassToken\":\"IMkhljP8ZBrLBzl1cr0HDKAWkotEcNcZ2tsopPZV\",\"Home\":{\"HomeId\":2,\"ThumbnailId\":28000000,\"CharacterId\":16000001,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":96,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":192,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":89,\"ItemDataId\":16000031}],\"Currency\":1,\"Cost\":178,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":93,\"ItemDataId\":16000005}],\"Currency\":1,\"Cost\":186,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":44,\"ItemDataId\":16000024}],\"Currency\":1,\"Cost\":88,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":8,\"PremiumPassProgress\":5,\"BrawlPassTokens\":1030,\"HasPremiumPass\":true,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":10,\"LastVisitHomeTime\":\"2024-05-08T23:54:10.4754953Z\"},\"Avatar\":{\"AccountId\":2,\"PassToken\":\"IMkhljP8ZBrLBzl1cr0HDKAWkotEcNcZ2tsopPZV\",\"Name\":\"hasanbet \",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":44654,\"Diamonds\":9966,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":32,\"HighestTrophies\":32,\"PowerPoints\":1410,\"PowerLevel\":2},{\"CharacterId\":16000018,\"CardId\":23000072,\"PowerPoints\":1410,\"PowerLevel\":6},{\"CharacterId\":16000008,\"CardId\":23000032,\"Trophies\":18,\"HighestTrophies\":20,\"PowerPoints\":1410,\"PowerLevel\":2},{\"CharacterId\":16000010,\"CardId\":23000040,\"Trophies\":34,\"HighestTrophies\":34,\"PowerPoints\":1410,\"PowerLevel\":1},{\"CharacterId\":16000019,\"CardId\":23000095,\"Trophies\":14,\"HighestTrophies\":14,\"PowerPoints\":1410},{\"CharacterId\":16000006,\"CardId\":23000024,\"Trophies\":21,\"HighestTrophies\":21,\"PowerPoints\":1410},{\"CharacterId\":16000001,\"CardId\":23000004,\"Trophies\":13,\"HighestTrophies\":13,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000021,\"CardId\":23000105,\"Trophies\":24,\"HighestTrophies\":24,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000015,\"CardId\":23000060,\"Trophies\":8,\"HighestTrophies\":8,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000034,\"CardId\":23000218,\"PowerPoints\":1410},{\"CharacterId\":16000017,\"CardId\":23000068,\"Trophies\":24,\"HighestTrophies\":24,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000005,\"CardId\":23000020,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000032,\"CardId\":23000206,\"PowerPoints\":1408,\"PowerLevel\":1},{\"CharacterId\":16000002,\"CardId\":23000008},{\"CharacterId\":16000003,\"CardId\":23000012,\"PowerPoints\":11},{\"CharacterId\":16000004,\"CardId\":23000016},{\"CharacterId\":16000007,\"CardId\":23000028,\"PowerPoints\":121,\"PowerLevel\":2},{\"CharacterId\":16000009,\"CardId\":23000036,\"PowerPoints\":53},{\"CharacterId\":16000011,\"CardId\":23000044,\"PowerPoints\":102,\"PowerLevel\":2},{\"CharacterId\":16000012,\"CardId\":23000048},{\"CharacterId\":16000013,\"CardId\":23000052,\"PowerPoints\":76},{\"CharacterId\":16000014,\"CardId\":23000056,\"PowerPoints\":29},{\"CharacterId\":16000016,\"CardId\":23000064},{\"CharacterId\":16000020,\"CardId\":23000100},{\"CharacterId\":16000022,\"CardId\":23000110,\"PowerPoints\":98},{\"CharacterId\":16000023,\"CardId\":23000115,\"Trophies\":8,\"HighestTrophies\":8,\"PowerPoints\":15},{\"CharacterId\":16000024,\"CardId\":23000120},{\"CharacterId\":16000025,\"CardId\":23000125,\"PowerPoints\":29},{\"CharacterId\":16000026,\"CardId\":23000130,\"PowerPoints\":12},{\"CharacterId\":16000027,\"CardId\":23000177,\"PowerPoints\":67},{\"CharacterId\":16000028,\"CardId\":23000182,\"PowerPoints\":77},{\"CharacterId\":16000029,\"CardId\":23000188,\"PowerPoints\":10},{\"CharacterId\":16000030,\"CardId\":23000194},{\"CharacterId\":16000031,\"CardId\":23000200,\"PowerPoints\":23},{\"CharacterId\":16000033,\"CardId\":23000212},{\"CharacterId\":16000035,\"CardId\":23000224,\"Trophies\":29,\"HighestTrophies\":29,\"PowerPoints\":120},{\"CharacterId\":16000036,\"CardId\":23000230},{\"CharacterId\":16000037,\"CardId\":23000236}],\"TrioWins\":14,\"StarTokens\":8,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-08T23:55:29.7051458Z\",\"Friends\":[{\"AccountId\":1,\"DisplayData\":{\"ThumbnailId\":28000002,\"Name\":\"Brawler\"},\"FriendState\":4},{\"AccountId\":6,\"DisplayData\":{\"ThumbnailId\":28000000,\"Name\":\"globalarray\"},\"FriendState\":4},{\"AccountId\":9,\"DisplayData\":{\"ThumbnailId\":28000020,\"Name\":\"Lars Sral\"},\"FriendState\":4}],\"RollsSinceGoodDrop\":38}}'),
(3, 44, '{\"AccountId\":3,\"PassToken\":\"gZxIhaJAuxfiZnZQX5uU9hO9WlClraDWOdweuK4a\",\"Home\":{\"HomeId\":3,\"ThumbnailId\":28000000,\"CharacterId\":16000006,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":16,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":32,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":65,\"ItemDataId\":16000010}],\"Currency\":1,\"Cost\":130,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":75,\"ItemDataId\":16000034}],\"Currency\":1,\"Cost\":150,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":35,\"ItemDataId\":16000006}],\"Currency\":1,\"Cost\":70,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":4,\"PremiumPassProgress\":3,\"BrawlPassTokens\":160,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":10,\"LastVisitHomeTime\":\"2024-05-07T21:45:01.7593311Z\"},\"Avatar\":{\"AccountId\":3,\"PassToken\":\"gZxIhaJAuxfiZnZQX5uU9hO9WlClraDWOdweuK4a\",\"Name\":\"hasanb3t.2\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":453,\"Diamonds\":14,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"PowerPoints\":37},{\"CharacterId\":16000006,\"CardId\":23000024,\"Trophies\":44,\"HighestTrophies\":44,\"PowerPoints\":19},{\"CharacterId\":16000034,\"CardId\":23000218,\"PowerPoints\":34},{\"CharacterId\":16000010,\"CardId\":23000040,\"PowerPoints\":39},{\"CharacterId\":16000018,\"CardId\":23000072}],\"TrioWins\":4,\"StarTokens\":3,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-07T21:45:36.0720712Z\",\"Friends\":[{\"AccountId\":1,\"DisplayData\":{\"ThumbnailId\":28000002,\"Name\":\"Brawler\"},\"FriendState\":4}],\"RollsSinceGoodDrop\":5}}'),
(4, 0, '{\"AccountId\":4,\"PassToken\":\"emRE9t5zeb2QcaJMgLXRsbk461ZKpgPduUTLvBXY\",\"Home\":{\"HomeId\":4,\"ThumbnailId\":28000000,\"CharacterId\":16000000,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":56,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":112,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":2,\"PremiumPassProgress\":1,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":1,\"LastVisitHomeTime\":\"2024-05-05T19:57:54.4863235Z\"},\"Avatar\":{\"AccountId\":4,\"PassToken\":\"emRE9t5zeb2QcaJMgLXRsbk461ZKpgPduUTLvBXY\",\"Name\":\"111\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":245,\"Diamonds\":6,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"PowerPoints\":44},{\"CharacterId\":16000006,\"CardId\":23000024},{\"CharacterId\":16000034,\"CardId\":23000218}],\"AllianceId\":-1,\"LastOnline\":\"2024-05-05T19:48:35.2269514Z\",\"Friends\":[],\"RollsSinceGoodDrop\":2}}'),
(5, 8, '{\"AccountId\":5,\"PassToken\":\"2I91XS38OmVHWr39WvWtla8CTLWKYFhkfWzg6ZIo\",\"Home\":{\"HomeId\":5,\"ThumbnailId\":28000000,\"CharacterId\":16000032,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":57,\"ItemDataId\":16000019}],\"Currency\":1,\"Cost\":114,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":61,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":122,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":2,\"PremiumPassProgress\":2,\"BrawlPassTokens\":20,\"HasPremiumPass\":true,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":2,\"LastVisitHomeTime\":\"2024-05-08T00:14:22.6559833Z\"},\"Avatar\":{\"AccountId\":5,\"PassToken\":\"2I91XS38OmVHWr39WvWtla8CTLWKYFhkfWzg6ZIo\",\"Name\":\"123123\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":38362,\"Diamonds\":83608,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"PowerPoints\":1410,\"PowerLevel\":1},{\"CharacterId\":16000019,\"CardId\":23000095,\"PowerPoints\":1410,\"PowerLevel\":1},{\"CharacterId\":16000018,\"CardId\":23000072,\"PowerPoints\":1410},{\"CharacterId\":16000006,\"CardId\":23000024,\"PowerPoints\":1410},{\"CharacterId\":16000010,\"CardId\":23000040,\"PowerPoints\":1410},{\"CharacterId\":16000015,\"CardId\":23000060,\"PowerPoints\":1410},{\"CharacterId\":16000034,\"CardId\":23000218,\"PowerPoints\":1410},{\"CharacterId\":16000017,\"CardId\":23000068,\"PowerPoints\":1410},{\"CharacterId\":16000032,\"CardId\":23000206,\"Trophies\":8,\"HighestTrophies\":8,\"PowerPoints\":1136}],\"TrioWins\":1,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-08T00:14:29.6537079Z\",\"Friends\":[],\"RollsSinceGoodDrop\":20}}'),
(6, 41, '{\"AccountId\":6,\"PassToken\":\"vwf371QtXugFkTJrMlRW8hgbtEt4csemTvFaMuDd\",\"Home\":{\"HomeId\":6,\"ThumbnailId\":28000000,\"CharacterId\":16000000,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":87,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":174,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-06T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":4,\"PremiumPassProgress\":1,\"BrawlPassTokens\":150,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":6,\"LastVisitHomeTime\":\"2024-05-05T21:23:20.4345555Z\"},\"Avatar\":{\"AccountId\":6,\"PassToken\":\"vwf371QtXugFkTJrMlRW8hgbtEt4csemTvFaMuDd\",\"Name\":\"globalarray\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":464,\"Diamonds\":7,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":15,\"HighestTrophies\":15,\"PowerPoints\":38},{\"CharacterId\":16000018,\"CardId\":23000072,\"Trophies\":8,\"HighestTrophies\":8,\"PowerPoints\":57},{\"CharacterId\":16000006,\"CardId\":23000024,\"Trophies\":6,\"HighestTrophies\":6,\"PowerPoints\":10},{\"CharacterId\":16000008,\"CardId\":23000032,\"Trophies\":12,\"HighestTrophies\":12,\"PowerPoints\":34},{\"CharacterId\":16000019,\"CardId\":23000095},{\"CharacterId\":16000034,\"CardId\":23000218}],\"TrioWins\":5,\"StarTokens\":1,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-05T21:23:27.1730497Z\",\"Friends\":[{\"AccountId\":2,\"DisplayData\":{\"ThumbnailId\":28000000,\"Name\":\"енее\"},\"FriendState\":4}],\"RollsSinceGoodDrop\":7}}'),
(7, 25, '{\"AccountId\":7,\"PassToken\":\"VWQ5JfMWByjznHOj2sPIdjSgHiIdjRSaR9PmOH4d\",\"Home\":{\"HomeId\":7,\"ThumbnailId\":28000000,\"CharacterId\":16000000,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\"},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\",\"OldCost\":80},{\"Items\":[{\"Type\":8,\"Count\":39,\"ItemDataId\":16000018}],\"Currency\":1,\"Cost\":78,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\"},{\"Items\":[{\"Type\":8,\"Count\":67,\"ItemDataId\":16000019}],\"Currency\":1,\"Cost\":134,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\"},{\"Items\":[{\"Type\":8,\"Count\":43,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":86,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-09T08:00:00Z\"}],\"TokenReward\":10,\"BrawlPassProgress\":2,\"PremiumPassProgress\":1,\"BrawlPassTokens\":110,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":2,\"LastVisitHomeTime\":\"2024-05-09T00:02:12.175041Z\"},\"Avatar\":{\"AccountId\":7,\"PassToken\":\"VWQ5JfMWByjznHOj2sPIdjSgHiIdjRSaR9PmOH4d\",\"Name\":\"анус\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":258,\"Diamonds\":6,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":5,\"HighestTrophies\":7,\"PowerPoints\":50},{\"CharacterId\":16000018,\"CardId\":23000072,\"Trophies\":20,\"HighestTrophies\":22},{\"CharacterId\":16000019,\"CardId\":23000095}],\"TrioWins\":4,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-09T00:02:54.2201522Z\",\"Friends\":[],\"RollsSinceGoodDrop\":3}}'),
(8, 23, '{\"AccountId\":8,\"PassToken\":\"6bxvJxIzn7e40xg9jKybx5wdvJSAs76vazfCKSmx\",\"Home\":{\"HomeId\":8,\"ThumbnailId\":28000000,\"CharacterId\":16000000,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":48,\"ItemDataId\":16000017}],\"Currency\":1,\"Cost\":96,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":53,\"ItemDataId\":16000010}],\"Currency\":1,\"Cost\":106,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":61,\"ItemDataId\":16000019}],\"Currency\":1,\"Cost\":122,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":76,\"ItemDataId\":16000015}],\"Currency\":1,\"Cost\":152,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":1,\"PremiumPassProgress\":1,\"BrawlPassTokens\":90,\"HasPremiumPass\":true,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":4,\"LastVisitHomeTime\":\"2024-05-07T06:33:41.9295087Z\"},\"Avatar\":{\"AccountId\":8,\"PassToken\":\"6bxvJxIzn7e40xg9jKybx5wdvJSAs76vazfCKSmx\",\"Name\":\"n3xus\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":72693,\"Diamonds\":9000,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":17,\"HighestTrophies\":17,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000010,\"CardId\":23000040,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000019,\"CardId\":23000095,\"Trophies\":6,\"HighestTrophies\":6,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000034,\"CardId\":23000218,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000006,\"CardId\":23000024,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000018,\"CardId\":23000072,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000015,\"CardId\":23000060,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000008,\"CardId\":23000032,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000017,\"CardId\":23000068,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000012,\"CardId\":23000048,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000021,\"CardId\":23000105,\"PowerPoints\":1410,\"PowerLevel\":8},{\"CharacterId\":16000032,\"CardId\":23000206,\"PowerPoints\":1410,\"PowerLevel\":6},{\"CharacterId\":16000023,\"CardId\":23000115,\"PowerPoints\":1147}],\"TrioWins\":4,\"AllianceId\":-1,\"LastOnline\":\"2024-05-07T06:30:40.2377451Z\",\"Friends\":[],\"RollsSinceGoodDrop\":19}}'),
(9, 28, '{\"AccountId\":9,\"PassToken\":\"SiUNIKFsDFELO4tsBPVV71b3N3YSVdhLx9H2ER9G\",\"Home\":{\"HomeId\":9,\"ThumbnailId\":28000020,\"CharacterId\":16000010,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":47,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":94,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"OldCost\":80,\"State\":2}],\"BrawlPassProgress\":3,\"PremiumPassProgress\":1,\"BrawlPassTokens\":90,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":4,\"LastVisitHomeTime\":\"2024-05-06T15:56:35.5577718Z\"},\"Avatar\":{\"AccountId\":9,\"PassToken\":\"SiUNIKFsDFELO4tsBPVV71b3N3YSVdhLx9H2ER9G\",\"Name\":\"Lars Sral\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":244,\"Diamonds\":9,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":7,\"HighestTrophies\":7,\"PowerPoints\":52,\"PowerLevel\":1},{\"CharacterId\":16000010,\"CardId\":23000040,\"Trophies\":7,\"HighestTrophies\":7},{\"CharacterId\":16000018,\"CardId\":23000072,\"PowerPoints\":14},{\"CharacterId\":16000019,\"CardId\":23000095,\"PowerPoints\":42},{\"CharacterId\":16000008,\"CardId\":23000032,\"Trophies\":14,\"HighestTrophies\":14}],\"TrioWins\":4,\"AllianceId\":-1,\"LastOnline\":\"2024-05-06T15:56:48.5000446Z\",\"Friends\":[{\"AccountId\":2,\"DisplayData\":{\"ThumbnailId\":28000000,\"Name\":\"hasanbet \"},\"FriendState\":4}],\"RollsSinceGoodDrop\":5}}'),
(10, 0, '{\"AccountId\":10,\"PassToken\":\"Xsu3PYPbFBuLbIde84Gnl8MEs9lV0nMmX2vjYkgx\",\"Home\":{\"HomeId\":10,\"ThumbnailId\":28000000,\"CharacterId\":16000000,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":40,\"ItemDataId\":16000000}],\"Currency\":1,\"Cost\":80,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-07T08:00:00Z\",\"OldCost\":80,\"State\":2}],\"BrawlPassProgress\":2,\"PremiumPassProgress\":1,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":1,\"LastVisitHomeTime\":\"2024-05-06T14:39:31.1211448Z\"},\"Avatar\":{\"AccountId\":10,\"PassToken\":\"Xsu3PYPbFBuLbIde84Gnl8MEs9lV0nMmX2vjYkgx\",\"Name\":\"станок\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":195,\"Diamonds\":10,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"PowerPoints\":16},{\"CharacterId\":16000018,\"CardId\":23000072}],\"AllianceId\":-1,\"LastOnline\":\"2024-05-06T14:39:53.645966Z\",\"Friends\":[],\"RollsSinceGoodDrop\":2}}'),
(11, 94, '{\"AccountId\":11,\"PassToken\":\"GN2HEgeM2GxGtdvCgFBp2hDbjSXcRI3G7pYK4wHx\",\"Home\":{\"HomeId\":11,\"ThumbnailId\":28000023,\"CharacterId\":16000034,\"OfferBundles\":[{\"Items\":[{\"Count\":1}],\"IsDailyDeals\":true,\"Purchased\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":10,\"Count\":1}],\"Cost\":40,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"OldCost\":80,\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":51,\"ItemDataId\":16000018}],\"Currency\":1,\"Cost\":102,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":18,\"ItemDataId\":16000034}],\"Currency\":1,\"Cost\":36,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":70,\"ItemDataId\":16000001}],\"Currency\":1,\"Cost\":140,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2},{\"Items\":[{\"Type\":8,\"Count\":88,\"ItemDataId\":16000006}],\"Currency\":1,\"Cost\":176,\"IsDailyDeals\":true,\"EndTime\":\"2024-05-08T08:00:00Z\",\"State\":2}],\"BrawlPassProgress\":6,\"PremiumPassProgress\":1,\"BrawlPassTokens\":406,\"UnlockedEmotes\":[],\"TrophyRoadProgress\":7,\"LastVisitHomeTime\":\"2024-05-07T09:34:40.2531921Z\"},\"Avatar\":{\"AccountId\":11,\"PassToken\":\"GN2HEgeM2GxGtdvCgFBp2hDbjSXcRI3G7pYK4wHx\",\"Name\":\"станок\",\"NameSetByUser\":true,\"TutorialsCompletedCount\":2,\"Gold\":388,\"Diamonds\":34,\"Heroes\":[{\"CharacterId\":16000000,\"CardId\":23000000,\"Trophies\":31,\"HighestTrophies\":31,\"PowerPoints\":40,\"PowerLevel\":1},{\"CharacterId\":16000019,\"CardId\":23000095,\"PowerPoints\":68,\"PowerLevel\":1},{\"CharacterId\":16000006,\"CardId\":23000024,\"PowerPoints\":66,\"PowerLevel\":2},{\"CharacterId\":16000008,\"CardId\":23000032,\"PowerPoints\":58,\"PowerLevel\":2},{\"CharacterId\":16000034,\"CardId\":23000218,\"Trophies\":63,\"HighestTrophies\":63,\"PowerPoints\":50,\"PowerLevel\":2},{\"CharacterId\":16000018,\"CardId\":23000072,\"PowerPoints\":14},{\"CharacterId\":16000001,\"CardId\":23000004}],\"TrioWins\":4,\"StarTokens\":8,\"AllianceId\":1,\"AllianceRole\":1,\"LastOnline\":\"2024-05-07T09:26:12.1874758Z\",\"Friends\":[],\"RollsSinceGoodDrop\":9}}');

-- --------------------------------------------------------

--
-- Структура таблицы `alliances`
--

CREATE TABLE `alliances` (
  `Id` bigint NOT NULL,
  `Name` text NOT NULL,
  `Trophies` int NOT NULL,
  `Data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Дамп данных таблицы `alliances`
--

INSERT INTO `alliances` (`Id`, `Name`, `Trophies`, `Data`) VALUES
(1, '111', 464, '{\"id\":1,\"name\":\"111\",\"desc\":\"\",\"members\":[{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"test\"},\"accountId\":1,\"role\":2},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"hasanb3t.2\"},\"accountId\":3,\"role\":1},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"globalarray\"},\"accountId\":6,\"role\":1},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"енее\"},\"accountId\":2,\"role\":1},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"анус\"},\"accountId\":7,\"role\":1},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"123123\"},\"accountId\":5,\"role\":1},{\"displayData\":{\"ThumbnailId\":28000000,\"Name\":\"станок\"},\"accountId\":11,\"trophies\":16,\"role\":1}],\"badge\":8000027,\"stream\":{\"entry_id_counter\":18,\"entries\":[{\"Id\":1,\"AuthorId\":2,\"AuthorName\":\"енее\",\"SendTime\":\"2024-05-05T18:48:20.6268221Z\",\"PlayerId\":2,\"PlayerName\":\"енее\",\"Type\":4,\"Event\":3},{\"Id\":2,\"AuthorId\":3,\"AuthorName\":\"hasanb3t.2\",\"SendTime\":\"2024-05-05T19:31:08.5601181Z\",\"PlayerId\":3,\"PlayerName\":\"hasanb3t.2\",\"Type\":4,\"Event\":3},{\"Id\":3,\"AuthorId\":2,\"AuthorName\":\"енее\",\"SendTime\":\"2024-05-05T19:32:33.4025632Z\",\"PlayerId\":2,\"PlayerName\":\"енее\",\"Type\":4,\"Event\":4},{\"Id\":4,\"AuthorId\":5,\"AuthorName\":\"123123\",\"SendTime\":\"2024-05-05T19:51:19.1832023Z\",\"PlayerId\":5,\"PlayerName\":\"123123\",\"Type\":4,\"Event\":3},{\"Id\":5,\"AuthorId\":6,\"AuthorName\":\"globalarray\",\"SendTime\":\"2024-05-05T19:57:26.9238905Z\",\"PlayerId\":6,\"PlayerName\":\"globalarray\",\"Type\":4,\"Event\":3},{\"Id\":6,\"AuthorId\":2,\"AuthorName\":\"енее\",\"SendTime\":\"2024-05-05T20:01:14.3161564Z\",\"PlayerId\":2,\"PlayerName\":\"енее\",\"Type\":4,\"Event\":3},{\"Id\":7,\"AuthorId\":7,\"AuthorName\":\"анус\",\"SendTime\":\"2024-05-05T20:05:29.5694022Z\",\"PlayerId\":7,\"PlayerName\":\"анус\",\"Type\":4,\"Event\":3},{\"Id\":8,\"AuthorId\":7,\"AuthorName\":\"анус\",\"Message\":\"анус\",\"AuthorRole\":1,\"SendTime\":\"2024-05-05T20:05:35.9715452Z\",\"Type\":2},{\"Id\":9,\"AuthorId\":7,\"AuthorName\":\"анус\",\"Message\":\"[Reply]\\n Smartfon Vivo, today at 22:56\\n какой\\n\\nhasan .ovh/cdn/BSv27.apk\",\"AuthorRole\":1,\"SendTime\":\"2024-05-05T20:05:40.2907606Z\",\"Type\":2},{\"Id\":10,\"AuthorId\":7,\"AuthorName\":\"анус\",\"Message\":\"Так че ты сын псины, кончали в клитор твоей матухе до пизды жирной тварине, ребенок помойной вытребухи, ДАВАЙ СУЧКА НА КОЛЕНИ СТ\",\"AuthorRole\":1,\"SendTime\":\"2024-05-05T20:05:47.8992189Z\",\"Type\":2},{\"Id\":11,\"AuthorId\":7,\"AuthorName\":\"анус\",\"SendTime\":\"2024-05-05T20:06:04.4839819Z\",\"PlayerId\":7,\"PlayerName\":\"анус\",\"Type\":4,\"Event\":4},{\"Id\":12,\"AuthorId\":7,\"AuthorName\":\"анус\",\"SendTime\":\"2024-05-05T20:06:38.3152084Z\",\"PlayerId\":7,\"PlayerName\":\"анус\",\"Type\":4,\"Event\":3},{\"Id\":13,\"AuthorId\":6,\"AuthorName\":\"globalarray\",\"Message\":\"сын сморщенной\",\"AuthorRole\":1,\"SendTime\":\"2024-05-05T20:06:43.200559Z\",\"Type\":2},{\"Id\":14,\"AuthorId\":7,\"AuthorName\":\"анус\",\"Message\":\"ну и где все\",\"AuthorRole\":1,\"SendTime\":\"2024-05-05T20:50:42.0980205Z\",\"Type\":2},{\"Id\":15,\"AuthorId\":1,\"AuthorName\":\"Brawler\",\"AuthorRole\":2,\"SendTime\":\"2024-05-05T22:54:31.2299789Z\",\"PlayerId\":5,\"PlayerName\":\"123123\",\"Type\":4,\"Event\":1},{\"Id\":16,\"AuthorId\":5,\"AuthorName\":\"123123\",\"AuthorRole\":1,\"SendTime\":\"2024-05-06T13:22:50.6358161Z\",\"PlayerId\":5,\"PlayerName\":\"123123\",\"Type\":4,\"Event\":3},{\"Id\":17,\"AuthorId\":11,\"AuthorName\":\"станок\",\"SendTime\":\"2024-05-06T19:14:35.481152Z\",\"PlayerId\":11,\"PlayerName\":\"станок\",\"Type\":4,\"Event\":3},{\"Id\":18,\"AuthorId\":11,\"AuthorName\":\"станок\",\"Message\":\"пися\",\"AuthorRole\":1,\"SendTime\":\"2024-05-06T19:17:04.4706886Z\",\"Type\":2}]},\"OnlinePlayers\":1,\"Trophies\":464,\"Header\":{}}'),
(2, 'анус', 0, '{\"id\":2,\"name\":\"анус\",\"desc\":\"\",\"members\":[],\"badge\":8000028,\"stream\":{\"entry_id_counter\":2,\"entries\":[{\"Id\":1,\"AuthorId\":7,\"AuthorName\":\"анус\",\"Message\":\"ч\",\"AuthorRole\":2,\"SendTime\":\"2024-05-05T20:06:17.0066394Z\",\"Type\":2},{\"Id\":2,\"AuthorId\":7,\"AuthorName\":\"анус\",\"SendTime\":\"2024-05-05T20:06:31.0681686Z\",\"PlayerId\":7,\"PlayerName\":\"анус\",\"Type\":4,\"Event\":4}]},\"Header\":{}}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Индексы таблицы `alliances`
--
ALTER TABLE `alliances`
  ADD UNIQUE KEY `Id` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;