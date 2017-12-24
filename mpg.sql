-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2017 at 04:35 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mpg`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `type`, `email`, `content`, `time`) VALUES
(1, 't', 'Contact', 'tomer1091@gmail.com', 'f', '2017-01-05 12:56:05'),
(2, 'test', 'Bug Report', 'tomer1091@gmail.com', 't', '2017-01-05 12:59:09'),
(3, 'Livia Schacter', 'Contact', 'tbfgrph@sgdxwehjl.com', 'I was just looking at your Mute Pack Generator - Contact site and see that your site has the potential to become very popular. I just want to tell you, In case you didn''t already know... There is a website service which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your site on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can find out more about it here: http://rpws.tk/2m - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular blogs are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That''s how running a successful site works... Here''s to your success! Find out more here: https://lil.ink/4q', '2017-01-06 09:16:40'),
(4, 'Natalie Murray', 'Contact', 'gmxxaelxqx@jecpzs.com', 'Hi my name is Natalie Murray and I just wanted to send you a quick note here instead of calling you. I discovered your Mute Pack Generator - Contact website and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://s.t0m-s.be/5q', '2017-01-11 17:02:43'),
(5, 'Sharon Cervantes', 'Contact', 'gykuclrnxg@cqxwamjumxr.com', 'This is a memo to the webmaster. I discovered your Mute Pack Generator - Contact page by searching on Google but it was hard to find as you were not on the front page of search results. I know you could have more traffic to your site. I have found a company which offers to dramatically increase your rankings and traffic to your site: http://maar.ch/7wb0f} I managed to get close to 500 visitors/day using their service, you can also get a lot more targeted traffic from search engines than you have now. Their services brought significantly more traffic to my site. I hope this helps!\nSharon Cervantes http://maar.ch/7wb0f', '2017-01-15 20:38:24'),
(6, 'Sharon Cervantes', 'Contact', 'hhiscu@skldhhdfq.com', 'This is a comment to the webmaster. I came to your Mute Pack Generator - Contact page by searching on Google but it was hard to find as you were not on the front page of search results. I know you could have more visitors to your website. I have found a site which offers to dramatically improve your rankings and traffic to your site: http://azte.ch/cu} I managed to get close to 500 visitors/day using their services, you can also get a lot more targeted traffic from Google than you have now. Their services brought significantly more traffic to my website. I hope this helps!\nSharon Cervantes http://korturl.no/1tg1z', '2017-01-19 22:23:23'),
(7, 'Tomer', 'Contact', 'tomer1091@gmail.com', 'ttt', '2017-01-20 04:53:42'),
(8, 'Tomer', 'Bug Report', 'tomer1091@gmail.com', 'Capcha Test!\r\nThe end to the spam', '2017-01-20 04:56:31'),
(9, 'Tomer', 'Contact', 'tomer1091@gmail.com', 'Testing the new key', '2017-01-20 11:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE IF NOT EXISTS `milestones` (
  `milestone` bigint(20) NOT NULL,
  `time` datetime DEFAULT NULL,
  `name` longtext,
  PRIMARY KEY (`milestone`),
  UNIQUE KEY `milestone` (`milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`milestone`, `time`, `name`) VALUES
(500, '2016-08-27 01:05:24', 'y3rgod'),
(1000, '2017-04-30 21:15:35', 'Triplenold'),
(5000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `sound` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `file` varchar(500) NOT NULL,
  `count` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `file` (`file`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `sound`, `sub`, `file`, `count`) VALUES
(1, 'total', 'total', 'total', 1036),
(2, 'Minecart', 'All Sounds', 'minecart/base.ogg;minecart/inside.ogg', 123),
(3, 'Chests', 'All Sounds', 'random/chestclosed.ogg;random/chestopen.ogg', 44),
(4, 'Doors', 'All Sounds', 'random/door_close.ogg;random/door_open.ogg', 48),
(5, 'Pistons', 'All Sounds', 'tile/piston/in.ogg;tile/piston/out.ogg', 80),
(6, 'Clicks / Redstone', 'All Sounds', 'random/click.ogg', 107),
(7, 'Eating', 'All Sounds', 'random/burp.ogg;random/eat1.ogg;random/eat2.ogg;random/eat3.ogg', 30),
(8, 'Damage', 'Fall Damage', 'damage/fallbig1.ogg;damage/fallbig2.ogg;damage/fallsmall.ogg', 29),
(9, 'Damage', 'Damage', 'damage/hurtflesh1.ogg;damage/hurtflesh2.ogg;damage/hurtflesh3.ogg;random/classic_hurt.ogg', 34),
(10, 'Dig / Break', 'Wool', 'dig/cloth1.ogg;dig/cloth2.ogg;dig/cloth3.ogg;dig/cloth4.ogg', 30),
(11, 'Dig / Break', 'Grass', 'dig/grass1.ogg;dig/grass2.ogg;dig/grass3.ogg;dig/grass4.ogg', 31),
(12, 'Dig / Break', 'Gravel', 'dig/gravel1.ogg;dig/gravel2.ogg;dig/gravel3.ogg;dig/gravel4.ogg', 30),
(13, 'Dig / Break', 'Sand', 'dig/sand1.ogg;dig/sand2.ogg;dig/sand3.ogg;dig/sand4.ogg', 30),
(14, 'Dig / Break', 'Snow', 'dig/snow1.ogg;dig/snow2.ogg;dig/snow3.ogg;dig/snow4.ogg', 30),
(15, 'Dig / Break', 'Stone', 'dig/stone1.ogg;dig/stone2.ogg;dig/stone3.ogg;dig/stone4.ogg;', 30),
(16, 'Dig / Break', 'Wood', 'dig/wood1.ogg;dig/wood2.ogg;dig/wood3.ogg;dig/wood4.ogg', 30),
(17, 'Dig / Break', 'Glass', 'random/glass1.ogg;random/glass2.ogg;random/glass3.ogg', 30),
(18, 'Steps', 'Wood', 'step/wood1.ogg;step/wood2.ogg;step/wood3.ogg;step/wood4.ogg;step/wood5.ogg;step/wood6.ogg', 34),
(19, 'Steps', 'Wool', 'step/cloth1.ogg;step/cloth2.ogg;step/cloth3.ogg;step/cloth4.ogg', 33),
(20, 'Steps', 'Grass', 'step/grass1.ogg;step/grass2.ogg;step/grass3.ogg;step/grass4.ogg;step/grass5.ogg;step/grass6.ogg', 34),
(21, 'Steps', 'Gravel', 'step/gravel1.ogg;step/gravel2.ogg;step/gravel3.ogg;step/gravel4.ogg', 33),
(22, 'Steps', 'Ladder', 'step/ladder1.ogg;step/ladder2.ogg;step/ladder3.ogg;step/ladder4.ogg;step/ladder5.ogg', 34),
(23, 'Steps', 'Sand', 'step/sand1.ogg;step/sand2.ogg;step/sand3.ogg;step/sand4.ogg;step/sand6.ogg', 33),
(24, 'Steps', 'Snow', 'step/snow1.ogg;step/snow2.ogg;step/snow3.ogg;step/snow4.ogg', 33),
(25, 'Steps', 'Stone', 'step/stone1.ogg;step/stone2.ogg;step/stone3.ogg;step/stone4.ogg;step/stone5.ogg;step/stone6.ogg', 33),
(26, 'Explosions', 'All Sounds', 'random/explode1.ogg;random/explode2.ogg;random/explode3.ogg;random/explode4.ogg', 29),
(27, 'Portals', 'All Sounds', 'portal/portal.ogg;portal/travel.ogg;portal/trigger.ogg', 608),
(28, 'Game Music', 'All Sounds', 'music/game/calm1.ogg;music/game/calm2.ogg;music/game/calm3.ogg;music/game/hal1.ogg;music/game/hal2.ogg;music/game/hal3.ogg;music/game/hal4.ogg;music/game/nuance1.ogg;music/game/nuance2.ogg;music/game/piano1.ogg;music/game/piano2.ogg;music/game/piano3.ogg;music/game/creative/creative1.ogg;music/game/creative/creative2.ogg;music/game/creative/creative3.ogg;music/game/creative/creative4.ogg;music/game/creative/creative5.ogg;music/game/creative/creative6.ogg', 114),
(29, 'Cave Sounds', 'All Sounds', 'ambient/cave/cave1.ogg;ambient/cave/cave2.ogg;ambient/cave/cave3.ogg;ambient/cave/cave4.ogg;ambient/cave/cave5.ogg;ambient/cave/cave6.ogg;ambient/cave/cave7.ogg;ambient/cave/cave8.ogg;ambient/cave/cave9.ogg;ambient/cave/cave10.ogg;ambient/cave/cave11.ogg;ambient/cave/cave12.ogg;ambient/cave/cave13.ogg', 115),
(30, 'Rain', 'All Sounds', 'ambient/weather/rain1.ogg;ambient/weather/rain2.ogg;ambient/weather/rain3.ogg;ambient/weather/rain4.ogg', 127),
(31, 'Thunder', 'All Sounds', 'ambient/weather/thunder1.ogg;ambient/weather/thunder2.ogg;ambient/weather/thunder3.ogg', 81),
(32, 'Fire', 'All Sounds', 'fire/fire.ogg', 50),
(33, 'Water', 'All Sounds', 'liquid/water.ogg', 48),
(34, 'Lava', 'All Sounds', 'liquid/lava.ogg;liquid/lavapop.ogg', 39),
(35, 'XP', 'All Sounds', 'random/levelup.ogg;random/orb.ogg', 48),
(36, 'Villager', 'Idle', 'mob/villager/idle1.ogg;mob/villager/idle2.ogg;mob/villager/idle3.ogg;mob/villager/haggle1.ogg;mob/villager/haggle2.ogg;mob/villager/haggle3.ogg;mob/villager/no1.ogg;mob/villager/no2.ogg;mob/villager/no3.ogg;mob/villager/yes1.ogg;mob/villager/yes2.ogg;mob/villager/yes3.ogg', 230),
(37, 'Villager', 'Death', 'mob/villager/death.ogg', 158),
(38, 'Villager', 'Damage', 'mob/villager/hit1.ogg;mob/villager/hit2.ogg;mob/villager/hit3.ogg;mob/villager/hit4.ogg', 155),
(39, 'Bat', 'Idle', 'mob/bat/idle1.ogg;mob/bat/idle2.ogg;mob/bat/idle3.ogg;mob/bat/idle4.ogg;mob/bat/loop.ogg;mob/bat/takeoff.ogg', 76),
(40, 'Bat', 'Death', 'mob/bat/death.ogg', 60),
(41, 'Bat', 'Damage', 'mob/bat/hurt1.ogg;mob/bat/hurt2.ogg;mob/bat/hurt3.ogg;mob/bat/hurt4.ogg', 59),
(42, 'Occelot', 'Hurt', 'mob/cat/hitt1.ogg;mob/cat/hitt2.ogg;mob/cat/hitt3.ogg', 33),
(43, 'Occelot', 'Hiss', 'mob/cat/hiss1.ogg;mob/cat/hiss2.ogg;mob/cat/hiss3.ogg', 34),
(44, 'Occelot', 'Meow', 'mob/cat/meow1.ogg;mob/cat/moew2.ogg;mob/cat/meow3.ogg;mob/cat/meow4.ogg', 42),
(45, 'Occelot', 'Purr', 'mob/cat/purr1.ogg;mob/cat/purr2.ogg;mob/cat/purr3.ogg', 36),
(46, 'Occelot', 'Purr-eow', 'mob/cat/purreow1.ogg;mob/cat/purreow2.ogg', 37),
(47, 'Chicken', 'Damage', 'mob/chicken/hurt1.ogg;mob/chicken/hurt2.ogg;', 74),
(48, 'Chicken', 'Lay Egg', 'mob/chicken/plop.ogg;', 80),
(49, 'Chicken', 'Idle', 'mob/chicken/say1.ogg;mob/chicken/say2.ogg;mob/chicken/say3.ogg;', 110),
(50, 'Chicken', 'Walking', 'mob/chicken/step1.ogg;mob/chicken/step2.ogg', 93),
(51, 'Cow', 'Walking', 'mob/cow/step1.ogg;mob/cow/step2.ogg;mob/cow/step3.ogg;mob/cow/step4.ogg', 72),
(52, 'Cow', 'Damage', 'mob/cow/hurt1.ogg;mob/cow/hurt2.ogg;mob/cow/hurt3.ogg', 62),
(53, 'Cow', 'Idle', 'mob/cow/say1.ogg;mob/cow/say2.ogg;mob/cow/say3.ogg;mob/cow/say4.ogg', 88),
(54, 'Iron Golem', 'Walking', 'mob/irongolem/walk1.ogg;mob/irongolem/walk2.ogg;mob/irongolem/walk3.ogg;mob/irongolem/walk4.ogg', 37),
(55, 'Iron Golem', 'Death', 'mob/irongolem/death.ogg', 33),
(56, 'Iron Golem', 'Damage', 'mob/irongolem/hit1.ogg;mob/irongolem/hit2.ogg;mob/irongolem/hit3.ogg;mob/irongolem/hit4.ogg', 36),
(57, 'Iron Golem', 'Hit', 'mob/irongolem/throw.ogg', 36),
(58, 'Pig', 'Walking', 'mob/pig/step1.ogg;mob/pig/step2.ogg;mob/pig/step3.ogg;mob/pig/step4.ogg;mob/pig/step5.ogg', 62),
(59, 'Pig', 'Death', 'mob/pig/death.ogg', 54),
(60, 'Pig', 'Idle', 'mob/pig/say1.ogg;mob/pig/say2.ogg;mob/pig/say3.ogg', 77),
(61, 'Sheep', 'Walking', 'mob/sheep/step1.ogg;mob/sheep/step2.ogg;mob/sheep/step3.ogg;mob/sheep/step4.ogg;mob/sheep/step5.ogg', 69),
(62, 'Sheep', 'Idle', 'mob/sheep/say1.ogg;mob/sheep/say2.ogg;mob/sheep/say3.ogg', 86),
(63, 'Wolf', 'Whine', 'mob/wolf/whine.ogg', 39),
(64, 'Wolf', 'Growl, Howl', 'mob/wolf/growl1.ogg;mob/wolf/growl2.ogg;mob/wolf/growl3.ogg;mob/wolf/howl1.ogg;mob/wolf/howl2.ogg', 36),
(65, 'Wolf', 'Bark', ';mob/wolf/bark1.ogg;mob/wolf/bark2.ogg;mob/wolf/bark3.ogg;', 41),
(66, 'Wolf', 'Death', 'mob/wolf/death.ogg;', 34),
(67, 'Wolf', 'Damage', 'mob/wolf/hurt1.ogg;mob/wolf/hurt2.ogg;mob/wolf/hurt3.ogg;', 35),
(68, 'Wolf', 'Panting', 'mob/wolf/panting.ogg;', 39),
(69, 'Wolf', 'Shake', 'mob/wolf/shake.ogg;', 34),
(70, 'Wolf', 'Walking', 'mob/wolf/step1.ogg;mob/wolf/step2.ogg;mob/wolf/step3.ogg;mob/wolf/step4.ogg;mob/wolf/step5.ogg;', 35),
(71, 'Zombie Pigman', 'Damage', 'mob/zombiepig/zpighurt1.ogg;mob/zombiepig/zpighurt2.ogg', 42),
(72, 'Zombie Pigman', 'Idle', 'mob/zombiepig/zpig1.ogg;mob/zombiepig/zpig2.ogg;mob/zombiepig/zpig3.ogg;mob/zombiepig/zpig4.ogg;', 58),
(73, 'Zombie Pigman', 'Angry', 'mob/zombiepig/zpigangry1.ogg;mob/zombiepig/zpigangry2.ogg;mob/zombiepig/zpigangry3.ogg;mob/zombiepig/zpigangry4.ogg;', 46),
(74, 'Zombie Pigman', 'Death', 'mob/zombiepig/zpigdeath.ogg;', 44),
(75, 'Blaze', 'Damage', 'mob/blaze/hit1.ogg;mob/blaze/hit2.ogg;mob/blaze/hit3.ogg;mob/blaze/hit4.ogg', 37),
(76, 'Blaze', 'Breath', 'mob/blaze/breathe1.ogg;mob/blaze/breathe2.ogg;mob/blaze/breathe3.ogg;mob/blaze/breathe4.ogg', 36),
(77, 'Blaze', 'Death', 'mob/blaze/death.ogg', 38),
(78, 'Creeper', 'Sissle', 'mob/creeper/say1.ogg;mob/creeper/say2.ogg;mob/creeper/say3.ogg;mob/creeper/say4.ogg', 24),
(79, 'Creeper', 'Death', 'mob/creeper/death.ogg', 23),
(80, 'Endermen', 'Stare', 'mob/endermen/stare.ogg', 38),
(81, 'Endermen', 'Death', 'mob/endermen/death.ogg', 38),
(82, 'Endermen', 'Damage', 'mob/endermen/hit1.ogg;mob/endermen/hit2.ogg;mob/endermen/hit3.ogg;mob/endermen/hit4.ogg', 35),
(83, 'Endermen', 'Talking', 'mob/endermen/idle1.ogg;mob/endermen/idle2.ogg;mob/endermen/idle3.ogg;mob/endermen/idle4.ogg;mob/endermen/idle5.ogg', 41),
(84, 'Endermen', 'Teleporting', 'mob/endermen/portal.ogg;mob/endermen/portal2.ogg', 34),
(85, 'Endermen', 'Scream', 'mob/endermen/scream1.ogg;mob/endermen/scream2.ogg;mob/endermen/scream3.ogg;mob/endermen/scream4.ogg', 36),
(86, 'Ghast', 'Scream', 'mob/ghast/scream1.ogg;mob/ghast/scream2.ogg;mob/ghast/scream3.ogg;mob/ghast/scream4.ogg;mob/ghast/scream5.ogg;mob/ghast/affectionate_scream.ogg', 38),
(87, 'Ghast', 'Charge', 'mob/ghast/charge.ogg', 31),
(88, 'Ghast', 'Death', 'mob/ghast/death.ogg', 30),
(89, 'Ghast', 'Fireball', 'mob/ghast/fireball4.ogg', 30),
(90, 'Ghast', 'Maon', 'mob/ghast/moan1.ogg;mob/ghast/moan2.ogg;mob/ghast/moan3.ogg;mob/ghast/moan4.ogg;mob/ghast/moan5.ogg;mob/ghast/moan6.ogg;mob/ghast/moan7.ogg', 40),
(91, 'Magmacube', 'Small Cube', 'mob/magmacube/small1.ogg;mob/magmacube/small2.ogg;mob/magmacube/small3.ogg;mob/magmacube/small4.ogg;mob/magmacube/small5.ogg', 22),
(92, 'Magmacube', 'Big Cube', 'mob/magmacube/big1.ogg;mob/magmacube/big2.ogg;mob/magmacube/big3.ogg;mob/magmacube/big4.ogg', 22),
(93, 'Magmacube', 'Jumping', 'mob/magmacube/jump1.ogg;mob/magmacube/jump2.ogg;mob/magmacube/jump3.ogg;mob/magmacube/jump4.ogg', 22),
(94, 'Silverfish', 'Walking', 'mob/silverfish/step1.ogg;mob/silverfish/step2.ogg;mob/silverfish/step3.ogg;mob/silverfish/step4.ogg', 21),
(95, 'Silverfish', 'Damage', 'mob/silverfish/hit1.ogg;mob/silverfish/hit2.ogg;mob/silverfish/hit3.ogg', 20),
(96, 'Silverfish', 'Death', 'mob/silverfish/kill.ogg', 21),
(97, 'Silverfish', 'Idle', 'mob/silverfish/say1.ogg;mob/silverfish/say2.ogg;mob/silverfish/say3.ogg;mob/silverfish/say4.ogg', 22),
(98, 'Skeleton', 'Walking', 'mob/skeleton/step1.ogg;mob/skeleton/step2.ogg;mob/skeleton/step3.ogg;mob/skeleton/step4.ogg', 22),
(99, 'Skeleton', 'Death', 'mob/skeleton/death.ogg', 23),
(100, 'Skeleton', 'Damage', 'mob/skeleton/hurt1.ogg;mob/skeleton/hurt2.ogg;mob/skeleton/hurt3.ogg;mob/skeleton/hurt4.ogg', 23),
(101, 'Skeleton', 'Idle', 'mob/skeleton/say1.ogg;mob/skeleton/say2.ogg;mob/skeleton/say3.ogg', 22),
(102, 'Slime', 'Small Slime', 'mob/slime/small1.ogg;mob/slime/small2.ogg;mob/slime/small3.ogg;mob/slime/small4.ogg;mob/slime/small5.ogg', 35),
(103, 'Slime', 'Big Slime', 'mob/slime/big1.ogg;mob/slime/big2.ogg;mob/slime/big3.ogg;mob/slime/big4.ogg', 37),
(104, 'Slime', 'Hurt', 'mob/slime/attack1.ogg;mob/slime/attack2.ogg', 34),
(105, 'Spider', 'Walking', 'mob/spider/step1.ogg;mob/spider/step2.ogg;mob/spider/step3.ogg;mob/spider/step4.ogg', 24),
(106, 'Spider', 'Death', 'mob/spider/death.ogg', 22),
(107, 'Spider', 'Idle', 'mob/spider/say1.ogg;mob/spider/say2.ogg;mob/spider/say3.ogg;mob/spider/say4.ogg', 29),
(108, 'Wither', 'Spawn', 'mob/wither/spawn.ogg', 65),
(109, 'Wither', 'Death', 'mob/wither/death.ogg', 64),
(110, 'Wither', 'Damage', 'mob/wither/hurt1.ogg;mob/wither/hurt2.ogg;mob/wither/hurt3.ogg;mob/wither/hurt4.ogg', 49),
(111, 'Wither', 'Idle', 'mob/wither/idle1.ogg;mob/wither/idle2.ogg;mob/wither/idle3.ogg;mob/wither/idle4.ogg', 46),
(112, 'Wither', 'Shooting', 'mob/wither/shoot.ogg', 45),
(113, 'Zombie', 'Walking', 'mob/zombie/step1.ogg;mob/zombie/step2.ogg;mob/zombie/step3.ogg;mob/zombie/step4.ogg;mob/zombie/step5.ogg;mob/zombie/unfect.ogg;mob/zombie/wood1.ogg;mob/zombie/wood2.ogg;mob/zombie/wood3.ogg;mob/zombie/wood4.ogg;mob/zombie/woodbreak.ogg', 28),
(114, 'Zombie', 'Death', 'mob/zombie/death.ogg', 25),
(115, 'Zombie', 'Damage', 'mob/zombie/hurt1.ogg;mob/zombie/hurt2.ogg', 27),
(116, 'Zombie', 'Infect', 'mob/zombie/infect.ogg', 27),
(117, 'Zombie', 'Metal', 'mob/zombie/metal1.ogg;mob/zombie/metal2.ogg;mob/zombie/metal3.ogg', 28),
(118, 'Zombie', 'Remedy', 'mob/zombie/remedy.ogg', 27),
(119, 'Zombie', 'Idle', 'mob/zombie/say1.ogg;mob/zombie/say2.ogg;mob/zombie/say3.ogg', 30),
(120, 'Guardian', 'Hit', 'mob/guardian/guardian_hit1.ogg;mob/guardian/guardian_hit2.ogg;mob/guardian/guardian_hit3.ogg;mob/guardian/guardian_hit4.ogg', 36),
(121, 'Guardian', 'Idle', 'mob/guardian/guardian_idle1.ogg;mob/guardian/guardian_idle2.ogg;mob/guardian/guardian_idle3.ogg;mob/guardian/guardian_idle4.ogg', 35),
(122, 'Guardian', 'Death in water', 'mob/guardian/guardian_death.ogg', 35),
(123, 'Guardian', 'Out of water', 'mob/guardian/land_idle1.ogg;mob/guardian/land_idle2.ogg;mob/guardian/land_idle3.ogg;mob/guardian/land_idle4.ogg', 35),
(124, 'Guardian', 'Death on Land', 'mob/guardian/land_death.ogg', 35),
(125, 'Guardian', 'Attack', 'mob/guardian/attack_loop.ogg', 38),
(126, 'Guardian', 'Flop on land', 'mob/guardian/flop1.ogg;mob/guardian/flop2.ogg;mob/guardian/flop3.ogg;mob/guardian/flop4.ogg', 35),
(127, 'Guardian', 'Damage on land', 'mob/guardian/land_hit1.ogg;mob/guardian/land_hit2.ogg;mob/guardian/land_hit3.ogg;mob/guardian/land_hit4.ogg', 35),
(128, 'Elder Guardian', 'Hit', 'mob/guardian/elder_hit1.ogg;mob/guardian/elder_hit2.ogg;mob/guardian/elder_hit3.ogg;mob/guardian/elder_hit4.ogg', 30),
(129, 'Elder Guardian', 'Idle', 'mob/guardian/elder_idle1.ogg;mob/guardian/elder_idle2.ogg;mob/guardian/elder_idle3.ogg;mob/guardian/elder_idle4.ogg', 30),
(130, 'Elder Guardian', 'Curse', 'mob/guardian/curse.ogg', 30),
(131, 'EnderDragon', 'Wings', 'mob/enderdragon/wings1.ogg;mob/enderdragon/wings2.ogg;mob/enderdragon/wings3.ogg;mob/enderdragon/wings4.ogg;mob/enderdragon/wings5.ogg;mob/enderdragon/wings6.ogg', 35),
(132, 'EnderDragon', 'End', 'mob/enderdragon/end.ogg', 47),
(133, 'EnderDragon', 'Growl', 'mob/enderdragon/growl1.ogg;mob/enderdragon/growl2.ogg;mob/enderdragon/growl3.ogg;mob/enderdragon/growl4.ogg', 35),
(134, 'EnderDragon', 'Damage', 'mob/enderdragon/hit1.ogg;mob/enderdragon/hit2.ogg;mob/enderdragon/hit3.ogg;mob/enderdragon/hit4.ogg', 34);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last` varchar(8) NOT NULL,
  `token` varchar(32) NOT NULL DEFAULT '',
  `extra` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
