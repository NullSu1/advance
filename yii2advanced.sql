-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2020-09-28 15:35:56
-- 服务器版本： 8.0.18
-- PHP 版本： 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `yii2advanced`
--

DELIMITER $$
--
-- 存储过程
--
DROP PROCEDURE IF EXISTS `proc_batch_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_batch_insert` ()  BEGIN
DECLARE pre_name BIGINT;
DECLARE ageVal INT;
DECLARE i INT;
SET pre_name=187635267;
SET ageVal=100;
SET i=1;
WHILE i < 10000 DO
		INSERT INTO t_user(`name`,age,create_time,update_time) VALUES(CONCAT(pre_name,'@qq.com'),(ageVal+1)%30,NOW(),NOW());
SET pre_name=pre_name+100;
SET i=i+1;
END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1601278413);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1600681187, 1600681187),
('/admin/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/default/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/default/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/create', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/update', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/menu/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/create', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/update', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/permission/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/assign', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/create', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/delete', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/remove', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/update', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/role/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/assign', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/create', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/route/remove', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/create', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/update', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/rule/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/activate', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/delete', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/login', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/logout', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/signup', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/admin/user/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/default/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/user/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/action', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/diff', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/preview', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/gii/default/view', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/site/*', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/site/error', 2, NULL, NULL, NULL, 1600676869, 1600676869),
('/site/index', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/site/login', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('/site/logout', 2, NULL, NULL, NULL, 1600681184, 1600681184),
('admin', 2, NULL, NULL, NULL, 1601278327, 1601278327),
('editor', 2, NULL, NULL, NULL, 1601277465, 1601277465);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/debug/*'),
('editor', '/debug/*'),
('admin', '/debug/default/*'),
('editor', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('editor', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('editor', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('editor', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('editor', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('editor', '/debug/default/view'),
('admin', '/debug/user/*'),
('editor', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('editor', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('editor', '/debug/user/set-identity'),
('admin', '/gii/*'),
('editor', '/gii/*'),
('admin', '/gii/default/*'),
('editor', '/gii/default/*'),
('admin', '/gii/default/action'),
('editor', '/gii/default/action'),
('admin', '/gii/default/diff'),
('editor', '/gii/default/diff'),
('admin', '/gii/default/index'),
('editor', '/gii/default/index'),
('admin', '/gii/default/preview'),
('editor', '/gii/default/preview'),
('admin', '/gii/default/view'),
('editor', '/gii/default/view'),
('admin', '/site/*'),
('editor', '/site/*'),
('admin', '/site/error'),
('editor', '/site/error'),
('admin', '/site/index'),
('editor', '/site/index'),
('admin', '/site/login'),
('editor', '/site/login'),
('admin', '/site/logout'),
('editor', '/site/logout');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(2, 'user', NULL, '/admin/user', NULL, NULL),
(4, 'assignment', NULL, '/admin/assignment', NULL, NULL),
(5, 'menu', NULL, '/admin/menu', NULL, NULL),
(6, 'permission', NULL, '/admin/permission', NULL, NULL),
(7, 'role', NULL, '/admin/role/index', NULL, NULL),
(8, 'route', NULL, '/admin/route/index', NULL, NULL),
(9, 'rule', NULL, '/admin/rule/index', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Dzg0Y2Bep0CT7IuEsrCbD63LuBB40GYQ', '$2y$13$4spBD3igPvQv8ZhdS/zcfO4xtahcziHo9oERogreZSnsHH9282/Dy', NULL, 'admin@gmail.com', 10, 10, 1600668503, 1600668503),
(2, 'demo', 'VqAXLqW_ljN4nE2H3SZRcxvEYb3E9Re3', '$2y$13$niUfuoPi4JjqNJTrtTbhtOUDF.mbdoPu.FfI8Beiui4mNwwO0Qmfu', NULL, 'the.nullsu@gamil.com', 10, 10, 1600668772, 1600668772),
(3, 'kkk', 'Uu3iJiNN0REjdgWeICu26JpTg6AUX51R', '$2y$13$6sGTgmU1ILgQYpr8rGqNXeaRjxNsguy1y8xckzbuNWhkj2kMMRQ7m', NULL, 'kkk@kk.com', 10, 10, 1600669098, 1600669098),
(4, 'ert', 'sqbOVGObmPZtZX049JIxSAt2TVk8hm61', '$2y$13$fYrS1pjSid8/VJIngWnoF.hrH9a/FSGdmtRcUChGngLBFHFPA4Sk2', NULL, 'ert@ww.ccw', 10, 9, 1600673225, 1600673225),
(5, 'test', '5aAZFVoAosGJCmvQaadabX81vLGLOtB8', '$2y$13$88jG923ufD.rBGAMxi0vDe8lGyzIL1WPV8nI0ZAjM9qk8nWocY2e.', NULL, 'test@gmail.com', 10, 9, 1600673289, 1600673289);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
