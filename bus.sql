/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:3306
 Source Schema         : bus

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 07/05/2023 17:47:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcements
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of announcements
-- ----------------------------
BEGIN;
INSERT INTO `announcements` (`id`, `title`, `message`, `created_at`, `updated_at`) VALUES (1, 'sasa', 'sasa', '2023-05-04 20:48:09', '2023-05-04 20:48:09');
COMMIT;

-- ----------------------------
-- Table structure for bus
-- ----------------------------
DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL,
  `buspath` longtext,
  `endDate` time DEFAULT NULL,
  `startDate` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of bus
-- ----------------------------
BEGIN;
INSERT INTO `bus` (`id`, `bname`, `buspath`, `endDate`, `startDate`) VALUES (13, '1', '&#28779;&#36710;&#31449;-&#20044;&#30707;&#26449;-&#19996;&#39118;&#26449;-&#24066;&#26519;&#19994;&#23616;-&#19977;&#26032;&#24037;&#19994;&#21306;-&#20041;&#20044;&#23567;&#21830;&#21697;&#22478;-&#24066;&#20132;&#36816;&#23616;-&#19977;&#26032;&#19968;&#26449;-&#30333;&#20113;&#26426;&#22330;&#20505;&#26426;&#27004;-&#21830;&#36152;&#26053;&#28216;&#23398;&#26657;-&#24066;&#31532;&#19968;&#20154;&#27665;&#21307;&#38498;-&#24066;&#31532;&#19968;&#20154;&#27665;&#21307;&#38498;-&#20113;&#23665;&#20013;&#38431;-&#19979;&#35282;&#24066;&#22330;-&#24066;&#20013;&#21307;&#21307;&#38498;-&#20016;&#23665;&#36335;&#21475;-&#40132;&#28246;&#36335;-&#28246;&#30036;&#26032;&#22478;-&#22478;&#21306;&#25919;&#24220;-&#32418;&#33457;&#28246;&#36335;&#21475;-&#40857;&#20016;&#36335;&#21475;-&#37329;&#27036;&#38567;&#36947;-&#19975;&#26519;&#28246;-&#19971;&#38646;&#19977;&#22320;&#36136;&#38431;-&#23454;&#39564;&#20013;&#23398;-&#19979;&#39532;&#24196;&#36335;&#21475;-&#25945;&#24072;&#26032;&#26449;-&#28207;&#24800;&#26032;&#22825;&#22320;&#35199;-&#28207;&#24800;&#26032;&#22825;&#22320;-&#27827;&#21335;&#23736;&#37038;&#25919;&#20998;&#23616;-&#19996;&#21326;&#21307;&#38498;-&#27827;&#21335;&#23736;&#27773;&#36710;&#31449;-&#20061;&#24800;&#21046;&#33647;&#21378;-&#32654;&#22320;&#33457;&#22253;&#22478;-&#20940;&#30000;&#23398;&#26657;-&#20912;&#22616;&#36335;&#21475;-&#21326;&#24247;&#21307;&#38498;-&#24800;&#24030;&#23398;&#38498;-&#23665;&#27700;&#21326;&#24220;-&#20919;&#27700;&#22353;-&#22235;&#29615;&#21335;&#36335;&#21475;-&#20307;&#32946;&#21335;&#36335;&#21475;-&#31119;&#38271;&#23725;-&#27827;&#26519;&#36335;&#21475;-&#40511;&#20016;&#20116;&#37329;&#21378;-&#27801;&#28595;&#36335;&#21475;-&#19978;&#27934;&#26449;-&#28436;&#36798;&#21307;&#38498;-&#19977;&#26635;&#24066;&#22330;-&#38518;&#21069;&#26449;-&#24800;&#21335;&#27773;&#36710;&#22478;-&#24066;&#21171;&#25945;&#25152;&#36335;&#21475;-&#22365;&#23665;&#26449;-&#22253;&#23725;&#26449;-&#40635;&#28330;&#36335;&#21475;-&#27704;&#28246;&#38215;&#21271;-&#35029;&#29983;&#21270;&#24037;&#21378;-&#27704;&#28246;&#36335;&#21475;-&#30333;&#36335;&#36335;&#21475;-&#30333;&#36335;&#21307;&#38498;-&#32852;&#24819;&#31185;&#25216;&#22253;-&#22826;&#38451;&#22478;&#24037;&#19994;&#21306;-&#33714;&#22616;&#38754;&#23567;&#23398;-&#22260;&#32922;&#26449;-&#23567;&#24067;&#23376;-&#25391;&#19994;&#20065;&#22661;-&#35937;&#23725;&#26449;-&#38081;&#38376;&#25159;-&#40644;&#31481;&#27813;-&#24800;&#38451;&#20303;&#24314;&#23616;-&#24800;&#38451;&#27773;&#36710;&#24635;&#31449;&#36335;&#21475;-&#20809;&#32768;&#22478;-&#21271;&#29615;&#36335;&#21475;-&#24800;&#38451;&#24033;&#35686;&#22823;&#38431;-&#21448;&#19968;&#26449;-&#24800;&#38451;&#21457;&#30005;&#21378;-&#31119;&#21033;&#36335;&#21475;-&#24800;&#38451;&#21306;&#25919;&#24220;-&#19975;&#32852;&#36141;&#29289;&#24191;&#22330;-&#26032;&#22478;&#24066;&#22330;-&#25215;&#20462;&#36335;&#21475;-&#20013;&#22825;&#24425;&#34425;&#22478;-&#22616;&#23614;&#26449;-&#35199;&#21306;&#21150;&#20107;&#22788;-&#35199;&#21306;&#20013;&#23398;-&#21326;&#21335;&#22269;&#38469;&#24314;&#26448;&#24066;&#22330;(&#24800;&#20016;&#22478;)-&#21709;&#27700;&#27827;&#24037;&#19994;&#21306;-&#22823;&#20122;&#28286;&#22320;&#36136;&#38431;-&#22320;&#20094;&#22823;&#21414;-&#22920;&#24217;&#23567;&#23398;-&#22823;&#20122;&#28286;&#20379;&#30005;&#23616;-&#20013;&#28023;&#37202;&#24215;-&#22823;&#28201;&#22365;&#24066;&#22330;-&#22823;&#20122;&#28286;&#20844;&#23433;&#23616;-&#28595;&#22836;&#28207;(&#22823;&#20122;&#28286;&#20551;&#26085;&#37202;&#24215;)', '10:00:00', '19:00:00');
COMMIT;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reply` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
BEGIN;
INSERT INTO `questions` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`, `reply`) VALUES (3, 3, 'ass&#21834;&#38463;&#33832;', '&#25746;&#39122;&#39122;', '2023-05-05 10:28:27', '2023-05-05 10:28:27', NULL);
COMMIT;

-- ----------------------------
-- Table structure for routes
-- ----------------------------
DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start_location` varchar(255) NOT NULL,
  `end_location` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `number` int DEFAULT NULL,
  `is_hot` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of routes
-- ----------------------------
BEGIN;
INSERT INTO `routes` (`id`, `name`, `start_location`, `end_location`, `start_time`, `end_time`, `created_at`, `updated_at`, `number`, `is_hot`) VALUES (1, 'sasa', 'sasa', '3333', '20:53:00', '20:54:00', '2023-05-04 20:48:31', '2023-05-04 20:48:31', 2, 1);
INSERT INTO `routes` (`id`, `name`, `start_location`, `end_location`, `start_time`, `end_time`, `created_at`, `updated_at`, `number`, `is_hot`) VALUES (2, 'bus', 'bus', 'bus', '16:35:00', '20:38:00', '2023-05-05 16:34:35', '2023-05-05 16:34:35', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for stations
-- ----------------------------
DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `sequence` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of stations
-- ----------------------------
BEGIN;
INSERT INTO `stations` (`id`, `route_id`, `name`, `sequence`, `created_at`, `updated_at`) VALUES (1, 1, 'saas', 1, '2023-05-04 21:39:37', '2023-05-04 21:39:37');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_manager` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `is_manager`) VALUES (1, 'v', 'a@163.com', '123456', '2023-05-04 20:37:22', '2023-05-04 20:37:22', 1);
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `is_manager`) VALUES (2, 'saas', 'v@163.com', '123456', '2023-05-04 20:48:48', '2023-05-04 20:48:48', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `is_manager`) VALUES (3, 'ttttttt', 'a@163.com', '123456', '2023-05-04 20:48:50', '2023-05-04 20:48:50', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
