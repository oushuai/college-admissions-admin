/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : ruoyi2021

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 17/03/2021 00:58:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply_info
-- ----------------------------
DROP TABLE IF EXISTS `apply_info`;
CREATE TABLE `apply_info`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` int(1) NOT NULL COMMENT '性别',
  `identify_card` bigint(18) NOT NULL COMMENT '身份证号',
  `phone` bigint(11) NOT NULL COMMENT '本人电话',
  `school_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报读学校',
  `profession_id` int(20) NULL DEFAULT NULL COMMENT '选择专业',
  `student_type` int(10) NULL DEFAULT NULL COMMENT '学生类别:0-初中毕业生;1-高中毕业生；2-其他',
  `graduation_school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `midterm_score` int(10) NULL DEFAULT NULL COMMENT '中考成绩',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分数',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply_info
-- ----------------------------
INSERT INTO `apply_info` VALUES (1, 'qq1', 0, 11111, 1111, '1', 1, 0, '1111', 11, '111', '2021-02-22 19:27:22');
INSERT INTO `apply_info` VALUES (2, '111', 0, 11, 111, '3', 2, 0, '1111', 111, '111111', '2021-02-22 20:29:19');
INSERT INTO `apply_info` VALUES (3, '1', 0, 360302199704030016, 13024370921, '', NULL, NULL, '', NULL, '', '2021-02-27 18:04:03');
INSERT INTO `apply_info` VALUES (4, '1', 0, 360302111111111111, 13511111111, '', NULL, NULL, '', NULL, '', '2021-02-27 18:07:43');
INSERT INTO `apply_info` VALUES (5, '111', 0, 360333333333333333, 15333333333, '', NULL, NULL, '', NULL, '', '2021-02-27 18:10:38');
INSERT INTO `apply_info` VALUES (6, '··1', 0, 360302199704030016, 13422222222, '', NULL, NULL, '', NULL, '', '2021-02-27 18:43:37');
INSERT INTO `apply_info` VALUES (7, '11', 0, 360302199706050012, 13024371111, '', NULL, NULL, '', NULL, '', '2021-02-27 18:45:30');
INSERT INTO `apply_info` VALUES (8, '1111', 0, 360302199704030016, 13433333333, '', NULL, NULL, '', NULL, '', '2021-02-27 19:02:03');
INSERT INTO `apply_info` VALUES (9, '钱钱钱', 0, 360302199704030016, 14333333333, '', NULL, NULL, '', NULL, '', '2021-02-27 19:06:10');
INSERT INTO `apply_info` VALUES (10, '11', 0, 360302199704030016, 15222222222, '', NULL, NULL, '', NULL, '', '2021-02-27 19:06:49');
INSERT INTO `apply_info` VALUES (11, '11', 0, 360343333333333333, 14211111111, '', NULL, NULL, '', NULL, '', '2021-02-27 19:24:35');
INSERT INTO `apply_info` VALUES (12, '1111', 0, 360302199704030016, 13024370921, '', NULL, NULL, '', NULL, '', '2021-02-27 19:25:14');
INSERT INTO `apply_info` VALUES (13, '朱隆禧', 0, 360782199206101516, 13521187063, '1', 1, 2, '撒旦发射点', 22, '胜多负少', '2021-02-27 20:19:10');
INSERT INTO `apply_info` VALUES (14, '朱隆禧', 0, 360782199206101516, 13521187063, '1', 1, 2, '撒旦发射点', 22, '胜多负少', '2021-02-27 21:52:32');
INSERT INTO `apply_info` VALUES (15, '小欧', 0, 360302111111111111, 13024370921, '1', 1, 2, '', NULL, '', '2021-03-07 10:45:06');

-- ----------------------------
-- Table structure for dayoff
-- ----------------------------
DROP TABLE IF EXISTS `dayoff`;
CREATE TABLE `dayoff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `departmentName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `day` int(255) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '轮播图片',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES (1, 'http://localhost/profile/upload/2021/02/27/1a1e294f-ff2d-4369-847f-98e0cf18775d.jpg', 0);
INSERT INTO `focus` VALUES (2, 'http://localhost/profile/upload/2021/02/27/5e36d401-3b0b-4462-ba61-e197355347eb.jpg', 0);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (16, 'apply_info', '申请表', NULL, NULL, 'ApplyInfo', 'crud', 'com.ruoyi.web', 'college', 'applyInfo', '申请表', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-17 17:21:57', '');
INSERT INTO `gen_table` VALUES (17, 'focus', '轮播图片', NULL, NULL, 'Focus', 'crud', 'com.ruoyi.web', 'college', 'focus', '轮播图片', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-16 18:02:15', '');
INSERT INTO `gen_table` VALUES (18, 'profession', '专业', NULL, NULL, 'Profession', 'crud', 'com.ruoyi.web', 'college', 'profession', '专业', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-18 20:26:31', '');
INSERT INTO `gen_table` VALUES (19, 'question_answer', '问答表', NULL, NULL, 'QuestionAnswer', 'crud', 'com.ruoyi.web', 'college', 'answer', '问答', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-16 18:05:31', '');
INSERT INTO `gen_table` VALUES (20, 'school', '学校表', NULL, NULL, 'School', 'crud', 'com.ruoyi.web', 'college', 'school', '学校表', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-19 20:51:40', '');
INSERT INTO `gen_table` VALUES (21, 'school_news', '学校新闻表', NULL, NULL, 'SchoolNews', 'crud', 'com.ruoyi.web', 'college', 'news', '学校新闻表', 'ouyangjie', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"高校后台管理\",\"treeCode\":\"\"}', 'admin', '2021-01-16 17:31:33', '', '2021-01-19 21:20:07', '');
INSERT INTO `gen_table` VALUES (24, 'question_answer_association', '', NULL, NULL, 'QuestionAnswerAssociation', 'crud', 'com.ruoyi.system', 'system', 'association', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-02-17 12:57:17', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (93, '16', 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (94, '16', 'name', '姓名', 'varchar(20)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (95, '16', 'sex', '性别', 'int(1)', 'Integer', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (96, '16', 'identify_card', '身份证号', 'int(18)', 'Long', 'identifyCard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (97, '16', 'phone', '本人电话', 'int(11)', 'Long', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (98, '16', 'school_id', '报读学校', 'varchar(20)', 'String', 'schoolId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (99, '16', 'profession_id', '选择专业', 'int(20)', 'Long', 'professionId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (100, '16', 'student_type', '学生类别', 'int(10)', 'Integer', 'studentType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (101, '16', 'graduation_school', '毕业学校', 'varchar(50)', 'String', 'graduationSchool', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (102, '16', 'midterm_score', '中考成绩', 'int(10)', 'Integer', 'midtermScore', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (103, '16', 'comment', '意见', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (104, '16', 'create_date', '创建日期', 'datetime', 'Date', 'createDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-17 17:21:57');
INSERT INTO `gen_table_column` VALUES (105, '17', 'id', '', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:02:15');
INSERT INTO `gen_table_column` VALUES (106, '17', 'img', '轮播图片', 'blob', 'String', 'img', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:02:15');
INSERT INTO `gen_table_column` VALUES (107, '17', 'del_flag', '删除标志', 'int(1)', 'Integer', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:02:15');
INSERT INTO `gen_table_column` VALUES (108, '18', 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (109, '18', 'name', '专业名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (110, '18', 'type', '专业类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'select', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (111, '18', 'del_flag', '删除标志', 'int(1)', 'Integer', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (112, '19', 'id', '', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (113, '19', 'qa', '问题&答案', 'varchar(500)', 'String', 'qa', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (114, '19', 'user_id', '用户名', 'varchar(50)', 'String', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (115, '19', 'create_date', '创建事件', 'datetime', 'Date', 'createDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (116, '19', 'del_flag', '删除标志', 'int(1)', 'Integer', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (117, '19', 'status', '0-问题，1-答案', 'int(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-16 18:05:31');
INSERT INTO `gen_table_column` VALUES (118, '20', 'id', '', 'varchar(20)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (119, '20', 'name', '学校名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (120, '20', 'lego', '学校lego', 'varchar(255)', 'String', 'lego', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'upload', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (121, '20', 'cover_img', '学校封面图', 'blob', 'String', 'coverImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'upload', '', 4, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (122, '20', 'short_introduction', '学校简介', 'varchar(255)', 'String', 'shortIntroduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (123, '20', 'introduction', '学校详细介绍', 'varchar(1000)', 'String', 'introduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 6, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (125, '20', 'del_flag', '是否删除', 'int(1)', 'Integer', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (126, '21', 'id', '', 'int(10)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 21:20:07');
INSERT INTO `gen_table_column` VALUES (128, '21', 'news_content', '文章内容', 'varchar(1200)', 'String', 'newsContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 3, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 21:20:07');
INSERT INTO `gen_table_column` VALUES (129, '21', 'del_flag', '删除标志', 'int(1)', 'Integer', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 21:20:07');
INSERT INTO `gen_table_column` VALUES (130, '21', 'create_date', '创建时间', 'datetime', 'Date', 'createDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-01-16 17:31:33', NULL, '2021-01-19 21:20:07');
INSERT INTO `gen_table_column` VALUES (137, '18', 'process_describe', '专业描述', 'varchar(1200)', 'String', 'processDescribe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 5, '', '2021-01-17 16:56:33', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (138, '21', 'content_title', '文章标题', 'varchar(255)', 'String', 'contentTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2021-01-17 17:23:25', NULL, '2021-01-19 21:20:07');
INSERT INTO `gen_table_column` VALUES (139, '18', 'process_img', '专业封面图', 'varchar(255)', 'String', 'processImg', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'upload', '', 6, '', '2021-01-18 20:25:23', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (140, '18', 'school_id', '学校id', 'varchar(0)', 'String', 'schoolId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, '', '2021-01-18 20:25:23', NULL, '2021-01-18 20:26:31');
INSERT INTO `gen_table_column` VALUES (141, '20', 'ranking', '排名', 'varchar(255)', 'String', 'ranking', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '', '2021-01-19 20:50:04', NULL, '2021-01-19 20:51:40');
INSERT INTO `gen_table_column` VALUES (144, '24', 'question_id', '问题id', 'int(11)', 'Long', 'questionId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-02-17 12:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '24', 'answer_id', '回答id', 'int(11)', 'Long', 'answerId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2021-02-17 12:57:17', '', NULL);

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业类型',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除标志',
  `process_describe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业描述',
  `process_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业封面图',
  `year` int(11) NULL DEFAULT NULL COMMENT '就读年限',
  `ranking` int(11) NULL DEFAULT NULL COMMENT '专业排名',
  `school_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES (1, '计算机科学与技术', '', 0, '专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。', 'http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg', 5, 3, '1');
INSERT INTO `profession` VALUES (2, '软件工程', NULL, 0, '<p><b>aa</b></p>', 'http://localhost/profile/upload/2021/01/18/5778d53f-c334-4743-812e-fe426f24fc7b.jpg', 4, 1, '3');
INSERT INTO `profession` VALUES (3, '网络与通信', NULL, 0, '<p><b><u>啊啊啊</u></b></p>', 'http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg', 4, 2, '1');
INSERT INTO `profession` VALUES (8, '工业机器人', NULL, 0, '专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。', 'http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg', 3, 1, '2');
INSERT INTO `profession` VALUES (9, '信息系统', NULL, 0, '专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。钱钱钱', 'http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg', 5, 3, '1');
INSERT INTO `profession` VALUES (10, '物联网', NULL, 0, '专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。钱钱钱，物联网', 'http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg', 6, 4, '1');

-- ----------------------------
-- Table structure for question_answer
-- ----------------------------
DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE `question_answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '问题或者答案',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建事件',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除标志',
  `status` int(1) NULL DEFAULT 0 COMMENT '0-问题，1-答案',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问题id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_answer
-- ----------------------------
INSERT INTO `question_answer` VALUES (1, '清华大学好还是北京大学好呢?', '', '2021-02-16 00:00:00', 0, 0, NULL);
INSERT INTO `question_answer` VALUES (2, '读职高要高考分数吗？', '', '2021-02-17 19:53:22', 0, 0, NULL);
INSERT INTO `question_answer` VALUES (3, '职高秋季招生是什么意思？', '', '2021-02-16 19:53:49', 0, 0, NULL);
INSERT INTO `question_answer` VALUES (4, '清华大学（Tsinghua University），简称“清华”，是中华人民共和国教育部直属的全国重点大学， [1]  位列国家“双一流”A类、“985工程”、“211工程”，入选“2011计划”、“珠峰计划”、“强基计划”、“111计划”，为九校联盟（C9）、松联盟、中国大学校长联谊会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员、中国高层次人才培养和科学技术研究的基地，被誉为“红色工程师的摇篮”。 [1-3] \r\n学校前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。 [4] \r\n截至2020年8月，清华大学校园面积442.12公顷，建筑面积281.70万平方米；设有21个学院、59教学系，开设有82个本科专业；有博士后科研流动站50个，一级学科国家重点学科22个，一级学科博士、硕士学位授权点60个；有教职工15190人，在校生53302人。', NULL, '2021-02-17 10:41:58', 0, 1, NULL);
INSERT INTO `question_answer` VALUES (5, '亲亲，要高考分数的哦！', NULL, '2021-02-17 10:42:19', 0, 1, NULL);
INSERT INTO `question_answer` VALUES (11, '不知道啊', NULL, '2021-03-17 00:39:11', 0, 1, NULL);
INSERT INTO `question_answer` VALUES (12, '1+1', '', '2021-03-17 00:47:44', 0, 0, NULL);
INSERT INTO `question_answer` VALUES (13, '2', NULL, '2021-03-17 00:47:49', 0, 1, NULL);
INSERT INTO `question_answer` VALUES (14, '4', NULL, '2021-03-17 00:48:14', 0, 1, NULL);
INSERT INTO `question_answer` VALUES (15, '2+2', '', '2021-03-17 00:48:14', 0, 0, NULL);

-- ----------------------------
-- Table structure for question_answer_association
-- ----------------------------
DROP TABLE IF EXISTS `question_answer_association`;
CREATE TABLE `question_answer_association`  (
  `question_id` int(11) NOT NULL COMMENT '问题id',
  `answer_id` int(11) NOT NULL COMMENT '回答id',
  PRIMARY KEY (`question_id`, `answer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_answer_association
-- ----------------------------
INSERT INTO `question_answer_association` VALUES (1, 4);
INSERT INTO `question_answer_association` VALUES (2, 5);
INSERT INTO `question_answer_association` VALUES (3, 11);
INSERT INTO `question_answer_association` VALUES (12, 13);
INSERT INTO `question_answer_association` VALUES (15, 14);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `lego` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校lego',
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校封面图',
  `short_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校简介',
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校详细介绍',
  `ranking` int(11) NULL DEFAULT NULL COMMENT '排名',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '清华大学', 'http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg', 'http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg', '清华大学赣州旅游职业学校是经省教育厅备案，市教育局直属的一所全日制综合性中专学校，学校坐落在赣州黄金高校区，南与赣州师范高等专科学校一墙之隔，西与赣南师范大学相邻;学习氛围浓厚，交通便利，环境优美，是广大莘莘学子求知的理想殿堂。', '<dl class=\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px;\"><dd class=\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\" style=\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; line-height: 1; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; display: inline-block; vertical-align: middle;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-size: 14px;\"><font color=\"#474849\" face=\"arial, tahoma, Microsoft Yahei, 宋体, sans-serif\" style=\"\"><ul style=\"background-color: rgb(239, 247, 255); margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><b>985工程211工程研究生院</b></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><b style=\"background-color: rgb(239, 247, 255);\">清华大学（Tsinghua University</b><span style=\"background-color: rgb(239, 247, 255);\">），简称“</span><span style=\"background-color: rgb(255, 0, 0);\">清华</span><span style=\"background-color: rgb(239, 247, 255);\">”，是中华人民共和国教育部直属的全国重点大学， [1]&nbsp; 位列国家“双一流”A类、“985工程”、“211工程”，入选“2011计划”、“珠峰计划”、“强基计划”、“111计划”，为九校联盟（C9）、松联盟、中国大学校长联谊会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员、中国高层次人才培养和科学技术研究的基地，被誉为“红色工程师的摇篮”。 [1-3]&nbsp;</span></ul><ul style=\"background-color: rgb(239, 247, 255); margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\">学校前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。 [4]&nbsp;</ul><ul style=\"background-color: rgb(239, 247, 255); margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\">截至2020年8月，清华大学校园面积442.12公顷，建筑面积281.70万平方米；设有21个学院、59教学系，开设有82个本科专业；有博士后科研流动站50个，一级学科国家重点学科22个，一级学科博士、硕士学位授权点60个；有教职工15190人，在校生53302人。</ul></font></ul></dd></dl>', 1, 0);
INSERT INTO `school` VALUES ('2', '北京大学', 'http://localhost/profile/upload/2021/01/19/2b810603-a006-443d-83da-1885e86f4169.jpg', 'http://localhost/profile/upload/2021/01/19/704f0172-ff26-4e2d-90d4-536f8d0d2333.jpg', '北京大学赣州旅游职业学校是经省教育厅备案，市教育局直属的一所全日制综合性中专学校，学校坐落在赣州黄金高校区，南与赣州师范高等专科学校一墙之隔，西与赣南师范大学相邻;学习氛围浓厚，交通便利，环境优美，是广大莘莘学子求知的理想殿堂。', '<b>啊啊啊</b>', 2, 0);
INSERT INTO `school` VALUES ('3', '南昌大学', 'http://localhost/profile/upload/2021/01/19/506840c7-8a38-4075-a329-446e68499d71.jpg', 'http://localhost/profile/upload/2021/01/19/1ccefd55-7727-4afa-9d91-d4b5f8c0b824.jpg', '南昌大学赣州旅游职业学校是经省教育厅备案，市教育局直属的一所全日制综合性中专学校，学校坐落在赣州黄金高校区，南与赣州师范高等专科学校一墙之隔，西与赣南师范大学相邻;学习氛围浓厚，交通便利，环境优美，是广大莘莘学子求知的理想殿堂。', 'ddd', 8, 0);
INSERT INTO `school` VALUES ('9ca2ed218f31470c', '上海交通大学', 'http://localhost/profile/upload/2021/03/16/475166eb-58f4-418b-881d-40a1d1690309.jpg', 'http://localhost/profile/upload/2021/03/16/de94561c-b061-4982-9fe7-2255d616de62.jpg', '交通大学的简介', '<p>啊发发</p>', 1, 0);
INSERT INTO `school` VALUES ('bd64776892ea4f15', '南京大学', 'http://localhost/profile/upload/2021/02/07/4e545dfe-4a3e-468f-887e-b61320ff5ee4.jpg', 'http://localhost/profile/upload/2021/02/07/eb69ff85-79a2-40e5-815d-f3e06bfbab11.jpg', '南京大学赣州旅游职业学校是经省教育厅备案，市教育局直属的一所全日制综合性中专学校，学校坐落在赣州黄金高校区，南与赣州师范高等专科学校一墙之隔，西与赣南师范大学相邻;学习氛围浓厚，交通便利，环境优美，是广大莘莘学子求知的理想殿堂。', '<p><b><u>啊啊啊</u></b></p>', 5, 0);
INSERT INTO `school` VALUES ('f389f7f7c7b54153', '财经大学', 'http://localhost/profile/upload/2021/03/16/f5004175-6435-4add-81d9-4bbc14c519f3.jpg', 'http://localhost/profile/upload/2021/03/16/6c6de84a-572a-4dbb-9660-00d135eeaea1.jpg', '财经大学的简介', '<p>啊啊啊啊</p>', 1, 0);

-- ----------------------------
-- Table structure for school_news
-- ----------------------------
DROP TABLE IF EXISTS `school_news`;
CREATE TABLE `school_news`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `news_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除标志',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_news
-- ----------------------------
INSERT INTO `school_news` VALUES (1, 'sd', '<p>sdfsdfasddfs2222</p>', 0, '2021-01-19 00:00:00');
INSERT INTO `school_news` VALUES (2, '北京大学有多好', '清华大学（Tsinghua University），简称“清华”，是中华人民共和国教育部直属的全国重点大学， [1]  位列国家“双一流”A类、“985工程”、“211工程”，入选“2011计划”、“珠峰计划”、“强基计划”、“111计划”，为九校联盟（C9）、松联盟、中国大学校长联谊会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员、中国高层次人才培养和科学技术研究的基地，被誉为“红色工程师的摇篮”。 [1-3] \r\n学校前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。 [4] \r\n截至2020年8月，清华大学校园面积442.12公顷，建筑面积281.70万平方米；设有21个学院、59教学系，开设有82个本科专业；有博士后科研流动站50个，一级学科国家重点学科22个，一级学科博士、硕士学位授权点60个；有教职工15190人，在校生53302人。', 0, '2021-02-24 00:08:36');
INSERT INTO `school_news` VALUES (3, '赣州在哪里', '江西', 0, '2021-02-24 17:52:59');

-- ----------------------------
-- Table structure for school_profession
-- ----------------------------
DROP TABLE IF EXISTS `school_profession`;
CREATE TABLE `school_profession`  (
  `id` int(11) NOT NULL,
  `school_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学校id',
  `profession_id` int(20) NULL DEFAULT NULL COMMENT '专业id',
  `year` int(4) NULL DEFAULT NULL COMMENT '年份',
  `cover_img` blob NULL COMMENT '封面图',
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-01-06 21:43:55', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '初中毕业生', '1', 'student_type', NULL, NULL, 'Y', '0', 'admin', '2021-02-28 00:38:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '高中毕业生', '1', 'student_type', NULL, 'default', 'Y', '0', 'admin', '2021-02-28 00:39:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '其他', '2', 'student_type', NULL, 'default', 'Y', '0', 'admin', '2021-02-28 00:39:21', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-01-06 21:43:54', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '学生类别', 'student_type', '0', 'admin', '2021-02-28 00:38:14', '', NULL, '0-初中毕业生;1-高中毕业生；2-其他');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-01-06 21:43:55', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-01-06 21:43:55', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-01-06 21:43:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-06 21:49:59');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-06 21:50:02');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-10 17:17:04');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-10 17:18:18');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-11 09:40:31');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-11 09:40:34');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-11 11:10:26');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-12 20:27:46');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 20:27:50');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 20:38:58');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 20:41:32');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 21:19:22');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-12 21:20:12');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 21:20:15');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-12 21:20:20');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 21:20:24');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-16 18:31:54');
INSERT INTO `sys_logininfor` VALUES (117, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 18:32:03');
INSERT INTO `sys_logininfor` VALUES (118, 'test`', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-01-16 19:41:51');
INSERT INTO `sys_logininfor` VALUES (119, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-16 19:41:59');
INSERT INTO `sys_logininfor` VALUES (120, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 19:42:04');
INSERT INTO `sys_logininfor` VALUES (121, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-16 20:28:48');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 20:28:51');
INSERT INTO `sys_logininfor` VALUES (123, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 20:44:44');
INSERT INTO `sys_logininfor` VALUES (124, 'test1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-17 16:54:24');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-17 16:54:30');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 20:35:16');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 20:46:07');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 20:54:33');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 21:05:57');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-18 21:26:07');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 21:26:10');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 21:57:12');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 22:05:15');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-18 22:06:19');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2021-02-03 12:31:38');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2021-02-03 12:32:14');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-02-03 12:36:03');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码错误', '2021-02-03 12:37:53');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-10 13:46:10');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-15 09:30:07');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 20:38:58');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 20:43:10');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 20:50:02');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 20:52:09');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 20:56:28');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-16 21:00:37');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-07 10:59:19');
INSERT INTO `sys_logininfor` VALUES (148, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-07 10:59:30');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 10:59:37');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-07 11:00:09');
INSERT INTO `sys_logininfor` VALUES (151, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:00:19');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:10:09');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-07 11:10:25');
INSERT INTO `sys_logininfor` VALUES (154, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:10:36');
INSERT INTO `sys_logininfor` VALUES (155, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-07 11:14:29');
INSERT INTO `sys_logininfor` VALUES (156, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:14:32');
INSERT INTO `sys_logininfor` VALUES (157, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:32:53');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:45:49');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-07 11:46:09');
INSERT INTO `sys_logininfor` VALUES (160, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-07 11:46:14');
INSERT INTO `sys_logininfor` VALUES (161, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 11:46:16');
INSERT INTO `sys_logininfor` VALUES (162, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 13:07:27');
INSERT INTO `sys_logininfor` VALUES (163, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-07 13:13:57');
INSERT INTO `sys_logininfor` VALUES (164, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 20:32:02');
INSERT INTO `sys_logininfor` VALUES (165, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-16 20:32:05');
INSERT INTO `sys_logininfor` VALUES (166, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 20:32:29');
INSERT INTO `sys_logininfor` VALUES (167, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-16 20:40:43');
INSERT INTO `sys_logininfor` VALUES (168, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 20:40:48');
INSERT INTO `sys_logininfor` VALUES (169, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-16 22:01:56');
INSERT INTO `sys_logininfor` VALUES (170, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:01:58');
INSERT INTO `sys_logininfor` VALUES (171, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-16 22:06:40');
INSERT INTO `sys_logininfor` VALUES (172, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:06:42');
INSERT INTO `sys_logininfor` VALUES (173, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-16 22:08:30');
INSERT INTO `sys_logininfor` VALUES (174, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:08:33');
INSERT INTO `sys_logininfor` VALUES (175, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:17:07');
INSERT INTO `sys_logininfor` VALUES (176, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:20:33');
INSERT INTO `sys_logininfor` VALUES (177, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:24:24');
INSERT INTO `sys_logininfor` VALUES (178, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:28:03');
INSERT INTO `sys_logininfor` VALUES (179, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:31:57');
INSERT INTO `sys_logininfor` VALUES (180, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 22:42:55');
INSERT INTO `sys_logininfor` VALUES (181, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:08:49');
INSERT INTO `sys_logininfor` VALUES (182, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-16 23:12:16');
INSERT INTO `sys_logininfor` VALUES (183, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:12:19');
INSERT INTO `sys_logininfor` VALUES (184, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:13:53');
INSERT INTO `sys_logininfor` VALUES (185, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:28:46');
INSERT INTO `sys_logininfor` VALUES (186, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:31:19');
INSERT INTO `sys_logininfor` VALUES (187, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:45:47');
INSERT INTO `sys_logininfor` VALUES (188, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-16 23:46:49');
INSERT INTO `sys_logininfor` VALUES (189, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:46:52');
INSERT INTO `sys_logininfor` VALUES (190, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:47:57');
INSERT INTO `sys_logininfor` VALUES (191, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:55:32');
INSERT INTO `sys_logininfor` VALUES (192, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-16 23:56:41');
INSERT INTO `sys_logininfor` VALUES (193, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:02:53');
INSERT INTO `sys_logininfor` VALUES (194, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:05:10');
INSERT INTO `sys_logininfor` VALUES (195, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:10:48');
INSERT INTO `sys_logininfor` VALUES (196, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:12:12');
INSERT INTO `sys_logininfor` VALUES (197, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:12:14');
INSERT INTO `sys_logininfor` VALUES (198, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:12:18');
INSERT INTO `sys_logininfor` VALUES (199, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:13:19');
INSERT INTO `sys_logininfor` VALUES (200, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:14:13');
INSERT INTO `sys_logininfor` VALUES (201, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:14:17');
INSERT INTO `sys_logininfor` VALUES (202, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:14:20');
INSERT INTO `sys_logininfor` VALUES (203, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:15:29');
INSERT INTO `sys_logininfor` VALUES (204, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:17:22');
INSERT INTO `sys_logininfor` VALUES (205, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:17:24');
INSERT INTO `sys_logininfor` VALUES (206, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:18:31');
INSERT INTO `sys_logininfor` VALUES (207, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:20:06');
INSERT INTO `sys_logininfor` VALUES (208, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:21:06');
INSERT INTO `sys_logininfor` VALUES (209, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:22:36');
INSERT INTO `sys_logininfor` VALUES (210, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:26:28');
INSERT INTO `sys_logininfor` VALUES (211, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:27:45');
INSERT INTO `sys_logininfor` VALUES (212, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:29:17');
INSERT INTO `sys_logininfor` VALUES (213, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:30:15');
INSERT INTO `sys_logininfor` VALUES (214, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-17 00:37:13');
INSERT INTO `sys_logininfor` VALUES (215, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:37:16');
INSERT INTO `sys_logininfor` VALUES (216, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:39:03');
INSERT INTO `sys_logininfor` VALUES (217, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:47:35');
INSERT INTO `sys_logininfor` VALUES (218, 'sysadmin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-17 00:49:16');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2037 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-01-06 21:43:53', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-01-06 21:43:53', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-01-06 21:43:53', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-01-06 21:43:53', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-01-06 21:43:53', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-01-06 21:43:53', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-01-06 21:43:53', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-01-06 21:43:53', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-01-06 21:43:53', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-01-06 21:43:53', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-01-06 21:43:53', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-01-06 21:43:53', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-01-06 21:43:53', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-01-06 21:43:53', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-01-06 21:43:53', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-01-06 21:43:53', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-01-06 21:43:53', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-01-06 21:43:53', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-01-06 21:43:53', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-01-06 21:43:53', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-01-06 21:43:53', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-01-06 21:43:53', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-01-06 21:43:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '高校后台管理', 0, 4, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-graduation-cap', 'admin', '2021-01-12 22:51:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '问答管理', 2000, 1, '/college/answer', 'menuItem', 'C', '0', '1', 'college:answer:view', '#', 'admin', '2021-01-16 18:18:48', 'admin', '2021-01-16 20:29:14', '问答菜单');
INSERT INTO `sys_menu` VALUES (2002, '问答查询', 2001, 1, '#', '', 'F', '0', '1', 'college:answer:list', '#', 'admin', '2021-01-16 18:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '问答新增', 2001, 2, '#', '', 'F', '0', '1', 'college:answer:add', '#', 'admin', '2021-01-16 18:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '问答修改', 2001, 3, '#', '', 'F', '0', '1', 'college:answer:edit', '#', 'admin', '2021-01-16 18:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '问答删除', 2001, 4, '#', '', 'F', '0', '1', 'college:answer:remove', '#', 'admin', '2021-01-16 18:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '问答导出', 2001, 5, '#', '', 'F', '0', '1', 'college:answer:export', '#', 'admin', '2021-01-16 18:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '报名管理', 2000, 1, '/college/applyInfo', 'menuItem', 'C', '0', '1', 'college:applyInfo:view', '#', 'admin', '2021-01-16 18:27:18', 'admin', '2021-01-16 20:29:44', '申请表菜单');
INSERT INTO `sys_menu` VALUES (2008, '申请表查询', 2007, 1, '#', '', 'F', '0', '1', 'college:applyInfo:list', '#', 'admin', '2021-01-16 18:27:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '申请表删除', 2007, 4, '#', '', 'F', '0', '1', 'college:applyInfo:remove', '#', 'admin', '2021-01-16 18:27:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '申请表导出', 2007, 5, '#', '', 'F', '0', '1', 'college:applyInfo:export', '#', 'admin', '2021-01-16 18:27:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '轮播图片管理', 2000, 1, '/college/focus', 'menuItem', 'C', '0', '1', 'college:focus:view', '#', 'admin', '2021-01-16 18:27:33', 'admin', '2021-01-16 20:30:07', '轮播图片菜单');
INSERT INTO `sys_menu` VALUES (2014, '轮播图片查询', 2013, 1, '#', '', 'F', '0', '1', 'college:focus:list', '#', 'admin', '2021-01-16 18:27:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '轮播图片新增', 2013, 2, '#', '', 'F', '0', '1', 'college:focus:add', '#', 'admin', '2021-01-16 18:27:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '轮播图片修改', 2013, 3, '#', '', 'F', '0', '1', 'college:focus:edit', '#', 'admin', '2021-01-16 18:27:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '轮播图片删除', 2013, 4, '#', '', 'F', '0', '1', 'college:focus:remove', '#', 'admin', '2021-01-16 18:27:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '轮播图片导出', 2013, 5, '#', '', 'F', '0', '1', 'college:focus:export', '#', 'admin', '2021-01-16 18:27:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '新闻管理', 2000, 1, '/college/news', 'menuItem', 'C', '0', '1', 'college:news:view', '#', 'admin', '2021-01-16 18:27:52', 'admin', '2021-01-16 20:30:19', '学校新闻表菜单');
INSERT INTO `sys_menu` VALUES (2020, '学校新闻表查询', 2019, 1, '#', '', 'F', '0', '1', 'college:news:list', '#', 'admin', '2021-01-16 18:27:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '学校新闻表新增', 2019, 2, '#', '', 'F', '0', '1', 'college:news:add', '#', 'admin', '2021-01-16 18:27:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '学校新闻表修改', 2019, 3, '#', '', 'F', '0', '1', 'college:news:edit', '#', 'admin', '2021-01-16 18:27:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '学校新闻表删除', 2019, 4, '#', '', 'F', '0', '1', 'college:news:remove', '#', 'admin', '2021-01-16 18:27:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '学校新闻表导出', 2019, 5, '#', '', 'F', '0', '1', 'college:news:export', '#', 'admin', '2021-01-16 18:27:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '专业管理', 2000, 1, '/college/profession', 'menuItem', 'C', '0', '1', 'college:profession:view', '#', 'admin', '2021-01-16 18:28:02', 'admin', '2021-01-16 20:30:32', '专业菜单');
INSERT INTO `sys_menu` VALUES (2026, '专业查询', 2025, 1, '#', '', 'F', '0', '1', 'college:profession:list', '#', 'admin', '2021-01-16 18:28:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '专业新增', 2025, 2, '#', '', 'F', '0', '1', 'college:profession:add', '#', 'admin', '2021-01-16 18:28:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '专业修改', 2025, 3, '#', '', 'F', '0', '1', 'college:profession:edit', '#', 'admin', '2021-01-16 18:28:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '专业删除', 2025, 4, '#', '', 'F', '0', '1', 'college:profession:remove', '#', 'admin', '2021-01-16 18:28:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '学校管理', 2000, 1, '/college/school', 'menuItem', 'C', '0', '1', 'college:school:view', '#', 'admin', '2021-01-16 18:28:15', 'admin', '2021-01-19 21:33:49', '学校表菜单');
INSERT INTO `sys_menu` VALUES (2032, '学校表查询', 2031, 1, '#', '', 'F', '0', '1', 'college:school:list', '#', 'admin', '2021-01-16 18:28:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '学校表新增', 2031, 2, '#', '', 'F', '0', '1', 'college:school:add', '#', 'admin', '2021-01-16 18:28:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '学校表修改', 2031, 3, '#', '', 'F', '0', '1', 'college:school:edit', '#', 'admin', '2021-01-16 18:28:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '学校表删除', 2031, 4, '#', '', 'F', '0', '1', 'college:school:remove', '#', 'admin', '2021-01-16 18:28:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '学校表导出', 2031, 5, '#', '', 'F', '0', '1', 'college:school:export', '#', 'admin', '2021-01-16 18:28:15', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-01-06 21:43:55', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 270 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"school_news,school_profession,apply_info,focus,user,profession,question_answer,school\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-06 22:06:17');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news,school_profession,user\"]}', 'null', 0, NULL, '2021-01-06 22:13:34');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news,school_profession,user\"]}', 'null', 0, NULL, '2021-01-06 22:13:41');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"dayoff\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-11 09:40:59');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dayoff', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-11 09:56:56');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dayoff', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-11 09:57:02');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-01-12 20:31:50');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-01-12 20:32:11');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"高校后台管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-graduation-cap\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-12 22:51:06');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"dayoff,apply_info,focus,profession,question_answer,school,school_news,school_profession,user\"]}', 'null', 0, NULL, '2021-01-14 21:59:29');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"dayoff,apply_info,focus,profession,question_answer,school,school_news,school_profession,user\"]}', 'null', 0, NULL, '2021-01-14 21:59:35');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9,1,2,3,4,5,6,7,8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-14 23:42:40');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"school_news,question_answer,focus,apply_info,school,profession\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-14 23:42:53');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10,11,12,13,14,15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 17:31:18');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"school_news,question_answer,focus,apply_info,school,school_profession,profession\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 17:31:33');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news,school_profession\"]}', 'null', 1, 'java.io.IOException: 你的主机中的软件中止了一个已建立的连接。', '2021-01-16 17:31:39');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news,school_profession\"]}', 'null', 0, NULL, '2021-01-16 17:31:39');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news,school_profession\"]}', 'null', 0, NULL, '2021-01-16 17:31:52');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"apply_info\"],\"tableComment\":[\"申请表\"],\"className\":[\"ApplyInfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"93\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"94\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"95\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"sex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"96\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"identifyCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"97\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"本人电话\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"phone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"98\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 17:45:18');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/apply_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-16 17:45:22');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/apply_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-16 17:45:37');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"apply_info\"],\"tableComment\":[\"申请表\"],\"className\":[\"ApplyInfo\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"93\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"94\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"95\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"sex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"96\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"identifyCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"97\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"本人电话\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"phone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"98\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 17:47:35');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/apply_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-16 17:47:38');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/apply_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-16 17:47:51');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"focus\"],\"tableComment\":[\"轮播图片\"],\"className\":[\"Focus\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"105\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"106\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"轮播图片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"img\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"107\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"删除标志\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"delFlag\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.web\"],\"moduleName\":[\"college\"],\"businessName\":[\"focus\"],\"functionName\":[\"轮播图片\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"高校后台管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:02:15');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"profession\"],\"tableComment\":[\"专业\"],\"className\":[\"Profession\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"108\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"109\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"专业名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"110\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"111\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"删除标志\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"delFlag\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.web\"],\"moduleName\":[\"college\"],\"businessName\":[\"profession\"],\"functionName\":[\"专业\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"高校后台管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:03:28');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"apply_info\"],\"tableComment\":[\"申请表\"],\"className\":[\"ApplyInfo\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"93\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"94\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"95\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"sex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"96\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"identifyCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"97\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"本人电话\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"phone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"98\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:04:12');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"question_answer\"],\"tableComment\":[\"问答表\"],\"className\":[\"QuestionAnswer\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"112\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"113\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"问题&答案\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"qa\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"114\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"userId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"115\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"创建事件\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"createDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"116\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"删除标志\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"delFlag\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"117\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"0-问题，1-答案\"],\"columns[5].javaType\":[\"Integer\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:05:31');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"school\"],\"tableComment\":[\"学校表\"],\"className\":[\"School\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"118\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"119\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学校名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"120\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学校lego\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"lego\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"121\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学校封面图\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"coverImg\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"122\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学校简介\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"shortIntroduction\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"123\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学校详细介绍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"introduction\"],\"columns[5]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:08:35');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"school_news\"],\"tableComment\":[\"学校新闻表\"],\"className\":[\"SchoolNews\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"126\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"127\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学校id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shcoolId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"128\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"文章内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"newsContent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"summernote\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"129\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"删除标志\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"delFlag\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"130\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.web\"],\"moduleName\":[\"college\"],\"businessName\":[\"news\"],\"functionName\":[\"学校新闻表\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"高校后台管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTable', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:10:30');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:10:43');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news\"]}', 'null', 0, NULL, '2021-01-16 18:11:48');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"apply_info,focus,profession,question_answer,school,school_news\"]}', 'null', 0, NULL, '2021-01-16 18:11:51');
INSERT INTO `sys_oper_log` VALUES (133, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"测试用户\"],\"roleKey\":[\"test\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:31:07');
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"108\"],\"userName\":[\"test1\"],\"deptName\":[\"市场部门\"],\"phonenumber\":[\"13024370921\"],\"email\":[\"2313968604@qq.com\"],\"loginName\":[\"test1\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 18:31:48');
INSERT INTO `sys_oper_log` VALUES (135, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'test1', '市场部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"计算机科学与技术\"],\"type\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 19:54:12');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"问答管理\"],\"url\":[\"/college/answer\"],\"target\":[\"menuItem\"],\"perms\":[\"college:answer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:29:14');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"报名管理\"],\"url\":[\"/college/applyInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"college:applyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:29:44');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"轮播图片管理\"],\"url\":[\"/college/focus\"],\"target\":[\"menuItem\"],\"perms\":[\"college:focus:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:30:07');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"新闻管理\"],\"url\":[\"/college/news\"],\"target\":[\"menuItem\"],\"perms\":[\"college:news:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:30:19');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"专业管理\"],\"url\":[\"/college/profession\"],\"target\":[\"menuItem\"],\"perms\":[\"college:profession:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:30:32');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"学校表管理\"],\"url\":[\"/college/school\"],\"target\":[\"menuItem\"],\"perms\":[\"college:school:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-16 20:30:41');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/profession', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-17 16:56:33');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"profession\"],\"tableComment\":[\"专业\"],\"className\":[\"Profession\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"108\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"109\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"专业名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"110\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"111\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"删除标志\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"delFlag\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"137\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"专业描述\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"processDescribe\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.web\"],\"moduleName\":[\"college\"],\"businessName\":[\"profession\"],\"functionName\":[\"专业\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"高校后台管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-17 17:20:09');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"apply_info\"],\"tableComment\":[\"申请表\"],\"className\":[\"ApplyInfo\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"93\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"94\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"95\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"sex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"96\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"identifyCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"97\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"本人电话\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"phone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"98\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-17 17:21:05');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"apply_info\"],\"tableComment\":[\"申请表\"],\"className\":[\"ApplyInfo\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"93\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"94\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"95\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"性别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"sex\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"96\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"identifyCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"97\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"本人电话\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"phone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"98\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnCom', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-17 17:21:57');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/school_news', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-17 17:23:25');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/profession', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-18 20:25:23');
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"profession\"],\"tableComment\":[\"专业\"],\"className\":[\"Profession\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"108\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"109\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"专业名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"110\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"专业类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"111\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"删除标志\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"delFlag\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"137\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"专业描述\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"processDescribe\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"summernote\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"139\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"专业封面图\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"processImg\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].isRequired\":[\"1\"],\"columns[5].htmlType\":[\"upload\"],\"columns[5].dictType\":', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-18 20:26:31');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/profession', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-18 20:26:38');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/profession', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-18 20:26:48');
INSERT INTO `sys_oper_log` VALUES (151, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', 'null', 1, '不允许操作超级管理员角色', '2021-01-18 20:38:04');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2030', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2021-01-18 20:47:34');
INSERT INTO `sys_oper_log` VALUES (153, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"信息技术\"],\"processDescribe\":[\"<p><b>啊啊啊</b></p>\"],\"processImg\":[\"\"],\"schoolId\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe,                          school_id )           values ( ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-18 20:52:05');
INSERT INTO `sys_oper_log` VALUES (154, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"xin\"],\"processDescribe\":[\"<p><b>aa</b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/18/5778d53f-c334-4743-812e-fe426f24fc7b.jpg\"],\"schoolId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-18 20:55:40');
INSERT INTO `sys_oper_log` VALUES (155, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/18/5778d53f-c334-4743-812e-fe426f24fc7b.jpg\"],\"schoolId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-18 22:58:10');
INSERT INTO `sys_oper_log` VALUES (156, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p><u><b>AAAA</b></u></p>\"],\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-19 20:21:50');
INSERT INTO `sys_oper_log` VALUES (157, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p><u><b>AAAA</b></u></p>\"],\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-19 20:22:59');
INSERT INTO `sys_oper_log` VALUES (158, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p><u><b>AAAA</b></u></p>\"],\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-19 20:26:04');
INSERT INTO `sys_oper_log` VALUES (159, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-19 20:30:46');
INSERT INTO `sys_oper_log` VALUES (160, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/036f41e8-5b75-448b-9563-dd6ef175a3ee.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 20:31:58');
INSERT INTO `sys_oper_log` VALUES (161, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 20:32:32');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/school', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 20:50:04');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"school\"],\"tableComment\":[\"学校表\"],\"className\":[\"School\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"118\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"119\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学校名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"120\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学校lego\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"lego\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"upload\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"121\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学校封面图\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"coverImg\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"122\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学校简介\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"shortIntroduction\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"123\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"学校详细介绍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"introduction\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 20:51:40');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/school', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 20:59:01');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/school', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 20:59:10');
INSERT INTO `sys_oper_log` VALUES (166, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"\"],\"coverImg\":[\"\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"好\"],\"ranking\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:05:46');
INSERT INTO `sys_oper_log` VALUES (167, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"好\"],\"ranking\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:09:45');
INSERT INTO `sys_oper_log` VALUES (168, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"北京大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/2b810603-a006-443d-83da-1885e86f4169.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/704f0172-ff26-4e2d-90d4-536f8d0d2333.jpg\"],\"shortIntroduction\":[\"\"],\"introduction\":[\"<b>啊啊啊</b>\"],\"ranking\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:10:10');
INSERT INTO `sys_oper_log` VALUES (169, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"南昌大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/506840c7-8a38-4075-a329-446e68499d71.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/1ccefd55-7727-4afa-9d91-d4b5f8c0b824.jpg\"],\"shortIntroduction\":[\"\"],\"introduction\":[\"\"],\"ranking\":[\"8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:10:33');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/school_news', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:19:46');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"school_news\"],\"tableComment\":[\"学校新闻表\"],\"className\":[\"SchoolNews\"],\"functionAuthor\":[\"ouyangjie\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"126\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"128\"],\"columns[1].sort\":[\"3\"],\"columns[1].columnComment\":[\"文章内容\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"newsContent\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"summernote\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"129\"],\"columns[2].sort\":[\"4\"],\"columns[2].columnComment\":[\"删除标志\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"delFlag\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"130\"],\"columns[3].sort\":[\"5\"],\"columns[3].columnComment\":[\"创建时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"createDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"138\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"文章标题\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contentTitle\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.web\"],\"moduleName\":[\"college\"],\"businessName\":[\"news\"],\"functionName\":[\"学校新闻表\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"高校后台管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeC', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:20:07');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/school_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 21:24:37');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/school_news', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-01-19 21:24:47');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"学校管理\"],\"url\":[\"/college/school\"],\"target\":[\"menuItem\"],\"perms\":[\"college:school:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:33:50');
INSERT INTO `sys_oper_log` VALUES (175, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"sdfsd\"],\"processDescribe\":[\"<p>sddd</p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/baef4923-2d4d-4862-a0bb-3df0799f8020.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:38:52');
INSERT INTO `sys_oper_log` VALUES (176, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"name\":[\"sdfsd\"],\"processDescribe\":[\"<p>sddd</p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/baef4923-2d4d-4862-a0bb-3df0799f8020.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:39:09');
INSERT INTO `sys_oper_log` VALUES (177, '专业', 3, 'com.ruoyi.web.controller.college.ProfessionController.remove()', 'POST', 1, 'admin', '研发部门', '/college/profession/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:39:54');
INSERT INTO `sys_oper_log` VALUES (178, '学校新闻表', 1, 'com.ruoyi.web.controller.college.SchoolNewsController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/news/add', '127.0.0.1', '内网IP', '{\"newsContent\":[\"<p>sdfsdfasddfs</p>\"],\"createDate\":[\"2021-01-19\"],\"contentTitle\":[\"sdfsdaaaaa111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:41:02');
INSERT INTO `sys_oper_log` VALUES (179, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"南昌大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/506840c7-8a38-4075-a329-446e68499d71.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/1ccefd55-7727-4afa-9d91-d4b5f8c0b824.jpg\"],\"shortIntroduction\":[\"\"],\"introduction\":[\"ddd\"],\"ranking\":[\"8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-19 21:42:55');
INSERT INTO `sys_oper_log` VALUES (180, '学校表', 1, 'com.ruoyi.web.controller.college.SchoolController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/school/add', '127.0.0.1', '内网IP', '{\"name\":[\"南京大学\"],\"lego\":[\"\"],\"coverImg\":[\"\"],\"shortIntroduction\":[\"南京\"],\"introduction\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"ranking\":[\"6\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.insertSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into school          ( name,             lego,             cover_img,             short_introduction,             introduction,             ranking )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-01-21 20:56:18');
INSERT INTO `sys_oper_log` VALUES (181, '学校表', 1, 'com.ruoyi.web.controller.college.SchoolController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/school/add', '127.0.0.1', '内网IP', '{\"name\":[\"南京大学\"],\"lego\":[\"\"],\"coverImg\":[\"\"],\"shortIntroduction\":[\"南京\"],\"introduction\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"ranking\":[\"6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 20:58:25');
INSERT INTO `sys_oper_log` VALUES (182, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"bd64776892ea4f15\"],\"name\":[\"南京大学\"],\"lego\":[\"\"],\"coverImg\":[\"\"],\"shortIntroduction\":[\"南京\"],\"introduction\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"ranking\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 21:06:10');
INSERT INTO `sys_oper_log` VALUES (183, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p>1111</p>\"],\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.insertProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into profession          ( name,                          process_describe )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'process_img\' doesn\'t have a default value\n; Field \'process_img\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'process_img\' doesn\'t have a default value', '2021-01-21 21:32:24');
INSERT INTO `sys_oper_log` VALUES (184, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p>1111</p>\"],\"processImg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 21:34:42');
INSERT INTO `sys_oper_log` VALUES (185, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p>1111</p>\"],\"processImg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 21:54:36');
INSERT INTO `sys_oper_log` VALUES (186, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 21:54:45');
INSERT INTO `sys_oper_log` VALUES (187, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p>1111</p>\"],\"processImg\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:03:06');
INSERT INTO `sys_oper_log` VALUES (188, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', NULL, 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession                    where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3', '2021-01-21 22:17:18');
INSERT INTO `sys_oper_log` VALUES (189, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', NULL, 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession                    where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = null\' at line 3', '2021-01-21 22:18:53');
INSERT INTO `sys_oper_log` VALUES (190, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:22:19');
INSERT INTO `sys_oper_log` VALUES (191, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"test\"],\"processDescribe\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/9ac9c0f8-9f62-4fc7-afe1-1dcfbb791ec4.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:24:00');
INSERT INTO `sys_oper_log` VALUES (192, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"name\":[\"欧阳杰\"],\"processDescribe\":[\"<p>1111</p>\"],\"processImg\":[\"\"],\"schoolId\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:26:19');
INSERT INTO `sys_oper_log` VALUES (193, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"xin\"],\"processDescribe\":[\"<p><b>aa</b></p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/18/5778d53f-c334-4743-812e-fe426f24fc7b.jpg\"],\"schoolId\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:26:39');
INSERT INTO `sys_oper_log` VALUES (194, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"sdfasf\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/18/5778d53f-c334-4743-812e-fe426f24fc7b.jpg\"],\"schoolId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:26:51');
INSERT INTO `sys_oper_log` VALUES (195, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"w33333\"],\"processDescribe\":[\"<p>ddd</p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/21/ad62f9a3-25ac-43ed-be82-307c7cb88394.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:27:18');
INSERT INTO `sys_oper_log` VALUES (196, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"name\":[\"w33333\"],\"processDescribe\":[\"<p>ddd</p>\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/21/ad62f9a3-25ac-43ed-be82-307c7cb88394.jpg\"],\"schoolId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:29:23');
INSERT INTO `sys_oper_log` VALUES (197, '专业', 1, 'com.ruoyi.web.controller.college.ProfessionController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/add', '127.0.0.1', '内网IP', '{\"name\":[\"aa\"],\"processDescribe\":[\"<p>aaa</p>\"],\"processImg\":[\"\"],\"schoolId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:29:32');
INSERT INTO `sys_oper_log` VALUES (198, '学校新闻表', 2, 'com.ruoyi.web.controller.college.SchoolNewsController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/news/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"newsContent\":[\"<p>sdfsdfasddfs1111</p>\"],\"createDate\":[\"2021-01-19\"],\"contentTitle\":[\"sdfsdaaaaa111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:30:17');
INSERT INTO `sys_oper_log` VALUES (199, '专业', 3, 'com.ruoyi.web.controller.college.ProfessionController.remove()', 'POST', 1, 'admin', '研发部门', '/college/profession/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-01-21 22:30:25');
INSERT INTO `sys_oper_log` VALUES (200, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"bd64776892ea4f15\"],\"name\":[\"南京大学\"],\"lego\":[\"http://localhost/profile/upload/2021/02/07/4e545dfe-4a3e-468f-887e-b61320ff5ee4.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/02/07/eb69ff85-79a2-40e5-815d-f3e06bfbab11.jpg\"],\"shortIntroduction\":[\"南京\"],\"introduction\":[\"<p><b><u>啊啊啊</u></b></p>\"],\"ranking\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-07 03:33:15');
INSERT INTO `sys_oper_log` VALUES (201, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; color: rgb(71, 72, 73); font-size: 14px; line-height: 1; background: 0px 0px; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60825\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">985工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60826\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">211工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60827\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">研究生院</a></li></ul></dd></dl><div class=\\\"lemma-summary\\\" label-module=\\\"lemmaSummary\\\" style=\\\"clear: both; font-size: 14px; overflow-wrap: break-word', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.updateSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update school          SET name = ?,             lego = ?,             cover_img = ?,             short_introduction = ?,             introduction = ?,             ranking = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\n; Data truncation: Data too long for column \'introduction\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1', '2021-02-15 09:31:16');
INSERT INTO `sys_oper_log` VALUES (202, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; color: rgb(71, 72, 73); font-size: 14px; line-height: 1; background: 0px 0px; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60825\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">985工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60826\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">211工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60827\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">研究生院</a></li></ul></dd></dl><div class=\\\"lemma-summary\\\" label-module=\\\"lemmaSummary\\\" style=\\\"clear: both; font-size: 14px; overflow-wrap: break-word', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.updateSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update school          SET name = ?,             lego = ?,             cover_img = ?,             short_introduction = ?,             introduction = ?,             ranking = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\n; Data truncation: Data too long for column \'introduction\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1', '2021-02-15 09:34:22');
INSERT INTO `sys_oper_log` VALUES (203, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; color: rgb(71, 72, 73); font-size: 14px; line-height: 1; background: 0px 0px; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60825\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">985工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60826\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">211工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60827\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">研究生院</a></li></ul></dd></dl><div class=\\\"lemma-summary\\\" label-module=\\\"lemmaSummary\\\" style=\\\"clear: both; font-size: 14px; overflow-wrap: break-word', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.updateSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update school          SET name = ?,             lego = ?,             cover_img = ?,             short_introduction = ?,             introduction = ?,             ranking = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\n; Data truncation: Data too long for column \'introduction\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1', '2021-02-15 09:34:51');
INSERT INTO `sys_oper_log` VALUES (204, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; color: rgb(71, 72, 73); font-size: 14px; line-height: 1; background: 0px 0px; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60825\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">985工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60826\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">211工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60827\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">研究生院</a></li></ul></dd></dl><div class=\\\"lemma-summary\\\" label-module=\\\"lemmaSummary\\\" style=\\\"clear: both; font-size: 14px; overflow-wrap: break-word', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.updateSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update school          SET name = ?,             lego = ?,             cover_img = ?,             short_introduction = ?,             introduction = ?,             ranking = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\n; Data truncation: Data too long for column \'introduction\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1', '2021-02-15 09:35:06');
INSERT INTO `sys_oper_log` VALUES (205, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; color: rgb(71, 72, 73); font-size: 14px; line-height: 1; background: 0px 0px; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60825\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">985工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60826\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">211工程</a></li><li style=\\\"margin: 0px 5px 0px 0px; padding: 5px; list-style: none; float: left; border: 1px solid rgb(223, 241, 252); background: rgb(239, 247, 255);\\\"><a href=\\\"http://baike.baidu.com/wikitag/taglist?tagId=60827\\\" target=\\\"_blank\\\" nslog-type=\\\"10001801\\\" style=\\\"color: rgb(61, 140, 219);\\\">研究生院</a></li></ul></dd></dl><div class=\\\"lemma-summary\\\" label-module=\\\"lemmaSummary\\\" style=\\\"clear: both; font-size: 14px; overflow-wrap: break-word', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\SchoolMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.SchoolMapper.updateSchool-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update school          SET name = ?,             lego = ?,             cover_img = ?,             short_introduction = ?,             introduction = ?,             ranking = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1\n; Data truncation: Data too long for column \'introduction\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'introduction\' at row 1', '2021-02-15 09:35:09');
INSERT INTO `sys_oper_log` VALUES (206, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"清华大学\"],\"lego\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/01/19/df67f4c3-b245-44c0-ac92-5ca660a7e7fc.jpg\"],\"shortIntroduction\":[\"很好\"],\"introduction\":[\"<dl class=\\\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-\\\" style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; width: 700px;\\\"><dd class=\\\"lemmaWgt-lemmaTitle-keyInfo lemmaWgt-lemmaTitle-keyInfo-with-link\\\" style=\\\"margin-top: 5px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border-left: 0px; line-height: 1; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; display: inline-block; vertical-align: middle;\\\"><ul style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; font-size: 14px;\\\"><font color=\\\"#474849\\\" face=\\\"arial, tahoma, Microsoft Yahei, 宋体, sans-serif\\\" style=\\\"\\\"><ul style=\\\"background-color: rgb(239, 247, 255); margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><b>985工程211工程研究生院</b></ul><ul style=\\\"margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><b style=\\\"background-color: rgb(239, 247, 255);\\\">清华大学（Tsinghua University</b><span style=\\\"background-color: rgb(239, 247, 255);\\\">），简称“</span><span style=\\\"background-color: rgb(255, 0, 0);\\\">清华</span><span style=\\\"background-color: rgb(239, 247, 255);\\\">”，是中华人民共和国教育部直属的全国重点大学， [1]&nbsp; 位列国家“双一流”A类、“985工程”、“211工程”，入选“2011计划”、“珠峰计划”、“强基计划”、“111计划”，为九校联盟（C9）、松联盟、中国大学校长联谊会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员、中国高层次人才培养和科学技术研究的基地，被誉为“红色工程师的摇篮”。 [1-3]&nbsp;</span></ul><ul style=\\\"background-color: rgb(239, 247, 255); margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\">学校前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-15 09:36:23');
INSERT INTO `sys_oper_log` VALUES (207, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好？\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-16 21:05:22');
INSERT INTO `sys_oper_log` VALUES (208, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好？\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-16 21:05:28');
INSERT INTO `sys_oper_log` VALUES (209, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好？\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-16 21:21:28');
INSERT INTO `sys_oper_log` VALUES (210, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好？\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-16 21:21:36');
INSERT INTO `sys_oper_log` VALUES (211, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"<b><span style=\\\"font-size: 18px;\\\">清华大学好还是北京大学好？</span></b>\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 09:03:14');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"question_answer_association\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 12:53:07');
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/question_answer_association', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 12:56:16');
INSERT INTO `sys_oper_log` VALUES (214, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/question_answer_association', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 12:56:58');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 12:57:11');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"question_answer_association\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-17 12:57:17');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/question_answer_association', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-02-17 13:45:46');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/question_answer_association', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2021-02-17 13:46:01');
INSERT INTO `sys_oper_log` VALUES (219, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"2\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession          SET name = ?,                                       process_describe = ?,             process_img = ?,             ?,             school_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7', '2021-02-19 13:21:53');
INSERT INTO `sys_oper_log` VALUES (220, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"2\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession          SET name = ?,                                       process_describe = ?,             process_img = ?,             ?,             school_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'2,\n            school_id = \'1\' \n        where id = 1\' at line 7', '2021-02-19 13:23:03');
INSERT INTO `sys_oper_log` VALUES (221, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', NULL, 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( create_date )           values ( sysdate() )\r\n### Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\n; Field \'name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'name\' doesn\'t have a default value', '2021-02-22 19:22:09');
INSERT INTO `sys_oper_log` VALUES (222, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"q\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sex\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,                                                    school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,                                                    ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'sex\' doesn\'t have a default value\n; Field \'sex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sex\' doesn\'t have a default value', '2021-02-22 19:22:09');
INSERT INTO `sys_oper_log` VALUES (223, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"qqq\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sex\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,                                                    school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,                                                    ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'sex\' doesn\'t have a default value\n; Field \'sex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sex\' doesn\'t have a default value', '2021-02-22 19:24:07');
INSERT INTO `sys_oper_log` VALUES (224, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,                                       school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,             ?,                                       ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value\n; Field \'identify_card\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value', '2021-02-22 19:25:26');
INSERT INTO `sys_oper_log` VALUES (225, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"qq1\"],\"sex\":[\"0\"],\"identifyCard\":[\"11111\"],\"phone\":[\"1111\"],\"schoolId\":[\"1\"],\"professionId\":[\"1\"],\"studentType\":[\"0\"],\"graduationSchool\":[\"1111\"],\"midtermScore\":[\"11\"],\"comment\":[\"111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-22 19:27:22');
INSERT INTO `sys_oper_log` VALUES (226, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"111\"],\"sex\":[\"0\"],\"identifyCard\":[\"11\"],\"phone\":[\"111\"],\"schoolId\":[\"3\"],\"professionId\":[\"2\"],\"studentType\":[\"0\"],\"graduationSchool\":[\"1111\"],\"midtermScore\":[\"111\"],\"comment\":[\"111111\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-22 20:29:19');
INSERT INTO `sys_oper_log` VALUES (227, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"aa\"],\"sex\":[\"0\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,                                       school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,             ?,                                       ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value\n; Field \'identify_card\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'identify_card\' doesn\'t have a default value', '2021-02-22 20:30:52');
INSERT INTO `sys_oper_log` VALUES (228, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"\"],\"sex\":[\"0\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( sex,                                       school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,                                       ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\n; Field \'name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'name\' doesn\'t have a default value', '2021-02-22 21:07:49');
INSERT INTO `sys_oper_log` VALUES (229, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"1\"],\"year\":[\"3\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'1,\n            3,\n            school_id = \'1\' \n        where id = 1\' at line 7\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession          SET name = ?,                                       process_describe = ?,             process_img = ?,             ?,             ?,             school_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'1,\n            3,\n            school_id = \'1\' \n        where id = 1\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'1,\n            3,\n            school_id = \'1\' \n        where id = 1\' at line 7', '2021-02-23 23:51:32');
INSERT INTO `sys_oper_log` VALUES (230, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"1\"],\"year\":[\"5\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'rank= 1,\n            year= 5,\n            school_id = \'1\' \n        where id = 1\' at line 7\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ProfessionMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ProfessionMapper.updateProfession-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update profession          SET name = ?,                                       process_describe = ?,             process_img = ?,             rank= ?,             year= ?,             school_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'rank= 1,\n            year= 5,\n            school_id = \'1\' \n        where id = 1\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'rank= 1,\n            year= 5,\n            school_id = \'1\' \n        where id = 1\' at line 7', '2021-02-23 23:54:03');
INSERT INTO `sys_oper_log` VALUES (231, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"1\"],\"year\":[\"5\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-23 23:56:45');
INSERT INTO `sys_oper_log` VALUES (232, '专业', 2, 'com.ruoyi.web.controller.college.ProfessionController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/profession/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"计算机科学与技术\"],\"processDescribe\":[\"专业介绍面向机器人制造厂商、工业机器人系统集成商和应用企业，培养德、智、体、美全面发展，掌握工业机器人应用与维护知识与技能，具备工业机器人操作、安装、调试、编程、维护能力。工业机器人专业，主要从事自动化成套装备中工业机器人工作站的现场编程、调试维护、人机界面编程、系统集成、生产技术管理，以及工业机器人销售和售后服务工作，有一定的自我学习、自我发展能力、创新能力和良好的职业素养的高技能应用型人才。&nbsp;专业前景二十一世纪是人工智能的新启元，智能制造成为传统制造业转型升级、高端装备制造业走出去及降低企业运营成本的必由之路，工业机器人及智能装备制造产业将享用前所未有的发展机遇。随着中国制造2025国家战略的提出，新一轮技术革命与产业变革深入，工业经济转型升级步伐加快工厂自动化和智能化的趋势，使得我国机器人整体市场需求快速增长，对工业机器人应用人才的大量需求已经到来。&nbsp;&nbsp;主修课程机械制造基础、电工电子、机械制图、液压与气动、电气控制与PLC、单片机与C语言、工业机器人编程、工业机器人系统集成、工业机器人虑拟系统仿真等。&nbsp;就业岗位机器人维修技术人员、机器人工作站设计与安装、机器人销售工程师等。\"],\"ranking\":[\"3\"],\"year\":[\"5\"],\"processImg\":[\"http://localhost/profile/upload/2021/01/19/efa5e737-c438-4a3b-8791-e2b2771f94d3.jpg\"],\"schoolId\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-23 23:57:11');
INSERT INTO `sys_oper_log` VALUES (233, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"\"],\"sex\":[\"0\"],\"identifyCard\":[\"\"],\"phone\":[\"\"],\"schoolId\":[\"-1\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( sex,                                       school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,                                       ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'name\' doesn\'t have a default value\n; Field \'name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'name\' doesn\'t have a default value', '2021-02-25 22:46:36');
INSERT INTO `sys_oper_log` VALUES (234, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'identify_card\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,             identify_card,             phone,             school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'identify_card\' at row 1\n; Data truncation: Out of range value for column \'identify_card\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'identify_card\' at row 1', '2021-02-27 17:56:47');
INSERT INTO `sys_oper_log` VALUES (235, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'phone\' at row 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,             identify_card,             phone,             school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'phone\' at row 1\n; Data truncation: Out of range value for column \'phone\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'phone\' at row 1', '2021-02-27 17:58:17');
INSERT INTO `sys_oper_log` VALUES (236, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'graduation_school\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,             identify_card,             phone,             school_id,             profession_id,             student_type,                                       comment,             create_date )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'graduation_school\' doesn\'t have a default value\n; Field \'graduation_school\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'graduation_school\' doesn\'t have a default value', '2021-02-27 17:58:59');
INSERT INTO `sys_oper_log` VALUES (237, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"22\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"-1\"],\"studentType\":[\"-1\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,             identify_card,             phone,             school_id,             profession_id,             student_type,             graduation_school,                          comment,             create_date )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value\n; Field \'midterm_score\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value', '2021-02-27 18:00:37');
INSERT INTO `sys_oper_log` VALUES (238, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\ApplyInfoMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.ApplyInfoMapper.insertApplyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into apply_info          ( name,             sex,             identify_card,             phone,             school_id,                                       graduation_school,                          comment,             create_date )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                          ?,             sysdate() )\r\n### Cause: java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value\n; Field \'midterm_score\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'midterm_score\' doesn\'t have a default value', '2021-02-27 18:03:06');
INSERT INTO `sys_oper_log` VALUES (239, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 18:04:03');
INSERT INTO `sys_oper_log` VALUES (240, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302111111111111\"],\"phone\":[\"13511111111\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 18:07:43');
INSERT INTO `sys_oper_log` VALUES (241, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"111\"],\"sex\":[\"0\"],\"identifyCard\":[\"360333333333333333\"],\"phone\":[\"15333333333\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 18:10:38');
INSERT INTO `sys_oper_log` VALUES (242, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"··1\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13422222222\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 18:43:37');
INSERT INTO `sys_oper_log` VALUES (243, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199706050012\"],\"phone\":[\"13024371111\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 18:45:30');
INSERT INTO `sys_oper_log` VALUES (244, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1111\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13433333333\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 19:02:03');
INSERT INTO `sys_oper_log` VALUES (245, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"钱钱钱\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"14333333333\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 19:06:10');
INSERT INTO `sys_oper_log` VALUES (246, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"15222222222\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 19:06:49');
INSERT INTO `sys_oper_log` VALUES (247, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"11\"],\"sex\":[\"0\"],\"identifyCard\":[\"360343333333333333\"],\"phone\":[\"14211111111\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 19:24:35');
INSERT INTO `sys_oper_log` VALUES (248, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"1111\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302199704030016\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"\"],\"professionId\":[\"\"],\"studentType\":[\"\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 19:25:14');
INSERT INTO `sys_oper_log` VALUES (249, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"朱隆禧\"],\"sex\":[\"0\"],\"identifyCard\":[\"360782199206101516\"],\"phone\":[\"13521187063\"],\"schoolId\":[\"1\"],\"professionId\":[\"1\"],\"studentType\":[\"2\"],\"graduationSchool\":[\"撒旦发射点\"],\"midtermScore\":[\"22\"],\"comment\":[\"胜多负少\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 20:19:10');
INSERT INTO `sys_oper_log` VALUES (250, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"朱隆禧\"],\"sex\":[\"0\"],\"identifyCard\":[\"360782199206101516\"],\"phone\":[\"13521187063\"],\"schoolId\":[\"1\"],\"professionId\":[\"1\"],\"studentType\":[\"2\"],\"graduationSchool\":[\"撒旦发射点\"],\"midtermScore\":[\"22\"],\"comment\":[\"胜多负少\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 21:52:32');
INSERT INTO `sys_oper_log` VALUES (251, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\FocusMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.FocusMapper.insertFocus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into focus\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-02-27 22:31:06');
INSERT INTO `sys_oper_log` VALUES (252, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\FocusMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.FocusMapper.insertFocus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into focus\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-02-27 22:31:20');
INSERT INTO `sys_oper_log` VALUES (253, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\FocusMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.FocusMapper.insertFocus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into focus\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-02-27 22:32:21');
INSERT INTO `sys_oper_log` VALUES (254, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"processImg\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\ruoyi2021\\4.6\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\college\\FocusMapper.xml]\r\n### The error may involve com.ruoyi.college.mapper.FocusMapper.insertFocus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into focus\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2021-02-27 22:33:15');
INSERT INTO `sys_oper_log` VALUES (255, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"img\":[\"http://localhost/profile/upload/2021/02/27/1a1e294f-ff2d-4369-847f-98e0cf18775d.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 22:35:04');
INSERT INTO `sys_oper_log` VALUES (256, '轮播图片', 1, 'com.ruoyi.web.controller.college.FocusController.addSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/add', '127.0.0.1', '内网IP', '{\"img\":[\"http://localhost/profile/upload/2021/02/27/5e36d401-3b0b-4462-ba61-e197355347eb.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 22:35:22');
INSERT INTO `sys_oper_log` VALUES (257, '轮播图片', 2, 'com.ruoyi.web.controller.college.FocusController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/focus/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"img\":[\"http://localhost/profile/upload/2021/02/27/1a1e294f-ff2d-4369-847f-98e0cf18775d.jpg\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-27 22:37:13');
INSERT INTO `sys_oper_log` VALUES (258, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好?\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-17\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:18:48');
INSERT INTO `sys_oper_log` VALUES (259, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-17\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:18:59');
INSERT INTO `sys_oper_log` VALUES (260, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave()', 'POST', 1, 'admin', '研发部门', '/college/answer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好?\"],\"userId\":[\"\"],\"createDate\":[\"2021-02-16\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:24:03');
INSERT INTO `sys_oper_log` VALUES (261, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"学生类别\"],\"dictType\":[\"student_type\"],\"status\":[\"0\"],\"remark\":[\"0-初中毕业生;1-高中毕业生；2-其他\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:38:15');
INSERT INTO `sys_oper_log` VALUES (262, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"初中毕业生\"],\"dictValue\":[\"1\"],\"dictType\":[\"student_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:38:48');
INSERT INTO `sys_oper_log` VALUES (263, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"高中毕业生\"],\"dictValue\":[\"1\"],\"dictType\":[\"student_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:39:04');
INSERT INTO `sys_oper_log` VALUES (264, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"其他\"],\"dictValue\":[\"2\"],\"dictType\":[\"student_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-02-28 00:39:21');
INSERT INTO `sys_oper_log` VALUES (265, '申请表', 1, 'com.ruoyi.web.controller.college.ApplyInfoController.addSave()', 'POST', 1, NULL, NULL, '/college/applyInfo/add', '127.0.0.1', '内网IP', '{\"name\":[\"小欧\"],\"sex\":[\"0\"],\"identifyCard\":[\"360302111111111111\"],\"phone\":[\"13024370921\"],\"schoolId\":[\"1\"],\"professionId\":[\"1\"],\"studentType\":[\"2\"],\"graduationSchool\":[\"\"],\"midtermScore\":[\"\"],\"comment\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 10:45:06');
INSERT INTO `sys_oper_log` VALUES (266, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2000,2001,2002,2003,2004,2005,2006,2007,2008,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2031,2032,2033,2034,2035,2036\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 10:59:16');
INSERT INTO `sys_oper_log` VALUES (267, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"sysadmin\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 11:00:05');
INSERT INTO `sys_oper_log` VALUES (268, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'sysadmin', '测试部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"管理员\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"test@qq.com\"],\"sex\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 11:06:03');
INSERT INTO `sys_oper_log` VALUES (269, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'sysadmin', '测试部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 11:06:35');
INSERT INTO `sys_oper_log` VALUES (270, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2000,2001,2002,2003,2004,2005,2006,2007,2008,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2031,2032,2033,2034,2035,2036\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-07 11:46:06');
INSERT INTO `sys_oper_log` VALUES (271, '学校新闻表', 2, 'com.ruoyi.web.controller.college.SchoolNewsController.editSave()', 'POST', 1, 'sysadmin', '测试部门', '/college/news/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"newsContent\":[\"<p>sdfsdfasddfs2222</p>\"],\"createDate\":[\"2021-01-19\"],\"contentTitle\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 20:42:48');
INSERT INTO `sys_oper_log` VALUES (272, '学校新闻表', 2, 'com.ruoyi.web.controller.college.SchoolNewsController.editSave()', 'POST', 1, 'sysadmin', '测试部门', '/college/news/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"newsContent\":[\"<p>sdfsdfasddfs2222</p>\"],\"createDate\":[\"2021-01-19\"],\"contentTitle\":[\"sd\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 20:42:56');
INSERT INTO `sys_oper_log` VALUES (273, '学校表', 1, 'com.ruoyi.web.controller.college.SchoolController.addSave()', 'POST', 1, 'sysadmin', '测试部门', '/college/school/add', '127.0.0.1', '内网IP', '{\"name\":[\"财经大学\"],\"lego\":[\"http://localhost/profile/upload/2021/03/16/f5004175-6435-4add-81d9-4bbc14c519f3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/03/16/6c6de84a-572a-4dbb-9660-00d135eeaea1.jpg\"],\"shortIntroduction\":[\"\"],\"introduction\":[\"<p>啊啊啊啊</p>\"],\"ranking\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 20:50:51');
INSERT INTO `sys_oper_log` VALUES (274, '学校表', 2, 'com.ruoyi.web.controller.college.SchoolController.editSave()', 'POST', 1, 'sysadmin', '测试部门', '/college/school/edit', '127.0.0.1', '内网IP', '{\"id\":[\"f389f7f7c7b54153\"],\"name\":[\"财经大学\"],\"lego\":[\"http://localhost/profile/upload/2021/03/16/f5004175-6435-4add-81d9-4bbc14c519f3.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/03/16/6c6de84a-572a-4dbb-9660-00d135eeaea1.jpg\"],\"shortIntroduction\":[\"财经大学的简介\"],\"introduction\":[\"<p>啊啊啊啊</p>\"],\"ranking\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 20:51:05');
INSERT INTO `sys_oper_log` VALUES (275, '学校表', 1, 'com.ruoyi.web.controller.college.SchoolController.addSave()', 'POST', 1, 'sysadmin', '测试部门', '/college/school/add', '127.0.0.1', '内网IP', '{\"name\":[\"上海交通大学\"],\"lego\":[\"http://localhost/profile/upload/2021/03/16/475166eb-58f4-418b-881d-40a1d1690309.jpg\"],\"coverImg\":[\"http://localhost/profile/upload/2021/03/16/de94561c-b061-4982-9fe7-2255d616de62.jpg\"],\"shortIntroduction\":[\"交通大学的简介\"],\"introduction\":[\"<p>啊发发</p>\"],\"ranking\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 20:52:10');
INSERT INTO `sys_oper_log` VALUES (276, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦1\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:32:44');
INSERT INTO `sys_oper_log` VALUES (277, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦22\",\"亲，要高考分数的哦\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:34:09');
INSERT INTO `sys_oper_log` VALUES (278, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦1\",\"亲，要高考分数的哦\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:46:15');
INSERT INTO `sys_oper_log` VALUES (279, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦ww\",\"亲，要高考分数的哦\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:47:14');
INSERT INTO `sys_oper_log` VALUES (280, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦22\"],\"questionAnswers[0].id\":[\"5\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:48:12');
INSERT INTO `sys_oper_log` VALUES (281, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦\"],\"questionAnswers[0].id\":[\"5\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:57:15');
INSERT INTO `sys_oper_log` VALUES (282, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲，要高考分数的哦！\"],\"questionAnswers[0].id\":[\"5\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-16 23:57:46');
INSERT INTO `sys_oper_log` VALUES (283, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"qa\":[\"职高秋季招生是什么意思？\"],\"aa\":[\"更新的aa哦\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:31:39');
INSERT INTO `sys_oper_log` VALUES (284, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"qa\":[\"清华大学好还是北京大学好呢?\"],\"questionAnswers[0].qa\":[\"清华大学（Tsinghua University），简称“清华”，是中华人民共和国教育部直属的全国重点大学， [1]  位列国家“双一流”A类、“985工程”、“211工程”，入选“2011计划”、“珠峰计划”、“强基计划”、“111计划”，为九校联盟（C9）、松联盟、中国大学校长联谊会、亚洲大学联盟、环太平洋大学联盟、清华—剑桥—MIT低碳大学联盟成员、中国高层次人才培养和科学技术研究的基地，被誉为“红色工程师的摇篮”。 [1-3] \\r\\n学校前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。 [4] \\r\\n截至2020年8月，清华大学校园面积442.12公顷，建筑面积281.70万平方米；设有21个学院、59教学系，开设有82个本科专业；有博士后科研流动站50个，一级学科国家重点学科22个，一级学科博士、硕士学位授权点60个；有教职工15190人，在校生53302人。\"],\"questionAnswers[0].id\":[\"4\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:37:33');
INSERT INTO `sys_oper_log` VALUES (285, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"qa\":[\"读职高要高考分数吗？\"],\"questionAnswers[0].qa\":[\"亲亲，要高考分数的哦！\"],\"questionAnswers[0].id\":[\"5\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:37:46');
INSERT INTO `sys_oper_log` VALUES (286, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"qa\":[\"职高秋季招生是什么意思？\"],\"aa\":[\"不知道啊\"],\"userId\":[\"\"]}', 'null', 1, '', '2021-03-17 00:37:59');
INSERT INTO `sys_oper_log` VALUES (287, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"qa\":[\"职高秋季招生是什么意思？\"],\"aa\":[\"不知道\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:39:11');
INSERT INTO `sys_oper_log` VALUES (288, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"qa\":[\"职高秋季招生是什么意思？\"],\"questionAnswers[0].qa\":[\"不知道啊\"],\"questionAnswers[0].id\":[\"11\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:39:32');
INSERT INTO `sys_oper_log` VALUES (289, '问答', 1, 'com.ruoyi.web.controller.college.QuestionAnswerController.addSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/add', '127.0.0.1', '内网IP', '{\"qa\":[\"1+1\"],\"aa\":[\"\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:47:44');
INSERT INTO `sys_oper_log` VALUES (290, '问答', 2, 'com.ruoyi.web.controller.college.QuestionAnswerController.editSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"qa\":[\"1+1\"],\"aa\":[\"2\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:47:49');
INSERT INTO `sys_oper_log` VALUES (291, '问答', 1, 'com.ruoyi.web.controller.college.QuestionAnswerController.addSave1()', 'POST', 1, 'sysadmin', '测试部门', '/college/answer/web/add', '127.0.0.1', '内网IP', '{\"qa\":[\"2+2\"],\"aa\":[\"4\"],\"userId\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2021-03-17 00:48:14');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-01-06 21:43:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-01-06 21:43:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2021-01-06 21:43:53', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2021-01-06 21:43:53', 'admin', '2021-03-07 11:46:06', '普通角色');
INSERT INTO `sys_role` VALUES (100, '测试用户', 'test', 3, '1', '0', '0', 'admin', '2021-01-16 18:31:07', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);
INSERT INTO `sys_role_menu` VALUES (2, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1049);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-03-07 11:45:49', '2021-01-06 21:43:53', 'admin', '2021-01-06 21:43:53', '', '2021-03-07 11:45:49', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'sysadmin', '管理员', '00', 'test@qq.com', '15666666666', '1', '/profile/avatar/2021/03/07/12dd06a2-8e41-4361-8d68-9883a0c7e002.png', '20dd7f492aca23132b0d5b99c3210058', '9c4f05', '0', '0', '127.0.0.1', '2021-03-17 00:49:17', '2021-01-06 21:43:53', 'admin', '2021-01-06 21:43:53', '', '2021-03-17 00:49:16', '测试员');
INSERT INTO `sys_user` VALUES (100, 108, 'test1', 'test1', '00', '2313968604@qq.com', '13024370921', '0', '', '8c3223730f92405f850fcaacd0e18a1c', 'c43f53', '0', '0', '127.0.0.1', '2021-01-16 20:44:45', NULL, 'admin', '2021-01-16 18:31:48', '', '2021-01-16 20:44:44', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('0c2f70e7-2b1e-49b5-88b9-859542b4a9cf', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-02-15 09:30:04', '2021-02-19 13:22:57', -60000);
INSERT INTO `sys_user_online` VALUES ('37075fa5-3007-479f-9190-4b3421aff7fa', 'sysadmin', '测试部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-03-16 20:40:44', '2021-03-17 00:56:30', -60000);
INSERT INTO `sys_user_online` VALUES ('4e853182-bb74-446c-86a0-b4cb8493c5d8', 'sysadmin', '测试部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-03-07 11:10:26', '2021-03-07 11:12:42', -60000);
INSERT INTO `sys_user_online` VALUES ('6f70b381-0d80-4a1c-ad75-70aa5333aa73', 'sysadmin', '测试部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-03-07 11:46:10', '2021-03-08 12:40:51', -60000);
INSERT INTO `sys_user_online` VALUES ('7378a961-a698-4c12-9455-c87e3b291935', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-02-23 23:05:54', '2021-02-23 23:56:26', -60000);
INSERT INTO `sys_user_online` VALUES ('739b7ff3-8c58-401a-b7a2-6d74e193dca3', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-02-28 00:09:28', '2021-02-28 21:52:46', -60000);
INSERT INTO `sys_user_online` VALUES ('c784f3cb-a4ed-474b-aae3-faac5aa4b104', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', 'on_line', '2021-02-27 21:52:32', '2021-02-27 22:34:53', -60000);
INSERT INTO `sys_user_online` VALUES ('cba01318-9dff-4173-8911-16706d5634d9', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-02-07 03:32:27', '2021-02-07 03:34:43', -60000);
INSERT INTO `sys_user_online` VALUES ('e3ef2eb0-a319-40f9-ab9e-b7321055252d', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-01-22 12:03:00', '2021-01-25 09:49:02', -60000);
INSERT INTO `sys_user_online` VALUES ('ee8af12f-9c84-4ae9-96a8-989bbbfc9d9b', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-01-17 16:54:25', '2021-01-21 23:49:39', -60000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
