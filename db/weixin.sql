/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost
 Source Database       : weixin

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : utf-8

 Date: 03/16/2017 13:53:03 PM
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
  `sort` int(11) DEFAULT NULL COMMENT '排序',
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
INSERT INTO `sys_menu` VALUES ('0', null, null, '上海赤懿资本尽职调查企业数据库', null, null, null, null, '', '1', '0', null, null, null, null, null), ('12', '0', null, '功能菜单', null, null, null, null, null, '1', '0', null, null, null, null, null), ('2', '12', null, '系统管理', null, null, null, null, '1', '1', '0', null, null, null, null, null), ('3', '2', null, '角色管理', '/role/index', null, null, null, '1', '1', '0', null, null, null, null, null), ('4', '2', null, '菜单管理', '/menu/index', null, null, null, '1', '2', '0', null, null, null, null, null), ('5', '12', null, '企业信息管理', null, null, null, null, '1', '2', '0', null, null, null, null, null), ('6', '5', null, '企业信息列表', null, null, null, null, '1', '1', '0', null, null, null, null, null);
COMMIT;

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
--  Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(32) NOT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('admin', 'admin', null, null, null, '123456', null);
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

SET FOREIGN_KEY_CHECKS = 1;
