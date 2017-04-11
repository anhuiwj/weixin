/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost
 Source Database       : student_health

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : utf-8

 Date: 04/11/2017 17:47:11 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `doctor_history`
-- ----------------------------
DROP TABLE IF EXISTS `doctor_history`;
CREATE TABLE `doctor_history` (
  `id` varchar(32) NOT NULL,
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `doctor_time` datetime NOT NULL COMMENT '就诊时间',
  `ill` varchar(32) DEFAULT NULL COMMENT '疾病',
  `treatment_plan` varchar(32) DEFAULT NULL COMMENT '治疗方案',
  `del_flag` varchar(2) DEFAULT NULL COMMENT '是的删除 0未删除 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='就诊情况';

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
--  Table structure for `physical_examination`
-- ----------------------------
DROP TABLE IF EXISTS `physical_examination`;
CREATE TABLE `physical_examination` (
  `id` varchar(32) NOT NULL,
  `check_date` datetime DEFAULT NULL COMMENT '检查日期',
  `uncorrected_visual_left` varchar(32) DEFAULT NULL COMMENT '裸眼视力 左',
  `uncorrected_visual_right` varchar(32) DEFAULT NULL COMMENT '裸眼视力 右',
  `color_vision_left` varchar(10) DEFAULT NULL COMMENT '色觉 左',
  `color_vision_right` varchar(10) DEFAULT NULL COMMENT '色觉 右',
  `hearing_left` varchar(10) DEFAULT NULL COMMENT '听觉 左',
  `hearing_right` varchar(10) DEFAULT NULL COMMENT '听觉 右',
  `ears_left` varchar(10) DEFAULT NULL COMMENT '耳疾 左',
  `ears_right` varchar(10) DEFAULT NULL COMMENT '耳疾 右',
  `smell` varchar(10) DEFAULT NULL COMMENT '嗅觉',
  `facial_region` varchar(10) DEFAULT NULL COMMENT '颜面部',
  `oral_cavity` varchar(10) DEFAULT NULL COMMENT '口腔',
  `the_throat` varchar(10) DEFAULT NULL COMMENT '咽喉',
  `height` double(3,2) DEFAULT NULL COMMENT '身高',
  `wright` varchar(4) DEFAULT NULL COMMENT '体重',
  `skin` varchar(32) DEFAULT NULL COMMENT '皮肤',
  `lymph` varchar(32) DEFAULT NULL COMMENT '淋巴',
  `spine` varchar(32) DEFAULT NULL COMMENT '脊柱',
  `limb` varchar(32) DEFAULT NULL COMMENT '四肢',
  `other` varchar(32) DEFAULT NULL COMMENT '其他',
  `systolic_pressure` varchar(32) DEFAULT NULL COMMENT '收缩压',
  `diastolic_pressure` varchar(32) DEFAULT NULL COMMENT '舒展压',
  `heart_rate` varchar(32) DEFAULT NULL COMMENT '心率（次/分）',
  `heart` varchar(32) DEFAULT NULL COMMENT '心',
  `lung` varchar(32) DEFAULT NULL COMMENT '肺',
  `liver` varchar(32) DEFAULT NULL COMMENT '肝',
  `spleen` varchar(32) DEFAULT NULL COMMENT '脾',
  `blood` varchar(32) DEFAULT NULL COMMENT '血',
  `urine` varchar(32) DEFAULT NULL COMMENT '尿',
  `liver_function` varchar(32) DEFAULT NULL COMMENT '肝功能',
  `renal_function` varchar(32) DEFAULT NULL COMMENT '肾功能',
  `chest_x_ray_examination` varchar(32) DEFAULT NULL COMMENT '胸透检查',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `del_flag` varchar(2) DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体检表';

-- ----------------------------
--  Table structure for `physical_fitness_test`
-- ----------------------------
DROP TABLE IF EXISTS `physical_fitness_test`;
CREATE TABLE `physical_fitness_test` (
  `id` varchar(32) NOT NULL,
  `student_id` varchar(32) DEFAULT NULL COMMENT '学生id',
  `vital_capacity` varchar(32) DEFAULT NULL COMMENT '肺活量',
  `run_fifty` varchar(32) DEFAULT NULL COMMENT '50m',
  `run_eight_hundred` varchar(32) DEFAULT NULL COMMENT '800m',
  `run_one_thousand` varchar(32) DEFAULT NULL COMMENT '1000m',
  `sitting_flexion` varchar(32) DEFAULT '' COMMENT '坐位体前屈',
  `standing_long_jump` varchar(32) DEFAULT NULL COMMENT '立地跳远',
  `pull_ups` varchar(32) DEFAULT NULL COMMENT '引体向上（男）',
  `abdominal_curl` varchar(32) DEFAULT NULL COMMENT '仰卧起坐',
  `test_date` datetime DEFAULT NULL COMMENT '体能测试时间',
  `del_flag` varchar(2) NOT NULL COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体能测试表';

-- ----------------------------
--  Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` varchar(32) NOT NULL,
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `q1` varchar(32) DEFAULT NULL,
  `q2` varchar(32) DEFAULT NULL,
  `q3` varchar(32) DEFAULT NULL,
  `q4` varchar(32) DEFAULT NULL,
  `q5` varchar(32) DEFAULT NULL,
  `q6` varchar(32) DEFAULT NULL,
  `q7` varchar(32) DEFAULT NULL,
  `q8` varchar(32) DEFAULT NULL,
  `q9` varchar(32) DEFAULT NULL,
  `q10` varchar(32) DEFAULT NULL,
  `q11` varchar(32) DEFAULT NULL,
  `q12` varchar(32) DEFAULT NULL,
  `q13` varchar(32) DEFAULT NULL,
  `q14` varchar(32) DEFAULT NULL,
  `q15` varchar(32) DEFAULT NULL,
  `suggestion` varchar(32) DEFAULT NULL COMMENT '心理辅导员建议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_menu` VALUES ('114108595ade40e9ab5661ee1dd229d9', '12', null, '体检管理', '#', '', '', '', '1', '3', '0', null, null, '2017-04-11 11:32:53', null, null), ('12', '0', null, '功能菜单', null, null, null, null, null, '1', '0', null, null, null, null, null), ('2', '12', null, '系统管理', null, null, null, null, '1', '1', '0', null, null, null, null, null), ('2ceab77bf80a437cbff8ef2d8b5cf7d0', '5', null, '1', '1', '', '', '1', '0', '1', '1', null, null, '2017-03-18 10:02:00', null, null), ('2f4df4bb89654bed850cfeecf6b08811', '6', null, '1', '', '', '', '', null, '1', '1', null, null, '2017-03-17 13:07:41', null, null), ('3', '2', null, '角色管理', '/role/index', null, null, null, '1', '1', '0', null, null, null, null, null), ('38dbcaf3e5404d509acdd005eeba3d7c', '6', null, '1', '', '', '', '', null, '1', '1', null, null, '2017-03-17 13:09:15', null, null), ('4', '2', null, '菜单管理', '/menu/index', null, null, null, '1', '2', '0', null, null, null, null, null), ('59ade10839644c8893d8d2dee06c8602', '12', null, '个人信息管理', '#', '', '', '', '1', '2', '0', null, null, '2017-04-11 11:31:45', null, null), ('6', '5', null, '产品信息列表', '/product/index', '', '', '', '1', '1', '1', null, null, '2017-03-17 17:51:22', null, null), ('750357f690244980874edd48be937711', '12', null, '体能测试管理', '#', '', '', '', '1', '4', '0', null, null, '2017-04-11 11:34:09', null, null), ('816771c28f7b454e8fd88f410fe4b5b7', '12', null, '心理健康管理', '#', '', '', '', '1', '6', '0', null, null, '2017-04-11 11:34:34', null, null), ('a1f20b2103ef4e22926d425ce35d2833', '59ade10839644c8893d8d2dee06c8602', null, '个人信息', '/personal/index', '', '', '', '1', '1', '0', null, null, '2017-04-11 14:06:53', null, null), ('b1fb00cdb3ca4ade82123bbb18e40cd3', '2', null, '用户管理', '/user/index', '', '', '', '1', '3', '0', null, 'admin', '2017-03-19 13:08:08', null, null), ('b38748bc4ca7497db63ab29ed4a29c0b', '6', null, 'd', '1', '', '', '', null, '1', '1', null, null, '2017-03-17 13:33:32', null, null), ('baf762ea39ee449b98dd50af85fea893', 'a1f20b2103ef4e22926d425ce35d2833', null, '新增', '#', '', '', 'personal:add', '0', '2', '0', null, null, '2017-04-11 17:23:30', null, null), ('d0a9adebff854dfe80bfafb04421f4c3', 'a1f20b2103ef4e22926d425ce35d2833', null, '删除', '#', '', '', 'personal:delete', '0', '1', '0', null, null, '2017-04-11 16:31:58', null, null), ('f7b424dfbcbd4eb9a5faa2e78ea4062a', '5', null, '1', '1', '2', '3', '1', '0', '1', '1', null, null, '2017-03-18 10:02:34', null, null), ('fd9f4dc3a26a423189f12577e09a45b2', '12', null, '就诊信息管理', '#', '', '', '', '1', '5', '0', null, null, '2017-04-11 11:33:54', null, null);
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
--  Records of `sys_x_dict`
-- ----------------------------
BEGIN;
INSERT INTO `sys_x_dict` VALUES ('00001', '1', '大学生健康管理系统', null, null, '0', null, null, null, null, null), ('00002', '1', '男', null, null, '0', null, null, null, null, null), ('00002', '2', '女', null, null, '0', null, null, null, null, null), ('00004', '1', '是', null, null, '0', '通用条件判断', null, null, null, null), ('00004', '2', '否', null, null, '0', '通用条件判断', null, null, null, null), ('10001', '01', '汉族', null, null, '0', '民族', null, null, null, null), ('10001', '02', '蒙古族', null, null, '0', '民族', null, null, null, null), ('10001', '03', '回族', null, null, '0', '民族', null, null, null, null), ('10001', '04', '藏族', null, null, '0', '民族', null, null, null, null), ('10001', '05', '维吾尔族', null, null, '0', '民族', null, null, null, null), ('10001', '06', '苗族', null, null, '0', '民族', null, null, null, null), ('10001', '07', '彝族', null, null, '0', '民族', null, null, null, null), ('10001', '08', '壮族', null, null, '0', '民族', null, null, null, null), ('10001', '09', '布依族', null, null, '0', '民族', null, null, null, null), ('10001', '10', '朝鲜族', null, null, '0', '民族', null, null, null, null), ('10001', '11', '满族', null, null, '0', '民族', null, null, null, null), ('10001', '12', '侗族', null, null, '0', '民族', null, null, null, null), ('10001', '13', '瑶族', null, null, '0', '民族', null, null, null, null), ('10001', '14', '白族', null, null, '0', '民族', null, null, null, null), ('10001', '15', '土家族', null, null, '0', '民族', null, null, null, null), ('10001', '16', '哈尼族', null, null, '0', '民族', null, null, null, null), ('10001', '17', '哈萨克族', null, null, '0', '民族', null, null, null, null), ('10001', '18', '傣族', null, null, '0', '民族', null, null, null, null), ('10001', '19', '黎族', null, null, '0', '民族', null, null, null, null), ('10001', '20', '傈僳族', null, null, '0', '民族', null, null, null, null), ('10001', '21', '佤族', null, null, '0', '民族', null, null, null, null), ('10001', '22', '畲族', null, null, '0', '民族', null, null, null, null), ('10001', '23', '高山族', null, null, '0', '民族', null, null, null, null), ('10001', '24', '拉祜族', null, null, '0', '民族', null, null, null, null), ('10001', '25', '水族', null, null, '0', '民族', null, null, null, null), ('10001', '26', '东乡族', null, null, '0', '民族', null, null, null, null), ('10001', '27', '纳西族', null, null, '0', '民族', null, null, null, null), ('10001', '28', '景颇族', null, null, '0', '民族', null, null, null, null), ('10001', '29', '柯尔克孜族', null, null, '0', '民族', null, null, null, null), ('10001', '30', '土族', null, null, '0', '民族', null, null, null, null), ('10001', '31', '达斡尔族', null, null, '0', '民族', null, null, null, null), ('10001', '32', '仫佬族', null, null, '0', '民族', null, null, null, null), ('10001', '33', '羌族', null, null, '0', '民族', null, null, null, null), ('10001', '34', '布朗族', null, null, '0', '民族', null, null, null, null), ('10001', '35', '撒拉族', null, null, '0', '民族', null, null, null, null), ('10001', '36', '毛南族', null, null, '0', '民族', null, null, null, null), ('10001', '37', '仡佬族', null, null, '0', '民族', null, null, null, null), ('10001', '38', '锡伯族', null, null, '0', '民族', null, null, null, null), ('10001', '39', '阿昌族', null, null, '0', '民族', null, null, null, null), ('10001', '40', '普米族', null, null, '0', '民族', null, null, null, null), ('10001', '41', '塔吉克族', null, null, '0', '民族', null, null, null, null), ('10001', '42', '怒族', null, null, '0', '民族', null, null, null, null), ('10001', '43', '乌孜别克族', null, null, '0', '民族', null, null, null, null), ('10001', '44', '俄罗斯族', null, null, '0', '民族', null, null, null, null), ('10001', '45', '鄂温克族', null, null, '0', '民族', null, null, null, null), ('10001', '46', '德昴族', null, null, '0', '民族', null, null, null, null), ('10001', '47', '保安族', null, null, '0', '民族', null, null, null, null), ('10001', '48', '裕固族', null, null, '0', '民族', null, null, null, null), ('10001', '49', '京族', null, null, '0', '民族', null, null, null, null), ('10001', '50', '塔塔尔族', null, null, '0', '民族', null, null, null, null), ('10001', '51', '独龙族', null, null, '0', '民族', null, null, null, null), ('10001', '52', '鄂伦春族', null, null, '0', '民族', null, null, null, null), ('10001', '53', '赫哲族', null, null, '0', '民族', null, null, null, null), ('10001', '54', '门巴族', null, null, '0', '民族', null, null, null, null), ('10001', '55', '珞巴族', null, null, '0', '民族', null, null, null, null), ('10001', '56', '基诺族', null, null, '0', '民族', null, null, null, null), ('10001', '99', '其他', null, null, '0', '民族', null, null, null, null);
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
INSERT INTO `t_role` VALUES ('37408db105dd4d43a25e865d9c1d4664', '普通用户', '1', '0', null, null, '2017-03-19 17:33:22', null, null), ('603bab5ba40142ebb70153bedf9da7ab', '学生', '1', '0', null, null, '2017-04-11 14:05:23', null, null), ('6270d4974f754219a5907bfba76ce38e', '管理员', '1', '0', null, null, '2017-04-11 17:00:25', null, null), ('7f2fa2750c6e4623af84a3ce70ad2d14', '校医', '1', '0', null, null, '2017-04-11 14:06:00', null, null), ('8190e019798f43e782470fd1e986b85d', '心理辅导员', '1', '0', null, null, '2017-04-11 14:06:18', null, null);
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
INSERT INTO `t_role_menu` VALUES ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('28d922e078d744529d05574fab14bba1', '12', '0'), ('28d922e078d744529d05574fab14bba1', '2', '0'), ('28d922e078d744529d05574fab14bba1', '3', '0'), ('28d922e078d744529d05574fab14bba1', '4', '0'), ('28d922e078d744529d05574fab14bba1', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('28d922e078d744529d05574fab14bba1', '5', '0'), ('28d922e078d744529d05574fab14bba1', '6', '0'), ('28d922e078d744529d05574fab14bba1', '47c1d826b61749a8b86844244a480276', '0'), ('28d922e078d744529d05574fab14bba1', '572d1488331c40dba2d8e7d123ed4c44', '0'), ('28d922e078d744529d05574fab14bba1', 'c372276db7e647f9b7238b2bde59db48', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'TRole.menus', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '5', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'c372276db7e647f9b7238b2bde59db48', '1'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '12', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '2', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '3', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', '5', '0'), ('202a0dbe54594d70a39d4c6b20d3f0c4', 'c372276db7e647f9b7238b2bde59db48', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '5', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '6', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '47c1d826b61749a8b86844244a480276', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'c372276db7e647f9b7238b2bde59db48', '1'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '12', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '2', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '3', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', '4', '0'), ('ca65a6eb56ff4ca2b8265e15904c9aea', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '5', '1'), ('6270d4974f754219a5907bfba76ce38e', '6', '1'), ('6270d4974f754219a5907bfba76ce38e', '47c1d826b61749a8b86844244a480276', '1'), ('6270d4974f754219a5907bfba76ce38e', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('6270d4974f754219a5907bfba76ce38e', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '4', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '2', '1'), ('37408db105dd4d43a25e865d9c1d4664', '3', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '1'), ('37408db105dd4d43a25e865d9c1d4664', '5', '1'), ('37408db105dd4d43a25e865d9c1d4664', '6', '1'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '1'), ('37408db105dd4d43a25e865d9c1d4664', '12', '0'), ('37408db105dd4d43a25e865d9c1d4664', '5', '0'), ('37408db105dd4d43a25e865d9c1d4664', '6', '0'), ('37408db105dd4d43a25e865d9c1d4664', '47c1d826b61749a8b86844244a480276', '0'), ('37408db105dd4d43a25e865d9c1d4664', '572d1488331c40dba2d8e7d123ed4c44', '0'), ('37408db105dd4d43a25e865d9c1d4664', 'c372276db7e647f9b7238b2bde59db48', '0'), ('6270d4974f754219a5907bfba76ce38e', '12', '1'), ('6270d4974f754219a5907bfba76ce38e', '2', '1'), ('6270d4974f754219a5907bfba76ce38e', '3', '1'), ('6270d4974f754219a5907bfba76ce38e', '4', '1'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '1'), ('6270d4974f754219a5907bfba76ce38e', '59ade10839644c8893d8d2dee06c8602', '1'), ('6270d4974f754219a5907bfba76ce38e', 'a1f20b2103ef4e22926d425ce35d2833', '1'), ('603bab5ba40142ebb70153bedf9da7ab', '12', '0'), ('603bab5ba40142ebb70153bedf9da7ab', '59ade10839644c8893d8d2dee06c8602', '0'), ('603bab5ba40142ebb70153bedf9da7ab', 'a1f20b2103ef4e22926d425ce35d2833', '0'), ('7f2fa2750c6e4623af84a3ce70ad2d14', '12', '0'), ('7f2fa2750c6e4623af84a3ce70ad2d14', '59ade10839644c8893d8d2dee06c8602', '0'), ('7f2fa2750c6e4623af84a3ce70ad2d14', 'a1f20b2103ef4e22926d425ce35d2833', '0'), ('8190e019798f43e782470fd1e986b85d', '12', '0'), ('8190e019798f43e782470fd1e986b85d', '59ade10839644c8893d8d2dee06c8602', '0'), ('8190e019798f43e782470fd1e986b85d', 'a1f20b2103ef4e22926d425ce35d2833', '0'), ('6270d4974f754219a5907bfba76ce38e', '12', '0'), ('6270d4974f754219a5907bfba76ce38e', '2', '0'), ('6270d4974f754219a5907bfba76ce38e', '3', '0'), ('6270d4974f754219a5907bfba76ce38e', '4', '0'), ('6270d4974f754219a5907bfba76ce38e', 'b1fb00cdb3ca4ade82123bbb18e40cd3', '0'), ('6270d4974f754219a5907bfba76ce38e', '59ade10839644c8893d8d2dee06c8602', '0'), ('6270d4974f754219a5907bfba76ce38e', 'a1f20b2103ef4e22926d425ce35d2833', '0'), ('6270d4974f754219a5907bfba76ce38e', 'd0a9adebff854dfe80bfafb04421f4c3', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(32) NOT NULL,
  `usercode` varchar(64) DEFAULT NULL COMMENT '学号',
  `password` varchar(32) DEFAULT NULL,
  `family_name` varchar(20) DEFAULT NULL COMMENT '名族',
  `username` varchar(255) DEFAULT NULL COMMENT '姓名',
  `birthday` date DEFAULT NULL COMMENT '出生年月',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL COMMENT '备注',
  `school` varchar(32) DEFAULT NULL COMMENT '学校',
  `college` varchar(32) DEFAULT NULL COMMENT '学院',
  `major` varchar(32) DEFAULT NULL COMMENT '专业',
  `phone` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `qq_number` varchar(32) DEFAULT NULL COMMENT 'qq号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `job` varchar(32) DEFAULT NULL COMMENT '职业',
  `work_time` varchar(255) DEFAULT NULL COMMENT '工作时间',
  `personcard_no` varchar(18) DEFAULT NULL,
  `grade` varchar(32) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '汉', '管理员', null, '1', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('48d944e998814da28c693bb4bbc94c23', 'jiejie', '202CB962AC59075B964B07152D234B70', '02', 'jiejie', null, '2', null, '0', null, null, '2017-03-19 14:12:06', null, '', '杉达学院', null, '计算机系', '123123123123', '', '123@email.com', null, null, '', '');
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
INSERT INTO `t_user_role` VALUES ('13f2cfeacad84bcf9e2d4ca7df8f42b9', '48d944e998814da28c693bb4bbc94c23', '603bab5ba40142ebb70153bedf9da7ab', '0', null, null, null, null, '2017-04-11 16:53:16'), ('7d9eeaac1c3c40bc8acca94bdfbdff56', '48d944e998814da28c693bb4bbc94c23', '37408db105dd4d43a25e865d9c1d4664', '1', null, null, null, null, '2017-03-19 17:06:00'), ('cd375a90d6ee4d31acaf8857e5ef4400', '1', '6270d4974f754219a5907bfba76ce38e', '0', null, null, null, null, '2017-03-19 16:42:13');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
