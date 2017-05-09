/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost
 Source Database       : train

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : utf-8

 Date: 05/03/2017 12:23:09 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `eye_x_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `eye_x_role_menu`;
CREATE TABLE `eye_x_role_menu` (
  `id` char(32) NOT NULL COMMENT '主键',
  `role_id` char(32) DEFAULT NULL COMMENT '角色主键',
  `menu_id` char(32) DEFAULT NULL COMMENT '权限主键',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记0：正常 1：删除',
  `source_id` varchar(4) DEFAULT NULL COMMENT '来源代码',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `pid` varchar(32) DEFAULT NULL,
  `sys` varchar(16) DEFAULT NULL COMMENT '系统',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `href` varchar(64) DEFAULT NULL COMMENT '菜单链接',
  `target` varchar(64) DEFAULT NULL COMMENT '目标',
  `icon` varchar(64) DEFAULT NULL COMMENT '菜单图标',
  `permission` varchar(64) DEFAULT NULL COMMENT '权限标识',
  `display` varchar(2) DEFAULT NULL COMMENT '是否显示',
  `sort` int(11) NOT NULL COMMENT '排序',
  `del_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('017b42835e7245018f991fb8046c5aa5', 'c577237ee8814c05ab97633de75147bf', null, '课程查询', '#', '', '', '', '1', '1', '0', null, null, '2017-05-02 12:50:06', null, null), ('12', '0', null, '功能菜单', null, null, null, null, null, '1', '0', null, null, null, null, null), ('16be7850fa5d4fa09a4c7c38f1c900d6', '12', null, '评测管理', '#', '', '', '', '1', '4', '0', null, null, '2017-05-02 12:50:43', null, null), ('2', '12', null, '系统管理', null, null, null, null, '1', '1', '0', null, null, null, null, null), ('2ceab77bf80a437cbff8ef2d8b5cf7d0', '5', null, '1', '1', '', '', '1', '0', '1', '1', null, null, '2017-03-18 10:02:00', null, null), ('2f4df4bb89654bed850cfeecf6b08811', '6', null, '1', '', '', '', '', null, '1', '1', null, null, '2017-03-17 13:07:41', null, null), ('3', '2', null, '角色管理', '/role/index', null, null, null, '1', '1', '0', null, null, null, null, null), ('38dbcaf3e5404d509acdd005eeba3d7c', '6', null, '1', '', '', '', '', null, '1', '1', null, null, '2017-03-17 13:09:15', null, null), ('4', '2', null, '菜单管理', '/menu/index', null, null, null, '1', '2', '0', null, null, null, null, null), ('4689dff14ea94140ae12e8c6d3822d37', '12', null, '班级管理', '#', '', '', '', '1', '3', '0', null, null, '2017-05-02 12:50:23', null, null), ('47c1d826b61749a8b86844244a480276', '5', null, '配比原材料', '/rawmaterial/index', '', '', '', '1', '2', '1', null, null, '2017-03-17 21:31:56', null, null), ('5', '12', null, '产品管理', '#', '', '', '', '1', '2', '1', null, null, '2017-03-17 17:51:44', null, null), ('572d1488331c40dba2d8e7d123ed4c44', '5', null, '进货管理', '/productIn/index', '', '', '', '1', '3', '1', null, null, '2017-03-18 09:56:06', null, null), ('6', '5', null, '产品信息列表', '/product/index', '', '', '', '1', '1', '1', null, null, '2017-03-17 17:51:22', null, null), ('7202d1a0618e4aae9ecb4fa2ff0a7277', '2', null, '部门管理', '/sysOffice/index', '', '', '', '1', '4', '0', null, null, '2017-05-02 20:53:56', null, null), ('7aaf08ce601a480280c0328752a96c81', '12', null, '综合评估', '#', '', '', '', '1', '5', '0', null, null, '2017-05-02 12:51:00', null, null), ('82f7542430454b239df414050a220642', '5', null, '进货管理', '/productIn/index', '', '', '', '1', '3', '1', null, null, '2017-03-18 09:56:06', null, null), ('a88ffb9c37bf47bd9a937e2fa524a49c', '5', null, '配比原材料', '/rawmaterial/index', '', '', '', '1', '2', '1', null, null, '2017-03-17 21:31:56', null, null), ('b1fb00cdb3ca4ade82123bbb18e40cd3', '2', null, '用户管理', '/user/index', '', '', '', '1', '3', '0', null, 'admin', '2017-03-19 13:08:08', null, null), ('b38748bc4ca7497db63ab29ed4a29c0b', '6', null, 'd', '1', '', '', '', null, '1', '1', null, null, '2017-03-17 13:33:32', null, null), ('c372276db7e647f9b7238b2bde59db48', '5', null, '产品配比公式', '/productFormula/index', '', '', '', '1', '4', '1', null, null, '2017-03-18 11:08:52', null, null), ('c577237ee8814c05ab97633de75147bf', '12', null, '课程管理', '#', '', '', '', '1', '2', '0', null, null, '2017-05-02 12:49:46', null, null), ('f7b424dfbcbd4eb9a5faa2e78ea4062a', '5', null, '1', '1', '2', '3', '1', '0', '1', '1', null, null, '2017-03-18 10:02:34', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机构表';

-- ----------------------------
--  Records of `sys_office`
-- ----------------------------
BEGIN;
INSERT INTO `sys_office` VALUES ('090a8c6a5fb54af2bf33b75e6909cce1', '1', '测试机构', '1', null, null, null, null, '2017-05-02 21:43:21', null, '0'), ('1', '0', ' 公司名称', '1', '0000', '123', '2017-05-02 20:55:36', '213', '2017-05-02 20:55:50', null, '0'), ('f52cf853e7334f1fb46092b018fe2cec', '1', 'asd', '1', null, null, null, null, '2017-05-02 21:39:21', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-机构';

-- ----------------------------
--  Table structure for `sys_x_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_x_dict`;
CREATE TABLE `sys_x_dict` (
  `id` varchar(5) NOT NULL COMMENT '类型id',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT '标准代码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `pinyin` varchar(50) DEFAULT NULL COMMENT '拼音',
  `pcode` varchar(3) DEFAULT NULL COMMENT '上级代码',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记0：正常 1：删除',
  `source_id` varchar(32) DEFAULT NULL COMMENT '来源代码',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
--  Records of `sys_x_dict`
-- ----------------------------
BEGIN;
INSERT INTO `sys_x_dict` VALUES ('00001', '1', '配比系统', null, null, '0', null, null, null, null, null), ('00002', '1', '男', null, null, '0', null, null, null, null, null), ('00002', '2', '女', null, null, '0', null, null, null, null, null), ('00004', '1', '是', null, null, '0', '通用条件判断', null, null, null, null), ('00004', '2', '否', null, null, '0', '通用条件判断', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(32) NOT NULL,
  `rolename` varchar(64) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES ('37408db105dd4d43a25e865d9c1d4664', '普通用户', '1', '0', null, null, '2017-03-19 17:33:22', null, null), ('6270d4974f754219a5907bfba76ce38e', '管理员', '1', '0', null, null, '2017-05-02 12:51:41', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `t_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `role_id` varchar(32) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_role_menu`
-- ----------------------------
BEGIN;
INSERT INTO `t_role_menu` VALUES ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('28d922e078d744529d05574fab14bba1', '12', '0'), ('28d922e078d744529d05574fab14bba1', '2', '0'), ('28d922e078d744529d05574fab14bba1', '3', '0'), ('28d922e078d744529d05574fab14bba1', '4', '0'), ('28d922e078d744529d05574fab14bba1', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('28d922e078d744529d05574fab14bba1', '5', '0'), ('28d922e078d744529d05574fab14bba1', '6', '0'), ('28d922e078d744529d05574fab14bba1', '47c1d826b61749a8b86844244a480276', '0'), ('28d922e078d744529d05574fab14bba1', '572d1488331c40dba2d8e7d123ed4c44', '0'), ('28d922e078d744529d05574fab14bba1', 'c372276db7e647f9b7238b2bde59db48', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'TRole.menus', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '5', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'c372276db7e647f9b7238b2bde59db48', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '5', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'c372276db7e647f9b7238b2bde59db48', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '0'), ('37408db105dd4d43a25e865d9c1d4664', '5', '0'), ('37408db105dd4d43a25e865d9c1d4664', '6', '0'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '0'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '0'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '0'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c577237ee8814c05ab97633de75147bf', '1'), ('6270d4974f754219a5907bfba76ce38e', '017b42835e7245018f991fb8046c5aa5', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c577237ee8814c05ab97633de75147bf', '1'), ('6270d4974f754219a5907bfba76ce38e', '017b42835e7245018f991fb8046c5aa5', '1'), ('6270d4974f754219a5907bfba76ce38e', '4689dff14ea94140ae12e8c6d3822d37', '1'), ('6270d4974f754219a5907bfba76ce38e', '16be7850fa5d4fa09a4c7c38f1c900d6', '1'), ('6270d4974f754219a5907bfba76ce38e', '7aaf08ce601a480280c0328752a96c81', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '0'), ('6270d4974f754219a5907bfba76ce38e', '2', '0'), ('6270d4974f754219a5907bfba76ce38e', '3', '0'), ('6270d4974f754219a5907bfba76ce38e', '4', '0'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('6270d4974f754219a5907bfba76ce38e', '7202d1a0618e4aae9ecb4fa2ff0a7277', '0'), ('6270d4974f754219a5907bfba76ce38e', 'c577237ee8814c05ab97633de75147bf', '0'), ('6270d4974f754219a5907bfba76ce38e', '017b42835e7245018f991fb8046c5aa5', '0'), ('6270d4974f754219a5907bfba76ce38e', '4689dff14ea94140ae12e8c6d3822d37', '0'), ('6270d4974f754219a5907bfba76ce38e', '16be7850fa5d4fa09a4c7c38f1c900d6', '0'), ('6270d4974f754219a5907bfba76ce38e', '7aaf08ce601a480280c0328752a96c81', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(32) NOT NULL,
  `usercode` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '管理员', null, '1', null, '0', null, null, null, null, null), ('48d944e998814da28c693bb4bbc94c23', 'jiejie', '202CB962AC59075B964B07152D234B70', 'jiejie', null, '2', null, '0', null, null, '2017-03-19 14:12:06', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` char(32) NOT NULL COMMENT '主键',
  `user_id` char(32) DEFAULT NULL COMMENT '人员主键',
  `role_id` char(32) DEFAULT NULL COMMENT '角色主键',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记0：正常 1：删除',
  `source_id` varchar(4) DEFAULT NULL COMMENT '来源代码',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员权限表';

-- ----------------------------
--  Records of `t_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_user_role` VALUES ('7d9eeaac1c3c40bc8acca94bdfbdff56', '48d944e998814da28c693bb4bbc94c23', '37408db105dd4d43a25e865d9c1d4664', '0', null, null, null, null, '2017-03-19 17:06:00'), ('cd375a90d6ee4d31acaf8857e5ef4400', '1', '6270d4974f754219a5907bfba76ce38e', '0', null, null, null, null, '2017-03-19 16:42:13');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
