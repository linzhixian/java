/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : parkour

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2014-11-17 10:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chapter_bestscore`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_bestscore`;
CREATE TABLE `chapter_bestscore` (
  `chapterid` tinyint(4) NOT NULL COMMENT '场景',
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL COMMENT '最好成绩',
  `distance` int(11) NOT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chapterid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场景最好成绩表';

-- ----------------------------
-- Records of chapter_bestscore
-- ----------------------------
INSERT INTO `chapter_bestscore` VALUES ('1', '45', '15', '150', '2014-11-06 17:20:23');

-- ----------------------------
-- Table structure for `user_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `user_achievement`;
CREATE TABLE `user_achievement` (
  `uid` int(11) NOT NULL,
  `id` smallint(6) NOT NULL COMMENT '0不可领，1可领，2已领',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0不可领，1可领，2已领',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `user_friend`
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `uid` int(11) NOT NULL,
  `fuid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`fuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='好友表';

-- ----------------------------
-- Records of user_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `rolename` varchar(30) DEFAULT NULL COMMENT '用户角色名',
  `isforbidden` int(1) NOT NULL DEFAULT '0',
  `md5key` char(10) NOT NULL DEFAULT 'abc',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`isforbidden`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('45', 'HKGuiT2V', '221258', 'newRolename', '0', 'abc', '2014-11-06 17:18:52', '2014-11-06 18:09:25');
INSERT INTO `user_info` VALUES ('46', 'GLKUV0ex', '749378', null, '0', 'abc', '2014-11-06 17:55:01', '2014-11-06 17:55:01');
INSERT INTO `user_info` VALUES ('47', 'NTh5B7Ph', '533269', null, '0', 'abc', '2014-11-06 17:57:45', '2014-11-06 17:57:45');
INSERT INTO `user_info` VALUES ('48', 'PaoVtVG8', '883303', null, '0', 'abc', '2014-11-06 17:58:17', '2014-11-06 17:58:17');
INSERT INTO `user_info` VALUES ('49', 'onOCde6y', '500577', null, '0', 'abc', '2014-11-06 17:58:27', '2014-11-06 17:58:27');
INSERT INTO `user_info` VALUES ('50', 'no7m66pl', '571514', null, '0', 'abc', '2014-11-06 17:58:35', '2014-11-06 17:58:35');
INSERT INTO `user_info` VALUES ('51', 'c5JLIT31', '747848', null, '0', 'abc', '2014-11-06 17:59:01', '2014-11-06 17:59:01');
INSERT INTO `user_info` VALUES ('52', '6d5c96uu', '387788', null, '0', 'abc', '2014-11-06 18:08:06', '2014-11-06 18:08:06');
INSERT INTO `user_info` VALUES ('53', 'nIWqzFXc', '507573', null, '0', 'abc', '2014-11-06 18:08:06', '2014-11-06 18:08:06');
INSERT INTO `user_info` VALUES ('54', 'dMpklm5H', '441461', null, '0', 'abc', '2014-11-06 18:09:24', '2014-11-06 18:09:24');
INSERT INTO `user_info` VALUES ('55', 'y78uJjfM', '512514', null, '0', 'abc', '2014-11-06 18:09:24', '2014-11-06 18:09:24');
INSERT INTO `user_info` VALUES ('56', 'GwKg81XJ', '570719', null, '0', 'abc', '2014-11-10 17:26:14', '2014-11-10 17:26:14');
INSERT INTO `user_info` VALUES ('57', 'bQPis1ZQ', '199025', null, '0', 'abc', '2014-11-10 17:49:18', '2014-11-10 17:49:18');
INSERT INTO `user_info` VALUES ('58', 'ONQuq5dp', '725290', null, '0', 'abc', '2014-11-10 17:52:03', '2014-11-10 17:52:03');
INSERT INTO `user_info` VALUES ('59', 'WohGrrwv', '968953', null, '0', 'abc', '2014-11-10 17:54:39', '2014-11-10 17:54:39');

-- ----------------------------
-- Table structure for `user_lastlogintime`
-- ----------------------------
DROP TABLE IF EXISTS `user_lastlogintime`;
CREATE TABLE `user_lastlogintime` (
  `uid` int(11) NOT NULL,
  `lastlogintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logincount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_lastlogintime
-- ----------------------------
INSERT INTO `user_lastlogintime` VALUES ('45', '2014-11-06 17:18:52', '0');
INSERT INTO `user_lastlogintime` VALUES ('46', '2014-11-06 17:55:01', '0');
INSERT INTO `user_lastlogintime` VALUES ('47', '2014-11-06 17:57:46', '0');
INSERT INTO `user_lastlogintime` VALUES ('48', '2014-11-06 17:58:17', '0');
INSERT INTO `user_lastlogintime` VALUES ('49', '2014-11-06 17:58:27', '0');
INSERT INTO `user_lastlogintime` VALUES ('50', '2014-11-06 17:58:36', '0');
INSERT INTO `user_lastlogintime` VALUES ('51', '2014-11-06 17:59:01', '0');
INSERT INTO `user_lastlogintime` VALUES ('52', '2014-11-06 18:08:06', '0');
INSERT INTO `user_lastlogintime` VALUES ('53', '2014-11-06 18:08:06', '0');
INSERT INTO `user_lastlogintime` VALUES ('54', '2014-11-06 18:09:24', '0');
INSERT INTO `user_lastlogintime` VALUES ('55', '2014-11-06 18:09:24', '0');
INSERT INTO `user_lastlogintime` VALUES ('56', '2014-11-10 17:26:15', '0');
INSERT INTO `user_lastlogintime` VALUES ('57', '2014-11-10 17:49:18', '0');
INSERT INTO `user_lastlogintime` VALUES ('58', '2014-11-10 17:52:04', '0');
INSERT INTO `user_lastlogintime` VALUES ('59', '2014-11-10 17:54:39', '0');

-- ----------------------------
-- Table structure for `user_pet`
-- ----------------------------
DROP TABLE IF EXISTS `user_pet`;
CREATE TABLE `user_pet` (
  `uid` int(11) NOT NULL,
  `id` smallint(6) NOT NULL COMMENT '宠物id',
  `level` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`,`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pet
-- ----------------------------

-- ----------------------------
-- Table structure for `user_piece`
-- ----------------------------
DROP TABLE IF EXISTS `user_piece`;
CREATE TABLE `user_piece` (
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT '场景id',
  `piece` int(11) NOT NULL COMMENT '碎片',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户碎片表 和场景id绑定';

-- ----------------------------
-- Records of user_piece
-- ----------------------------

-- ----------------------------
-- Table structure for `user_prop`
-- ----------------------------
DROP TABLE IF EXISTS `user_prop`;
CREATE TABLE `user_prop` (
  `uid` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT '道具id',
  `num` smallint(6) NOT NULL DEFAULT '0' COMMENT '道具数量',
  PRIMARY KEY (`uid`,`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户道具表';

-- ----------------------------
-- Records of user_prop
-- ----------------------------

-- ----------------------------
-- Table structure for `user_setting`
-- ----------------------------
DROP TABLE IF EXISTS `user_setting`;
CREATE TABLE `user_setting` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `sound` tinyint(1) NOT NULL DEFAULT '1',
  `music` tinyint(1) NOT NULL DEFAULT '1',
  `canbefriend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可以被人添加为好友',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `user_tech`
-- ----------------------------
DROP TABLE IF EXISTS `user_tech`;
CREATE TABLE `user_tech` (
  `uid` int(11) NOT NULL,
  `id` tinyint(4) NOT NULL COMMENT '科技id',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tech
-- ----------------------------

-- ----------------------------
-- Table structure for `user_vary`
-- ----------------------------
DROP TABLE IF EXISTS `user_vary`;
CREATE TABLE `user_vary` (
  `uid` int(11) NOT NULL,
  `exp` int(11) NOT NULL DEFAULT '0',
  `age` smallint(6) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `diamond` int(11) NOT NULL DEFAULT '0' COMMENT '钻石',
  `strength` int(11) NOT NULL DEFAULT '0' COMMENT '体力',
  `honour` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉',
  `bone` int(11) NOT NULL DEFAULT '0' COMMENT '骨头',
  `runcount` int(11) NOT NULL DEFAULT '0' COMMENT '跑酷次数',
  `challengecount` int(11) NOT NULL DEFAULT '0' COMMENT '挑战次数',
  `totalgetgold` int(11) NOT NULL DEFAULT '0' COMMENT '收集金币总数',
  `bosscount` int(11) NOT NULL DEFAULT '0' COMMENT '完成boss次数',
  `lastupdatestrengthtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上次更新体力时间，每隔10分钟增加一个',
  `lastupdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`honour`),
  KEY `honour_index` (`honour`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户改变属性表';

-- ----------------------------
-- Records of user_vary
-- ----------------------------
INSERT INTO `user_vary` VALUES ('45', '50', '0', '200', '0', '0', '30', '0', '0', '0', '0', '0', '2014-11-06 17:18:52', '2014-11-06 17:55:37');
INSERT INTO `user_vary` VALUES ('46', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:55:01', '2014-11-06 17:55:01');
INSERT INTO `user_vary` VALUES ('47', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:57:45', '2014-11-06 17:57:45');
INSERT INTO `user_vary` VALUES ('48', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:58:17', '2014-11-06 17:58:17');
INSERT INTO `user_vary` VALUES ('49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:58:27', '2014-11-06 17:58:27');
INSERT INTO `user_vary` VALUES ('50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:58:35', '2014-11-06 17:58:35');
INSERT INTO `user_vary` VALUES ('51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 17:59:01', '2014-11-06 17:59:01');
INSERT INTO `user_vary` VALUES ('52', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 18:08:06', '2014-11-06 18:08:06');
INSERT INTO `user_vary` VALUES ('53', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 18:08:06', '2014-11-06 18:08:06');
INSERT INTO `user_vary` VALUES ('54', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 18:09:24', '2014-11-06 18:09:24');
INSERT INTO `user_vary` VALUES ('55', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-06 18:09:24', '2014-11-06 18:09:24');
INSERT INTO `user_vary` VALUES ('56', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-10 17:26:15', '2014-11-10 17:26:15');
INSERT INTO `user_vary` VALUES ('57', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-10 17:49:18', '2014-11-10 17:49:18');
INSERT INTO `user_vary` VALUES ('58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-10 17:52:03', '2014-11-10 17:52:03');
INSERT INTO `user_vary` VALUES ('59', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2014-11-10 17:54:39', '2014-11-10 17:54:39');
