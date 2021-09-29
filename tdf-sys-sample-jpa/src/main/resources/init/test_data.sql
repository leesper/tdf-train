/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : taiji

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 29/09/2021 08:59:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('9db6a6b405cf45548e263a35129158a5', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, '', '234234234');

-- ----------------------------
-- Table structure for course_student_score
-- ----------------------------
DROP TABLE IF EXISTS `course_student_score`;
CREATE TABLE `course_student_score`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_student_score
-- ----------------------------
INSERT INTO `course_student_score` VALUES ('1', '11', '1', '1');
INSERT INTO `course_student_score` VALUES ('13', '13', '2', '2');
INSERT INTO `course_student_score` VALUES ('2', '12', '1', '1');
INSERT INTO `course_student_score` VALUES ('34', '11', '3', '2');
INSERT INTO `course_student_score` VALUES ('45', '11', '2', '3');

-- ----------------------------
-- Table structure for data_item
-- ----------------------------
DROP TABLE IF EXISTS `data_item`;
CREATE TABLE `data_item`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_index` int(0) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code_index` int(0) NULL DEFAULT NULL,
  `data_item_type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `字典编码`(`code`, `flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_item
-- ----------------------------
INSERT INTO `data_item` VALUES ('05407c6ded41400ebdccfa95681ef7da', 'admin', '2020-11-20 14:45:09.293000', 1, NULL, NULL, '3', NULL, 'c50aa804aa8000c9c474f930d794116e', 'c50aa804aa8000c9c474f930d794116e,13f9f080b780420996853822a6ed3193', '3', 3, '71352369576f4446a06d293c569bb1c2', '女', '1');
INSERT INTO `data_item` VALUES ('1ceb8cf86e584557a43001e8470fdfc6', 'admin', '2020-07-14 17:20:53.520000', 1, NULL, NULL, '', NULL, '', '1ceb8cf86e584557a43001e8470fdfc6', 'SBU', 1, '20ba4900385c4844891a8dae6bf0fd67', 'SBU', '1');
INSERT INTO `data_item` VALUES ('603f6a43e8004e598719a1f997ad5fab', 'admin', '2020-11-20 14:48:58.725000', 1, NULL, NULL, '1', NULL, 'c50aa804aa8000c9c474f930d794116e', 'c50aa804aa8000c9c474f930d794116e,603f6a43e8004e598719a1f997ad5fab', 'baba', 1, '20ba4900385c4844891a8dae6bf0fd67', '爸爸', '1');
INSERT INTO `data_item` VALUES ('6e178f1e52cc4f9e84d72a7b561db2e2', 'admin', '2020-11-20 14:44:59.332000', 1, NULL, NULL, '1', NULL, 'c50aa804aa8000c9c474f930d794116e', 'c50aa804aa8000c9c474f930d794116e,4e1ec37567034457a20341b6e705cc3a', '1', 1, '71352369576f4446a06d293c569bb1c2', '男', '1');
INSERT INTO `data_item` VALUES ('85fa13484148496fb74a3efd71b23c1b', 'admin', '2020-07-14 17:21:04.153000', 1, NULL, NULL, '', NULL, '', '85fa13484148496fb74a3efd71b23c1b', 'BU', 2, '20ba4900385c4844891a8dae6bf0fd67', 'BU', '1');
INSERT INTO `data_item` VALUES ('88bdd1c147bd42ea878df4bb0e475c71', 'admin', '2020-11-20 14:50:55.090000', 1, NULL, NULL, '4', NULL, 'f7d3c7e005194ff68ca20322ed245d59', 'b23f9f1d48704a13af90a45508c368e8,afe2800750af45e1bb72f445aa1480f0', 'ere', 4, '20ba4900385c4844891a8dae6bf0fd67', '妈妈', '1');
INSERT INTO `data_item` VALUES ('9c27fd6176314d5ea3de677285cedc0a', 'admin', '2020-11-20 14:51:17.028000', 0, 'admin', '2020-11-20 15:34:55.675000', '3', NULL, '', 'fb3f5a4e43934bff9c19bb4a8459ba7b', '1erf', 3, '20ba4900385c4844891a8dae6bf0fd67', '老爷', '1');
INSERT INTO `data_item` VALUES ('c35724f4ea4b4e41881eecc78c43fdbd', 'admin', '2020-11-20 14:50:30.355000', 1, NULL, NULL, '1', NULL, '603f6a43e8004e598719a1f997ad5fab', 'c50aa804aa8000c9c474f930d794116e,603f6a43e8004e598719a1f997ad5fab,c35724f4ea4b4e41881eecc78c43fdbd', 'ert', 43, '20ba4900385c4844891a8dae6bf0fd67', '女儿', '1');
INSERT INTO `data_item` VALUES ('c3f95ecd1bce4e51b7f3ed8f0becf830', 'admin', '2020-11-20 14:49:26.895000', 0, 'admin', '2020-11-20 15:34:38.220000', '1', NULL, '', 'be9830a0f67a4ec6809537f65ff6d9d2', 'er', 1, '20ba4900385c4844891a8dae6bf0fd67', '儿子', '1');
INSERT INTO `data_item` VALUES ('c50aa804aa8000c9c474f930d794116e', 'admin', '2019-04-04 10:28:37.000000', 1, NULL, NULL, '性别', NULL, '', 'c50aa804aa8000c9c474f930d794116e', '2', 2, '71352369576f4446a06d293c569bb1c2', '性别', '1');
INSERT INTO `data_item` VALUES ('f665f8741402484086f6e114d25fdd3c', 'admin', '2020-11-20 14:50:01.706000', 1, NULL, NULL, '2', NULL, '603f6a43e8004e598719a1f997ad5fab', 'c50aa804aa8000c9c474f930d794116e,603f6a43e8004e598719a1f997ad5fab,f665f8741402484086f6e114d25fdd3c', 'qw', 2, '20ba4900385c4844891a8dae6bf0fd67', '儿子', '1');
INSERT INTO `data_item` VALUES ('f7d3c7e005194ff68ca20322ed245d59', 'admin', '2020-11-20 14:48:42.239000', 1, NULL, NULL, '12', NULL, '', 'b23f9f1d48704a13af90a45508c368e8', '12', 12, '20ba4900385c4844891a8dae6bf0fd67', '爷爷', '1');

-- ----------------------------
-- Table structure for data_item_type
-- ----------------------------
DROP TABLE IF EXISTS `data_item_type`;
CREATE TABLE `data_item_type`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `类型名称`(`type_name`, `flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_item_type
-- ----------------------------
INSERT INTO `data_item_type` VALUES ('20ba4900385c4844891a8dae6bf0fd67', 'admin', '2020-07-14 17:20:34.349000', 1, NULL, NULL, '部门类型', '部门类型');
INSERT INTO `data_item_type` VALUES ('71352369576f4446a06d293c569bb1c2', 'admin', '2020-06-11 16:51:14.479000', 1, 'admin', '2020-06-11 16:51:14.479000', '中文', '中文');
INSERT INTO `data_item_type` VALUES ('af598e2e3d9245bb99d330e98bb4dade', 'admin', '2020-07-15 10:15:40.931000', 1, NULL, NULL, '性别', '性别');

-- ----------------------------
-- Table structure for dept_info
-- ----------------------------
DROP TABLE IF EXISTS `dept_info`;
CREATE TABLE `dept_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_index` int(0) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_index` int(0) NULL DEFAULT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept_info
-- ----------------------------
INSERT INTO `dept_info` VALUES ('227b237a8be04452abd223ed271f8189', NULL, '2018-04-26 13:20:13.000000', 1, NULL, '2019-03-29 16:03:16.000000', 'TDC', NULL, NULL, '227b237a8be04452abd223ed271f8189', NULL, 1, '公司', '1', 'TDC', 'TDC');
INSERT INTO `dept_info` VALUES ('cde254475a744d75ad3c24ba599f4890', NULL, '2019-03-18 17:27:01.000000', 1, NULL, '2018-12-29 13:46:18.000000', 'TDC', NULL, '227b237a8be04452abd223ed271f8189', '227b237a8be04452abd223ed271f8189,cde254475a744d75ad3c24ba599f4890', NULL, 12, '部门', '1', 'TDC', NULL);

-- ----------------------------
-- Table structure for dept_user
-- ----------------------------
DROP TABLE IF EXISTS `dept_user`;
CREATE TABLE `dept_user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept_user
-- ----------------------------

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '0 男 1女',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('9db6a6b405cf45548e263a321294322', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, NULL, 'b1', 1, '广州市', 29);
INSERT INTO `employee` VALUES ('9db6a6b405cf45548e263a35129132423', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, NULL, 'a1', 1, '浙江省省杭州市', 21);
INSERT INTO `employee` VALUES ('9db6a6b405cf45548e263a35129158a5', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, '', '234234234', 0, NULL, NULL);
INSERT INTO `employee` VALUES ('9db6a6b405cf45548sad3a32129132423', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, NULL, 'c1', 0, '江苏省苏州市', 25);

-- ----------------------------
-- Table structure for employee_organization
-- ----------------------------
DROP TABLE IF EXISTS `employee_organization`;
CREATE TABLE `employee_organization`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `employee_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `organization_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_organization
-- ----------------------------
INSERT INTO `employee_organization` VALUES ('2312', '9db6a6b405cf45548sad3a32129132423', '9db6a6b4fdsf45548e263a3214111');
INSERT INTO `employee_organization` VALUES ('2334', '9db6a6b405cf45548e263a32129132423', '9db6a6b405cf45548e263a3516644');
INSERT INTO `employee_organization` VALUES ('2sad', '9db6a6b405cf45548e263a35129132423', '9db6a6b4fdsf45548e263a3214111');

-- ----------------------------
-- Table structure for file_storage
-- ----------------------------
DROP TABLE IF EXISTS `file_storage`;
CREATE TABLE `file_storage`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `relative_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `文件名`(`extension`, `file_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_storage
-- ----------------------------

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remote_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `result` int(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('398142b2b0dc4d028d3c7a21e356e42e', 'anonymousUser', '2021-09-28 21:40:34.349103', 1, NULL, NULL, NULL, '登陆成功', '0:0:0:0:0:0:0:1', 1, 'admin');
INSERT INTO `login_log` VALUES ('588c80c153b340b3b19e7ae66583cf37', 'anonymousUser', '2021-09-29 08:51:18.177201', 1, NULL, NULL, NULL, '登陆成功', '0:0:0:0:0:0:0:1', 1, 'admin');
INSERT INTO `login_log` VALUES ('8a5e4f48589c4388b5cce3d55fbda634', 'anonymousUser', '2021-09-28 16:22:45.717210', 1, NULL, NULL, NULL, '登陆成功', '0:0:0:0:0:0:0:1', 1, 'admin');
INSERT INTO `login_log` VALUES ('92be24f83ee44a3ba44801586ff61631', 'anonymousUser', '2021-09-28 16:59:39.442542', 1, NULL, NULL, NULL, '登陆成功', '0:0:0:0:0:0:0:1', 1, 'admin');
INSERT INTO `login_log` VALUES ('f771f707013a40e5aa66349adbfdf8bf', 'anonymousUser', '2021-09-28 21:36:42.234486', 1, NULL, NULL, NULL, '登陆成功', '0:0:0:0:0:0:0:1', 1, 'admin');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_index` int(0) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `authority_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `controller_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_classify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_index` int(0) NULL DEFAULT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `small_icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `菜单名称`(`menu_name`, `flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1c153daa9cd7400c8419e663b0eb473c', 'admin', '2020-07-14 16:14:38.718000', 1, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, 'menu', '/demo', 1, 'demo', 'Layout', 'setting');
INSERT INTO `menu` VALUES ('323c76618c6b56109bd490baf0d00902', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:50.000000', NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f,323c76618c6b56109bd490baf0d00902', NULL, NULL, NULL, NULL, 'menu', 'dept', 4, '机构管理', 'tdf/views/system-management/dept/main', 'dept');
INSERT INTO `menu` VALUES ('346c85e409b14e3f9517fbac7057476f', NULL, '2019-08-21 14:50:05.000000', 1, NULL, '2019-08-21 14:50:05.000000', '', NULL, 'd9369152df124e1aae855f743d3eedc8', 'da4c2695c36a50eab041735842b530e7,d9369152df124e1aae855f743d3eedc8,346c85e409b14e3f9517fbac7057476f', 'dictionary-multi/*', NULL, NULL, NULL, 'button', '', 1, '数据字典-按钮全部权限', NULL, 'setting');
INSERT INTO `menu` VALUES ('37b5c4f257ce4bfdbcf7d31a89d9fa2e', NULL, '2019-08-21 15:44:50.000000', 1, NULL, '2019-08-22 14:42:42.000000', '测试role-menu', NULL, '323c76618c6b56109bd490baf0d00902', '90a127ce319d5d93b3b49c697cfa138f,323c76618c6b56109bd490baf0d00902,37b5c4f257ce4bfdbcf7d31a89d9fa2e', 'dept/*', NULL, NULL, NULL, 'button', '', 1, '部门-按钮所有权限', NULL, '');
INSERT INTO `menu` VALUES ('3de22ff390ab5d06bafcce547ff780bb', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:51.000000', NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f,3de22ff390ab5d06bafcce547ff780bb', NULL, NULL, NULL, NULL, 'menu', 'group', 1, '用户组管理', 'tdf/views/system-management/group/main', 'user-group');
INSERT INTO `menu` VALUES ('68b62115036e4bcf8a666e207aef2e33', NULL, '2019-08-21 15:25:38.000000', 1, NULL, '2019-08-21 15:25:38.000000', '', NULL, 'b837b164e8f1443b9a5dae27c8611a06', '90a127ce319d5d93b3b49c697cfa138f,b837b164e8f1443b9a5dae27c8611a06,68b62115036e4bcf8a666e207aef2e33', 'log/*', NULL, NULL, NULL, 'button', '', 1, '日志列表-按钮全部权限', NULL, '');
INSERT INTO `menu` VALUES ('6ecb9fd6e70f50b2be035485928b5cd6', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:40.000000', NULL, NULL, 'da4c2695c36a50eab041735842b530e7', 'da4c2695c36a50eab041735842b530e7,6ecb9fd6e70f50b2be035485928b5cd6', NULL, NULL, NULL, NULL, 'menu', 'menu', 7, '菜单管理', 'tdf/views/system-management/menu/main', 'auth-menu');
INSERT INTO `menu` VALUES ('8bdc5038a6585fd2b5d3ef7b1e4bf4e1', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:53.000000', NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f,8bdc5038a6585fd2b5d3ef7b1e4bf4e1', NULL, NULL, NULL, NULL, 'menu', 'user', 2, '用户管理', 'tdf/views/system-management/user/main', 'user');
INSERT INTO `menu` VALUES ('8eacf685bedb40519f5259209e4f6a8f', NULL, '2019-08-21 15:47:33.000000', 1, NULL, '2019-08-21 15:47:33.000000', '', NULL, '8bdc5038a6585fd2b5d3ef7b1e4bf4e1', '90a127ce319d5d93b3b49c697cfa138f,8bdc5038a6585fd2b5d3ef7b1e4bf4e1,8eacf685bedb40519f5259209e4f6a8f', 'user/*', NULL, NULL, NULL, 'button', '', 1, '用户-按钮所有权限', NULL, '');
INSERT INTO `menu` VALUES ('8fb8fbc2613345c78e99f2ec4b284741', 'admin', '2020-07-15 13:50:44.857000', 1, NULL, NULL, '', NULL, 'a7e059d117b4438586ddb567d7fc584b', NULL, 'student/*', NULL, NULL, NULL, 'button', '', 1, '学生按钮权限', '', 'setting');
INSERT INTO `menu` VALUES ('90a127ce319d5d93b3b49c697cfa138f', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-23 10:48:40.000000', NULL, NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', NULL, NULL, NULL, NULL, 'menu', '/system', 1, '系统管理', 'Layout', 'setting');
INSERT INTO `menu` VALUES ('a7e059d117b4438586ddb567d7fc584b', 'admin', '2020-07-14 16:15:57.112000', 1, NULL, NULL, '', NULL, '1c153daa9cd7400c8419e663b0eb473c', NULL, '', NULL, NULL, NULL, 'menu', 'student', 2, 'student', 'demo/views/student/main', 'user');
INSERT INTO `menu` VALUES ('a80f3f63631e4beab8306831c2e54256', 'admin', '2020-07-14 16:18:29.065000', 1, NULL, NULL, '', NULL, '1c153daa9cd7400c8419e663b0eb473c', NULL, '', NULL, NULL, NULL, 'menu', 'course', 2, 'course', 'demo/views/course/main', 'user');
INSERT INTO `menu` VALUES ('ac1262624a6042d792b3c9fc6ab4a7a6', 'admin', '2020-07-14 16:19:43.368000', 1, NULL, NULL, '', NULL, '1c153daa9cd7400c8419e663b0eb473c', NULL, '', NULL, NULL, NULL, 'menu', 'classGrade', 3, 'classGrade', 'demo/views/classGrade/main', 'user');
INSERT INTO `menu` VALUES ('b837b164e8f1443b9a5dae27c8611a06', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:39.000000', NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f,b837b164e8f1443b9a5dae27c8611a06', NULL, NULL, NULL, NULL, 'menu', 'log', 5, '业务日志', 'tdf/views/system-management/logs/main', 'logs');
INSERT INTO `menu` VALUES ('be87d0711de047efaffeef3c123b7f00', NULL, '2019-06-28 08:15:14.000000', 1, NULL, '2019-06-28 08:15:14.000000', '1', NULL, 'be87d0711de047efaffeef3c123b7f30', 'be87d0711de047efaffeef3c123b7f30,be87d0711de047efaffeef3c123b7f00', '1', NULL, NULL, NULL, 'menu', '/index', 0, 'TDF', 'tdf/views/dashboard/index', 'index');
INSERT INTO `menu` VALUES ('be87d0711de047efaffeef3c123b7f30', '', '2019-06-28 08:15:14.000000', 1, '', '2019-06-28 08:15:14.000000', '1', NULL, NULL, 'be87d0711de047efaffeef3c123b7f30', '1', '', '', '', 'menu', '', 0, '', 'Layout', 'index');
INSERT INTO `menu` VALUES ('cb69ec0627bc40669534a85157027eeb', 'admin', '2020-05-13 17:30:39.000000', 1, NULL, NULL, '', NULL, 'da4c2695c36a50eab041735842b530e7', 'da4c2695c36a50eab041735842b530e7,cb69ec0627bc40669534a85157027eeb', '', NULL, NULL, NULL, 'menu', 'data-item-type', 3, '数据字典类型', 'tdf/views/system-management/dictionary-type/main', 'setting');
INSERT INTO `menu` VALUES ('d2249f50a3235286b173663a6c45122d', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:44.000000', NULL, NULL, '90a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f,d2249f50a3235286b173663a6c45122d,f06def714b63426ba08b7685811e17a5', NULL, NULL, NULL, NULL, 'menu', 'role', 3, '角色管理', 'tdf/views/system-management/role/main', 'user-role');
INSERT INTO `menu` VALUES ('d9369152df124e1aae855f743d3eedc8', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-29 16:47:44.000000', NULL, NULL, 'da4c2695c36a50eab041735842b530e7', 'da4c2695c36a50eab041735842b530e7,d9369152df124e1aae855f743d3eedc8', NULL, NULL, NULL, NULL, 'menu', 'dictionary-multi', 9, '数据字典', 'tdf/views/system-management/dictionary/multiMain', 'dictionary-multi');
INSERT INTO `menu` VALUES ('d97e9384995841789b25914542c74f77', NULL, '2019-08-21 15:23:24.000000', 1, NULL, '2019-08-21 15:23:24.000000', '', NULL, '22fc466264e65171a7631b2079a2b7f6', 'd97e9384995841789b25914542c74f77', 'dictionary-single/*', NULL, NULL, NULL, 'button', '', 1, '单级菜单-按钮全部权限', NULL, 'setting');
INSERT INTO `menu` VALUES ('da4c2695c36a50eab041735842b530e7', NULL, '2019-03-05 11:33:13.000000', 1, NULL, '2019-07-30 10:02:19.000000', NULL, NULL, NULL, 'da4c2695c36a50eab041735842b530e7', NULL, NULL, NULL, NULL, 'menu', '/dictionary-setting', 2, '资源管理', 'Layout', 'dictionary-setting');
INSERT INTO `menu` VALUES ('f06def714b63426ba08b7685811e17a5', NULL, '2019-08-15 17:07:19.000000', 1, NULL, '2019-08-15 17:07:19.000000', '', NULL, 'd2249f50a3235286b173663a6c45122d', '90a127ce319d5d93b3b49c697cfa138f,d2249f50a3235286b173663a6c45122d', 'role/*', NULL, NULL, NULL, 'button', '', 1, '角色-按钮全部权限', NULL, 'setting');
INSERT INTO `menu` VALUES ('f57723e59a09451f9faaa3bc6b92ca88', '', '2019-08-15 13:20:35.000000', 1, '', '2019-08-15 13:20:35.000000', '', NULL, '6ecb9fd6e70f50b2be035485928b5cd6', 'da4c2695c36a50eab041735842b530e7,6ecb9fd6e70f50b2be035485928b5cd6,f57723e59a09451f9faaa3bc6b92ca88', 'menu/*', '', '', '', 'button', '', 1, '菜单-按钮所有权限', '', 'setting');
INSERT INTO `menu` VALUES ('f69376890058460aa38f7581fa2f36da', NULL, '2019-08-21 15:47:03.000000', 1, NULL, '2019-08-21 15:47:03.000000', '', NULL, '3de22ff390ab5d06bafcce547ff780bb', '90a127ce319d5d93b3b49c697cfa138f,3de22ff390ab5d06bafcce547ff780bb,f69376890058460aa38f7581fa2f36da', 'group/*', NULL, NULL, NULL, 'button', '', 1, '用户组-按钮所有权限', NULL, '');

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_index` int(0) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('9db6a6b405cf45548e263a3214324', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, NULL, '信息部', '贵阳开发中心', NULL, NULL, NULL);
INSERT INTO `organization` VALUES ('9db6a6b405cf45548e263a3516644', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, '', '财务部', '贵阳财务中心', NULL, '9db6a6b4fdsf45548e263a3214111', '9db6a6b4fdsf45548e263a3214111,9db6a6b405cf45548e263a3516644');
INSERT INTO `organization` VALUES ('9db6a6b4fdsf45548e263a3214111', 'admin', '2021-09-24 09:44:34.668961', 1, NULL, NULL, NULL, '设计部', '贵阳设计中心', NULL, '', '9db6a6b4fdsf45548e263a3214111');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_index` int(0) NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `角色名称`(`role_name`, `flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('5b66ecf45d634159a08468898b1b3217', NULL, '2018-03-02 16:12:07.000000', 1, NULL, '2019-07-29 13:56:58.000000', NULL, NULL, NULL, 'ROLE_ADMIN');
INSERT INTO `role` VALUES ('cc377e1b32e74e71953ddcd595d5498b', NULL, '2019-08-07 13:34:58.000000', 1, NULL, '2019-07-08 13:59:53.000000', '1', NULL, 1, 'ROLE_USER');

-- ----------------------------
-- Table structure for role_group
-- ----------------------------
DROP TABLE IF EXISTS `role_group`;
CREATE TABLE `role_group`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_group
-- ----------------------------

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32171c153daa9cd7400c8419e663b0eb473c', '1c153daa9cd7400c8419e663b0eb473c', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217323c76618c6b56109bd490baf0d00902', '323c76618c6b56109bd490baf0d00902', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217346c85e409b14e3f9517fbac7057476f', '346c85e409b14e3f9517fbac7057476f', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b321737b5c4f257ce4bfdbcf7d31a89d9fa2e', '37b5c4f257ce4bfdbcf7d31a89d9fa2e', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32173a7fd63c81304f5c82a7681fd892fdd6', '3a7fd63c81304f5c82a7681fd892fdd6', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32173de22ff390ab5d06bafcce547ff780bb', '3de22ff390ab5d06bafcce547ff780bb', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b321768b62115036e4bcf8a666e207aef2e33', '68b62115036e4bcf8a666e207aef2e33', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32176ecb9fd6e70f50b2be035485928b5cd6', '6ecb9fd6e70f50b2be035485928b5cd6', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32177094928c2f4740c78ace4cd7bd3e733e', '7094928c2f4740c78ace4cd7bd3e733e', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32178bdc5038a6585fd2b5d3ef7b1e4bf4e1', '8bdc5038a6585fd2b5d3ef7b1e4bf4e1', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32178eacf685bedb40519f5259209e4f6a8f', '8eacf685bedb40519f5259209e4f6a8f', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32178f13fa7aa1dd40e181568e870a6a2d03', '8f13fa7aa1dd40e181568e870a6a2d03', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b32178fb8fbc2613345c78e99f2ec4b284741', '8fb8fbc2613345c78e99f2ec4b284741', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b321790a127ce319d5d93b3b49c697cfa138f', '90a127ce319d5d93b3b49c697cfa138f', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217a7e059d117b4438586ddb567d7fc584b', 'a7e059d117b4438586ddb567d7fc584b', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217a80f3f63631e4beab8306831c2e54256', 'a80f3f63631e4beab8306831c2e54256', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217ac1262624a6042d792b3c9fc6ab4a7a6', 'ac1262624a6042d792b3c9fc6ab4a7a6', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217b56cc0c761504142b0cca3f0eb3b43a4', 'b56cc0c761504142b0cca3f0eb3b43a4', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217b837b164e8f1443b9a5dae27c8611a06', 'b837b164e8f1443b9a5dae27c8611a06', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217be87d0711de047efaffeef3c123b7f00', 'be87d0711de047efaffeef3c123b7f00', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217be87d0711de047efaffeef3c123b7f30', 'be87d0711de047efaffeef3c123b7f30', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217cb69ec0627bc40669534a85157027eeb', 'cb69ec0627bc40669534a85157027eeb', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217d2249f50a3235286b173663a6c45122d', 'd2249f50a3235286b173663a6c45122d', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217d9369152df124e1aae855f743d3eedc8', 'd9369152df124e1aae855f743d3eedc8', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217da4c2695c36a50eab041735842b530e7', 'da4c2695c36a50eab041735842b530e7', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217f06def714b63426ba08b7685811e17a5', 'f06def714b63426ba08b7685811e17a5', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217f33d83225bef590d81f61a5afcbbca14', 'f33d83225bef590d81f61a5afcbbca14', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217f57723e59a09451f9faaa3bc6b92ca88', 'f57723e59a09451f9faaa3bc6b92ca88', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('5b66ecf45d634159a08468898b1b3217f69376890058460aa38f7581fa2f36da', 'f69376890058460aa38f7581fa2f36da', '5b66ecf45d634159a08468898b1b3217');
INSERT INTO `role_menu` VALUES ('cc377e1b32e74e71953ddcd595d5498bb56cc0c761504142b0cca3f0eb3b43a4', 'b56cc0c761504142b0cca3f0eb3b43a4', 'cc377e1b32e74e71953ddcd595d5498b');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('5b66ecf45d634159a08468898b1b32176613831cac9e4597abbd0138116a8f3c', '5b66ecf45d634159a08468898b1b3217', '6613831cac9e4597abbd0138116a8f3c');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `pk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `room_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pk`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for school_grade
-- ----------------------------
DROP TABLE IF EXISTS `school_grade`;
CREATE TABLE `school_grade`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_index` int(0) NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_grade
-- ----------------------------
INSERT INTO `school_grade` VALUES ('17da903ce8094cd39206bf65ac77e22a', 'admin', '2021-09-23 15:10:47.191000', 1, NULL, NULL, '', NULL, '68a79eda653845278bc34ffcf7733cfb', '68a79eda653845278bc34ffcf7733cfb,17da903ce8094cd39206bf65ac77e22a', '24243', NULL, NULL);
INSERT INTO `school_grade` VALUES ('68a79eda653845278bc34ffcf7733cfb', 'admin', '2021-09-23 15:10:30.487000', 1, NULL, NULL, '', NULL, NULL, '68a79eda653845278bc34ffcf7733cfb', '34', NULL, NULL);
INSERT INTO `school_grade` VALUES ('bbf887ec95e84040ba03e691d332fb2e', 'admin', '2021-09-23 15:10:37.691000', 1, NULL, NULL, '', NULL, '68a79eda653845278bc34ffcf7733cfb', '68a79eda653845278bc34ffcf7733cfb,bbf887ec95e84040ba03e691d332fb2e', '24', NULL, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `class_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('99a31ead60074ed5a70a63a846d5dd58', 'admin', '2021-09-24 09:43:38.176627', 1, NULL, NULL, '', '17da903ce8094cd39206bf65ac77e22a', '24243', '123123', '05407c6ded41400ebdccfa95681ef7da');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `pk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `teacher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `teacher_sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pk`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `group_index` int(0) NULL DEFAULT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('04de3dd663fd47cf9deea06a5a476614', NULL, '2019-07-08 09:36:44.000000', 1, NULL, '2019-08-07 13:38:41.000000', '1', 1, '用户组', '1');

-- ----------------------------
-- Table structure for user_group_user
-- ----------------------------
DROP TABLE IF EXISTS `user_group_user`;
CREATE TABLE `user_group_user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group_user
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_content` longblob NULL,
  `balance` decimal(19, 2) NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `experience` int(0) NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `integral` int(0) NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_index` int(0) NULL DEFAULT NULL,
  `user_metadata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `用户名`(`login_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('6613831cac9e4597abbd0138116a8f3c', NULL, '2019-08-07 13:30:16.000000', 1, NULL, '2019-07-15 15:25:52.000000', '', '', 'user_admin.jpg', NULL, NULL, '2012-06-15 14:45', NULL, 'example@email.com', NULL, '0', '', NULL, 'admin', 'nickname', '$2a$10$puBHZpl2vUzGOVijjUssO.JQOijRVA6GqJDEgnCYCbROIzMMFQ.Ca', '', '1', '', 1, NULL, '管理员');

-- ----------------------------
-- Table structure for web_logs
-- ----------------------------
DROP TABLE IF EXISTS `web_logs`;
CREATE TABLE `web_logs`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(6) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `end_time` datetime(6) NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_client_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_operation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_primary_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_server_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `r1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `r2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `r3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `r4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `r5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_logs
-- ----------------------------
INSERT INTO `web_logs` VALUES ('ab0cdae821e2401c863fce4cc70daffc', 'admin', '2021-09-28 16:29:39.248163', 1, NULL, NULL, 'qwewqe', '2021-09-28 16:29:39.245163', NULL, 'com.sample.tdf.api.OrganizationController', '0:0:0:0:0:0:0:1', '执行了com.sample.tdf.api.OrganizationController的\'findChildrenByPath\'操作', 'findChildrenByPath', NULL, NULL, '2.0.1.5', NULL, NULL, 'admin', 'com.sample.tdf.api.OrganizationController', '您的自定义字段属性', NULL, NULL, NULL, NULL, '2021-09-28 16:29:39.235158', NULL);
INSERT INTO `web_logs` VALUES ('d44f2671d0314ca7bc5f3b8947638f12', 'admin', '2021-09-28 16:26:56.582157', 1, NULL, NULL, 'qwewqe', '2021-09-28 16:26:56.561160', NULL, 'com.sample.tdf.api.OrganizationController', '0:0:0:0:0:0:0:1', '执行了com.sample.tdf.api.OrganizationController的\'findChildrenByPath\'操作', 'findChildrenByPath', NULL, NULL, '2.0.1.5', NULL, NULL, 'admin', 'com.sample.tdf.api.OrganizationController', '您的自定义字段属性', NULL, NULL, NULL, NULL, '2021-09-28 16:26:56.548159', NULL);

SET FOREIGN_KEY_CHECKS = 1;
