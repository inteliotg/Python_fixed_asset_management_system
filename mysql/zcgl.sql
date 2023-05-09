/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : zcgl

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2021-11-12 13:51:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户操作日志', '6', 'add_useroperatelog');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户操作日志', '6', 'change_useroperatelog');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户操作日志', '6', 'delete_useroperatelog');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户操作日志', '6', 'view_useroperatelog');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 资产表', '8', 'add_server');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 资产表', '8', 'change_server');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 资产表', '8', 'delete_server');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 资产表', '8', 'view_server');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 资产历史表', '9', 'add_serverhis');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 资产历史表', '9', 'change_serverhis');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 资产历史表', '9', 'delete_serverhis');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 资产历史表', '9', 'view_serverhis');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 资产类型表', '10', 'add_servertype');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 资产类型表', '10', 'change_servertype');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 资产类型表', '10', 'delete_servertype');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 资产类型表', '10', 'view_servertype');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'servers', 'server');
INSERT INTO `django_content_type` VALUES ('9', 'servers', 'serverhis');
INSERT INTO `django_content_type` VALUES ('10', 'servers', 'servertype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'useroperatelog');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2021-11-08 02:10:20.197086');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2021-11-08 02:10:20.350676');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2021-11-08 02:10:20.465368');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2021-11-08 02:10:20.771549');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2021-11-08 02:10:20.779528');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2021-11-08 02:10:20.791532');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2021-11-08 02:10:20.800472');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2021-11-08 02:10:20.803464');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2021-11-08 02:10:20.811475');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2021-11-08 02:10:20.819421');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2021-11-08 02:10:20.829420');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2021-11-08 02:10:20.896240');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2021-11-08 02:10:20.906190');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2021-11-08 02:10:21.062770');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2021-11-08 02:10:21.384941');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2021-11-08 02:10:21.517589');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2021-11-08 02:10:21.530553');
INSERT INTO `django_migrations` VALUES ('18', 'servers', '0001_initial', '2021-11-08 02:10:21.645211');
INSERT INTO `django_migrations` VALUES ('19', 'servers', '0002_auto_20190806_1620', '2021-11-08 02:10:21.702084');
INSERT INTO `django_migrations` VALUES ('20', 'sessions', '0001_initial', '2021-11-08 02:10:21.850662');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0002_auto_20190905_1708', '2021-11-08 02:10:22.012230');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0003_auto_20190905_1722', '2021-11-08 02:10:22.098000');
INSERT INTO `django_migrations` VALUES ('23', 'users', '0004_auto_20191123_0906', '2021-11-08 02:10:22.154848');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('df2cz2gb9x8838d3dyu6w4utztz060qv', 'MjQzYzVhNDNmNWVjMWQxODE2ZDEwNjViNGRjZjgzYzU2M2M1ZjgxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMDM5MDcxMGI4YmQ3Y2YyMTIwOWQ3ZjEzNmU5MzQ2OGEwYTcwMWZmIn0=', '2021-11-22 02:11:35.432089');

-- ----------------------------
-- Table structure for servers_server
-- ----------------------------
DROP TABLE IF EXISTS `servers_server`;
CREATE TABLE `servers_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(100) NOT NULL,
  `description` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `zcmodel` varchar(50) NOT NULL,
  `zcnumber` varchar(50) NOT NULL,
  `zcpz` varchar(100) NOT NULL,
  `undernet` varchar(10) NOT NULL,
  `guartime` varchar(50) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `modify_time` datetime(6) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `zctype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servers_server_owner_id_f482a695_fk_users_userprofile_id` (`owner_id`),
  KEY `servers_server_zctype_id_83f49591_fk_servers_servertype_id` (`zctype_id`),
  CONSTRAINT `servers_server_owner_id_f482a695_fk_users_userprofile_id` FOREIGN KEY (`owner_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `servers_server_zctype_id_83f49591_fk_servers_servertype_id` FOREIGN KEY (`zctype_id`) REFERENCES `servers_servertype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers_server
-- ----------------------------
INSERT INTO `servers_server` VALUES ('1', '', '', '戴尔', '', '', '', '办公', '', '', '2021-11-08 02:17:19.198149', '2', '3');
INSERT INTO `servers_server` VALUES ('2', '', '', '', '', '', '', '生产', '', '', '2021-11-08 02:17:45.072683', '2', '3');
INSERT INTO `servers_server` VALUES ('3', '', '', '', '', '', '', '办公', '', '', '2021-11-08 02:18:00.969906', '2', '1');
INSERT INTO `servers_server` VALUES ('4', '', '', '', '', '', '', '办公', '', '', '2021-11-08 02:18:15.528450', '2', '1');
INSERT INTO `servers_server` VALUES ('7', '', '', '', '', '', '', '办公', '', '', '2021-11-08 17:33:26.199564', '2', '5');

-- ----------------------------
-- Table structure for servers_serverhis
-- ----------------------------
DROP TABLE IF EXISTS `servers_serverhis`;
CREATE TABLE `servers_serverhis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serverid` int(11) NOT NULL,
  `zctype` varchar(20) NOT NULL,
  `ipaddress` varchar(100) NOT NULL,
  `description` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `zcmodel` varchar(50) NOT NULL,
  `zcnumber` varchar(50) NOT NULL,
  `zcpz` varchar(100) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `undernet` varchar(10) NOT NULL,
  `guartime` varchar(50) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `modify_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers_serverhis
-- ----------------------------
INSERT INTO `servers_serverhis` VALUES ('1', '1', '台式机', '', '', '戴尔', '', '', '', 'cat', '办公', '', '', '2021-11-08 02:17:19.201141');
INSERT INTO `servers_serverhis` VALUES ('2', '2', '台式机', '', '', '', '', '', '', 'cat', '生产', '', '', '2021-11-08 02:17:45.075675');
INSERT INTO `servers_serverhis` VALUES ('3', '3', '鼠标', '', '', '', '', '', '', 'cat', '办公', '', '', '2021-11-08 02:18:00.972922');
INSERT INTO `servers_serverhis` VALUES ('4', '4', '鼠标', '', '', '', '', '', '', 'cat', '办公', '', '', '2021-11-08 02:18:15.531441');
INSERT INTO `servers_serverhis` VALUES ('5', '5', '台式机', '', '', '', '', '', '', 'rabbit', '办公', '', '', '2021-11-08 17:14:40.378165');
INSERT INTO `servers_serverhis` VALUES ('6', '5', '台式机', '', '', '', '', '', '', 'rabbit', '办公', '', '', '2021-11-08 17:18:48.087136');
INSERT INTO `servers_serverhis` VALUES ('7', '5', '台式机', '', '', '', '', '', '', 'rabbit', '办公', '', '该记录被删除', '2021-11-08 17:19:14.513630');
INSERT INTO `servers_serverhis` VALUES ('8', '6', '显示屏', '', '', '', '', '', '', 'rabbit', '生产', '', '', '2021-11-08 17:20:37.703459');
INSERT INTO `servers_serverhis` VALUES ('9', '6', '显示屏', '', '', '', '', '', '', 'rabbit', '生产', '', '该记录被删除', '2021-11-08 17:20:46.065048');
INSERT INTO `servers_serverhis` VALUES ('10', '7', 'U盘', '', '', '', '', '', '', 'cat', '办公', '', '', '2021-11-08 17:33:26.203521');

-- ----------------------------
-- Table structure for servers_servertype
-- ----------------------------
DROP TABLE IF EXISTS `servers_servertype`;
CREATE TABLE `servers_servertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zctype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers_servertype
-- ----------------------------
INSERT INTO `servers_servertype` VALUES ('1', '鼠标');
INSERT INTO `servers_servertype` VALUES ('2', '显示屏');
INSERT INTO `servers_servertype` VALUES ('3', '台式机');
INSERT INTO `servers_servertype` VALUES ('4', '鼠标垫');
INSERT INTO `servers_servertype` VALUES ('5', 'U盘');

-- ----------------------------
-- Table structure for users_useroperatelog
-- ----------------------------
DROP TABLE IF EXISTS `users_useroperatelog`;
CREATE TABLE `users_useroperatelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `scope` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` int(11) NOT NULL,
  `modify_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_useroperatelog
-- ----------------------------
INSERT INTO `users_useroperatelog` VALUES ('1', 'admin', '台式机', '增加', '1', '2021-11-08 02:17:19.209154');
INSERT INTO `users_useroperatelog` VALUES ('2', 'admin', '台式机', '增加', '2', '2021-11-08 02:17:45.077672');
INSERT INTO `users_useroperatelog` VALUES ('3', 'admin', '鼠标', '增加', '3', '2021-11-08 02:18:00.975889');
INSERT INTO `users_useroperatelog` VALUES ('4', 'admin', '鼠标', '增加', '4', '2021-11-08 02:18:15.534434');
INSERT INTO `users_useroperatelog` VALUES ('5', 'admin', '台式机', '增加', '5', '2021-11-08 17:14:40.385148');
INSERT INTO `users_useroperatelog` VALUES ('6', 'admin', '台式机', '修改', '5', '2021-11-08 17:18:48.093120');
INSERT INTO `users_useroperatelog` VALUES ('7', 'admin', '台式机', '删除', '5', '2021-11-08 17:19:14.522618');
INSERT INTO `users_useroperatelog` VALUES ('8', 'admin', '显示屏', '增加', '6', '2021-11-08 17:20:37.706450');
INSERT INTO `users_useroperatelog` VALUES ('9', 'admin', '显示屏', '删除', '6', '2021-11-08 17:20:46.075028');
INSERT INTO `users_useroperatelog` VALUES ('10', 'admin', 'U盘', '增加', '7', '2021-11-08 17:33:26.206513');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `department` varchar(15) NOT NULL,
  `isadmin` varchar(10) NOT NULL,
  `bg_telephone` varchar(12) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `is_superuser` int(11) NOT NULL,
  `modify_time` datetime(6) NOT NULL,
  `staff_no` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$WY3qxA3a7ldL$HOFY+9sVOFVslSArUq+ku+0T7ZJKYcFzJmcCTAzUSrI=', '2021-11-08 02:11:35.426073', 'admin', '', '', '', 'True', '1', '2021-11-08 02:10:54.191939', '', '0', '', '', '1', '2021-11-08 02:10:54.191939', '');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$150000$A7q22lfB8TfZ$W6WG1pnb3c6DS+tRxQ8hBhYxVLOgtzZ5bpY35txnIoI=', null, 'cat', '', '', '', '1', '1', '2021-11-08 02:14:01.193848', '办公室', '0', '', '', '0', '2021-11-08 02:14:01.193848', '001');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$150000$5mrzgHCrhpsa$MGUtkoLczKmB7oecnFwJtd4hMlqNPRPkw0wAohsVCCc=', null, 'rabbit', '', '', '', '1', '1', '2021-11-08 17:10:31.947489', '办公室', '1', '', '', '0', '2021-11-08 17:10:31.947489', '002');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
