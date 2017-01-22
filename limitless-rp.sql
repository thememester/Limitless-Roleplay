-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2016 at 12:23 AM
-- Server version: 5.5.53-0+deb8u1
-- PHP Version: 5.6.29-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `limitless-rp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
`id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE IF NOT EXISTS `businesses` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `entryfee` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `products` int(10) DEFAULT '500'
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE IF NOT EXISTS `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE IF NOT EXISTS `charges` (
`id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE IF NOT EXISTS `clothing` (
`id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE IF NOT EXISTS `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE IF NOT EXISTS `entrances` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT '1239',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `adminlevel` tinyint(2) DEFAULT '0',
  `factiontype` tinyint(2) DEFAULT '0',
  `vip` tinyint(2) DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE IF NOT EXISTS `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE IF NOT EXISTS `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE IF NOT EXISTS `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT '0',
  `color` int(10) DEFAULT '-1',
  `rankcount` tinyint(2) DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint(2) DEFAULT '0',
  `lockerworld` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE IF NOT EXISTS `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE IF NOT EXISTS `flags` (
`id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE IF NOT EXISTS `furniture` (
`id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE IF NOT EXISTS `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE IF NOT EXISTS `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `points` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(2) DEFAULT '0',
  `stashworld` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `pistolammo` int(10) DEFAULT '0',
  `shotgunammo` int(10) DEFAULT '0',
  `smgammo` int(10) DEFAULT '0',
  `arammo` int(10) DEFAULT '0',
  `rifleammo` int(10) DEFAULT '0',
  `hpammo` int(10) DEFAULT '0',
  `poisonammo` int(10) DEFAULT '0',
  `fmjammo` int(10) DEFAULT '0',
  `weapon_9mm` int(10) DEFAULT '0',
  `weapon_sdpistol` int(10) DEFAULT '0',
  `weapon_deagle` int(10) DEFAULT '0',
  `weapon_shotgun` int(10) DEFAULT '0',
  `weapon_spas12` int(10) DEFAULT '0',
  `weapon_sawnoff` int(10) DEFAULT '0',
  `weapon_tec9` int(10) DEFAULT '0',
  `weapon_uzi` int(10) DEFAULT '0',
  `weapon_mp5` int(10) DEFAULT '0',
  `weapon_ak47` int(10) DEFAULT '0',
  `weapon_m4` int(10) DEFAULT '0',
  `weapon_rifle` int(10) DEFAULT '0',
  `weapon_sniper` int(10) DEFAULT '0',
  `weapon_molotov` int(10) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int(10) DEFAULT '0',
  `drugworld` int(10) DEFAULT '0',
  `drugweed` int(10) DEFAULT '0',
  `drugcocaine` int(10) DEFAULT '0',
  `drugmeth` int(10) DEFAULT '0',
  `armsmaterials` int(10) DEFAULT '0',
  `armsprice_1` int(10) DEFAULT '0',
  `armsprice_2` int(10) DEFAULT '0',
  `armsprice_3` int(10) DEFAULT '0',
  `armsprice_4` int(10) DEFAULT '0',
  `armsprice_5` int(10) DEFAULT '0',
  `armsprice_6` int(10) DEFAULT '0',
  `armsprice_7` int(10) DEFAULT '0',
  `armsprice_8` int(10) DEFAULT '0',
  `weed_price` int(10) DEFAULT '0',
  `cocaine_price` int(10) DEFAULT '0',
  `meth_price` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE IF NOT EXISTS `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE IF NOT EXISTS `garages` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int(10) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `rentprice` int(10) DEFAULT '0',
  `level` tinyint(2) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` int(10) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` tinyint(2) DEFAULT '0',
  `ammo_7` tinyint(2) DEFAULT '0',
  `ammo_8` tinyint(2) DEFAULT '0',
  `ammo_9` tinyint(2) DEFAULT '0',
  `ammo_10` tinyint(2) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE IF NOT EXISTS `kills` (
`id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE IF NOT EXISTS `landobjects` (
`id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0',
  `move_x` float DEFAULT '0',
  `move_y` float DEFAULT '0',
  `move_z` float DEFAULT '0',
  `move_rx` float DEFAULT '0',
  `move_ry` float DEFAULT '0',
  `move_rz` float DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE IF NOT EXISTS `lands` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT '0',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE IF NOT EXISTS `log_admin` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE IF NOT EXISTS `log_bans` (
`id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE IF NOT EXISTS `log_cheat` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE IF NOT EXISTS `log_contracts` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE IF NOT EXISTS `log_faction` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE IF NOT EXISTS `log_gang` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE IF NOT EXISTS `log_give` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE IF NOT EXISTS `log_namechanges` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE IF NOT EXISTS `log_property` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE IF NOT EXISTS `log_punishments` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE IF NOT EXISTS `log_referrals` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE IF NOT EXISTS `log_vip` (
`id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE IF NOT EXISTS `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `profits` int(10) DEFAULT '0',
  `time` tinyint(2) DEFAULT '24',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint(2) DEFAULT '0',
  `pointworld` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE IF NOT EXISTS `shots` (
`id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
`id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE IF NOT EXISTS `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `time` tinyint(2) DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint(3) DEFAULT '18',
  `skin` smallint(3) DEFAULT '299',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '5000',
  `bank` int(10) DEFAULT '10000',
  `paycheck` int(10) DEFAULT '0',
  `level` int(10) DEFAULT '1',
  `exp` int(10) DEFAULT '0',
  `minutes` tinyint(2) DEFAULT '0',
  `hours` int(10) DEFAULT '0',
  `adminlevel` int(10) DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `upgradepoints` int(10) DEFAULT '0',
  `warnings` tinyint(3) DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int(10) DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint(2) DEFAULT '0',
  `reportwarns` tinyint(2) DEFAULT '0',
  `fightstyle` tinyint(2) DEFAULT '4',
  `locked` tinyint(1) DEFAULT '0',
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT '0',
  `phone` int(10) DEFAULT '0',
  `job` int(10) DEFAULT '-1',
  `secondjob` tinyint(2) DEFAULT '-1',
  `crimes` int(10) DEFAULT '0',
  `arrested` int(10) DEFAULT '0',
  `wantedlevel` tinyint(2) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `seeds` int(10) DEFAULT '0',
  `ephedrine` int(10) DEFAULT '0',
  `muriaticacid` int(10) DEFAULT '0',
  `bakingsoda` int(10) DEFAULT '0',
  `cigars` int(10) DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int(10) DEFAULT '0',
  `rentinghouse` int(10) DEFAULT '0',
  `spraycans` int(10) DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int(10) DEFAULT '0',
  `fishweight` int(10) DEFAULT '0',
  `components` int(10) DEFAULT '0',
  `courierskill` int(10) DEFAULT '0',
  `fishingskill` int(10) DEFAULT '0',
  `guardskill` int(10) DEFAULT '0',
  `weaponskill` int(10) DEFAULT '0',
  `mechanicskill` int(10) DEFAULT '0',
  `lawyerskill` int(10) DEFAULT '0',
  `smugglerskill` int(10) DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '1',
  `togglecam` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint(2) DEFAULT '0',
  `viptime` int(10) DEFAULT '0',
  `vipcooldown` int(10) DEFAULT '0',
  `weapon_0` tinyint(2) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `weapon_11` tinyint(2) DEFAULT '0',
  `weapon_12` tinyint(2) DEFAULT '0',
  `ammo_0` smallint(5) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` smallint(5) DEFAULT '0',
  `ammo_7` smallint(5) DEFAULT '0',
  `ammo_8` smallint(5) DEFAULT '0',
  `ammo_9` smallint(5) DEFAULT '0',
  `ammo_10` smallint(5) DEFAULT '0',
  `ammo_11` smallint(5) DEFAULT '0',
  `ammo_12` smallint(5) DEFAULT '0',
  `faction` tinyint(2) DEFAULT '-1',
  `gang` tinyint(2) DEFAULT '-1',
  `factionrank` tinyint(2) DEFAULT '0',
  `gangrank` tinyint(2) DEFAULT '0',
  `division` tinyint(2) DEFAULT '-1',
  `contracted` int(10) DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT '0',
  `completedhits` int(10) DEFAULT '0',
  `failedhits` int(10) DEFAULT '0',
  `reports` int(10) DEFAULT '0',
  `helprequests` int(10) DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `weedplanted` tinyint(1) DEFAULT '0',
  `weedtime` int(10) DEFAULT '0',
  `weedgrams` int(10) DEFAULT '0',
  `weed_x` float DEFAULT '0',
  `weed_y` float DEFAULT '0',
  `weed_z` float DEFAULT '0',
  `weed_a` float DEFAULT '0',
  `inventoryupgrade` int(10) DEFAULT '0',
  `addictupgrade` int(10) DEFAULT '0',
  `traderupgrade` int(10) DEFAULT '0',
  `assetupgrade` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `ammotype` tinyint(2) DEFAULT '0',
  `ammoweapon` tinyint(2) DEFAULT '0',
  `dmwarnings` tinyint(2) DEFAULT '0',
  `weaponrestricted` int(10) DEFAULT '0',
  `referral_uid` int(10) DEFAULT '0',
  `refercount` int(10) DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint(3) DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int(10) DEFAULT '0',
  `couriercooldown` int(10) DEFAULT '0',
  `pizzacooldown` int(10) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `tickets` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT '100',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint(3) DEFAULT '0',
  `color2` smallint(3) DEFAULT '0',
  `paintjob` tinyint(2) DEFAULT '-1',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `neon` smallint(5) DEFAULT '0',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `mod_1` smallint(4) DEFAULT '0',
  `mod_2` smallint(4) DEFAULT '0',
  `mod_3` smallint(4) DEFAULT '0',
  `mod_4` smallint(4) DEFAULT '0',
  `mod_5` smallint(4) DEFAULT '0',
  `mod_6` smallint(4) DEFAULT '0',
  `mod_7` smallint(4) DEFAULT '0',
  `mod_8` smallint(4) DEFAULT '0',
  `mod_9` smallint(4) DEFAULT '0',
  `mod_10` smallint(4) DEFAULT '0',
  `mod_11` smallint(4) DEFAULT '0',
  `mod_12` smallint(4) DEFAULT '0',
  `mod_13` smallint(4) DEFAULT '0',
  `mod_14` smallint(4) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `gangid` tinyint(2) DEFAULT '-1',
  `factiontype` tinyint(2) DEFAULT '0',
  `job` tinyint(2) DEFAULT '-1',
  `respawndelay` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
 ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
 ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
 ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
 ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
 ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
 ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
 ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
 ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
 ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=911;
--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=678;
--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=969;
--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=629;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
