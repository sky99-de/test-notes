/*
 Navicat Premium Dump SQL

 Source Server         : MySQL96
 Source Server Type    : MySQL
 Source Server Version : 90600 (9.6.0)
 Source Host           : localhost:3306
 Source Schema         : dorm_management

 Target Server Type    : MySQL
 Target Server Version : 90600 (9.6.0)
 File Encoding         : 65001

 Date: 17/05/2026 22:01:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员账号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员姓名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '系统管理员', '123456', '', '2026-05-06 21:24:39', '2026-05-06 21:24:39');

-- ----------------------------
-- Table structure for buildings
-- ----------------------------
DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `floors` int NOT NULL,
  `manager` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buildings
-- ----------------------------
INSERT INTO `buildings` VALUES (2, '2号楼', 6, '李管理员', '13800138002', '正常', '2026-03-08 16:15:24', '2026-05-11 15:36:21');
INSERT INTO `buildings` VALUES (3, '3号楼', 8, '王管理员', '13800138003', '正常', '2026-03-08 16:15:24', '2026-05-11 15:36:18');
INSERT INTO `buildings` VALUES (4, '222', 9, '张飞', '183339225', '正常', '2026-04-01 14:52:07', '2026-05-11 15:36:15');
INSERT INTO `buildings` VALUES (5, '古剑', 10, '威威', '15023800665', '正常', '2026-04-21 21:49:17', '2026-05-11 15:36:12');
INSERT INTO `buildings` VALUES (6, '观云书院', 20, '张德兰', '15258266635', '正常', '2026-05-11 15:36:05', '2026-05-11 15:36:05');
INSERT INTO `buildings` VALUES (7, '5', 20, '55', '555', '正常', '2026-05-11 17:18:18', '2026-05-12 22:53:02');
INSERT INTO `buildings` VALUES (8, '赶快赶快', 20, '老张', '154615456', '维护中', '2026-05-11 20:57:07', '2026-05-11 20:57:07');
INSERT INTO `buildings` VALUES (9, '565', 7, '3543', '3543453', '维护中', '2026-05-12 20:07:41', '2026-05-12 20:07:41');
INSERT INTO `buildings` VALUES (10, '3213213', 7, '3123213', '312312', '维护中', '2026-05-12 20:38:00', '2026-05-12 20:38:00');
INSERT INTO `buildings` VALUES (11, '5545', 11, '5455', '554', '维护中', '2026-05-12 20:45:06', '2026-05-12 20:45:06');
INSERT INTO `buildings` VALUES (12, '584864', 11, '654645', '6546', '维护中', '2026-05-12 20:47:12', '2026-05-12 20:47:12');
INSERT INTO `buildings` VALUES (18, '25', 6, '5', '55', '正常', '2026-05-12 22:52:54', '2026-05-14 15:49:13');
INSERT INTO `buildings` VALUES (19, '2号楼', 6, '基本', '3131234345', '维护中', '2026-05-14 15:49:05', '2026-05-14 16:31:12');

-- ----------------------------
-- Table structure for dorms
-- ----------------------------
DROP TABLE IF EXISTS `dorms`;
CREATE TABLE `dorms`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(10, 2) NULL DEFAULT 0.00,
  `power_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'on',
  `student_count` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorms
-- ----------------------------
INSERT INTO `dorms` VALUES (1, '1号楼', '101', 605.50, 'off', 4, '2026-03-08 16:15:24', '2026-05-11 16:32:40');
INSERT INTO `dorms` VALUES (2, '1号楼', '102', 15.30, 'on', 4, '2026-03-08 16:15:24', '2026-03-08 16:15:24');
INSERT INTO `dorms` VALUES (3, '2号楼', '201', 89.00, 'off', 3, '2026-03-08 16:15:24', '2026-03-08 16:15:24');
INSERT INTO `dorms` VALUES (4, '2号楼', '201', 0.00, 'on', 3, '2026-05-11 15:47:07', '2026-05-11 15:47:07');
INSERT INTO `dorms` VALUES (5, '观云书院', '321', 56565600.00, 'on', 8, '2026-05-11 15:47:56', '2026-05-11 15:47:56');
INSERT INTO `dorms` VALUES (6, '古剑', 's105', 5555.00, 'on', 8, '2026-05-11 15:59:54', '2026-05-11 15:59:54');
INSERT INTO `dorms` VALUES (7, '古剑', 's112', 0.02, 'off', 8, '2026-05-11 16:33:03', '2026-05-12 20:08:50');
INSERT INTO `dorms` VALUES (8, '2号楼', '554', 0.01, 'on', 3, '2026-05-12 20:38:34', '2026-05-12 20:38:34');
INSERT INTO `dorms` VALUES (9, '2号楼', '778', 0.00, 'on', 8, '2026-05-12 21:19:41', '2026-05-12 21:19:41');
INSERT INTO `dorms` VALUES (13, '古剑', '5', 22.00, 'on', 6, '2026-05-14 16:22:48', '2026-05-14 16:31:35');
INSERT INTO `dorms` VALUES (14, '3号楼', '354', 66.00, 'on', 6, '2026-05-14 16:31:27', '2026-05-14 16:31:27');

-- ----------------------------
-- Table structure for electricity_logs
-- ----------------------------
DROP TABLE IF EXISTS `electricity_logs`;
CREATE TABLE `electricity_logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'auto',
  `record_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of electricity_logs
-- ----------------------------
INSERT INTO `electricity_logs` VALUES (1, '1号楼', '101', 125.50, 'auto', '2024-01-15 00:00:00');
INSERT INTO `electricity_logs` VALUES (2, '1号楼', '102', 89.30, 'auto', '2024-01-15 00:00:00');
INSERT INTO `electricity_logs` VALUES (3, '2号楼', '201', 200.00, 'manual', '2024-01-14 16:30:00');

-- ----------------------------
-- Table structure for payment_logs
-- ----------------------------
DROP TABLE IF EXISTS `payment_logs`;
CREATE TABLE `payment_logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `operator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '管理员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_logs
-- ----------------------------
INSERT INTO `payment_logs` VALUES (1, '1号楼', '101', 100.00, '管理员', '2024-01-15 10:30:00');
INSERT INTO `payment_logs` VALUES (2, '1号楼', '102', 50.00, '管理员', '2024-01-15 11:20:00');
INSERT INTO `payment_logs` VALUES (3, '2号楼', '201', 200.00, '管理员', '2024-01-15 14:15:00');
INSERT INTO `payment_logs` VALUES (4, '1号楼', '101', 100.00, '管理员', '2026-05-05 19:25:26');
INSERT INTO `payment_logs` VALUES (5, '1号楼', '101', 20.00, '管理员', '2026-05-05 19:25:27');
INSERT INTO `payment_logs` VALUES (6, '1号楼', '101', 50.00, '管理员', '2026-05-05 19:25:44');
INSERT INTO `payment_logs` VALUES (7, '1号楼', '101', 20.00, '管理员', '2026-05-05 19:26:53');
INSERT INTO `payment_logs` VALUES (8, '1号楼', '101', 50.00, '管理员', '2026-05-05 19:26:54');
INSERT INTO `payment_logs` VALUES (9, '1号楼', '101', 100.00, '管理员', '2026-05-05 19:26:54');
INSERT INTO `payment_logs` VALUES (10, '1号楼', '101', 100.00, '管理员', '2026-05-05 19:32:50');
INSERT INTO `payment_logs` VALUES (11, '1号楼', '101', 20.00, '管理员', '2026-05-05 19:33:18');
INSERT INTO `payment_logs` VALUES (12, '1号楼', '101', 20.00, '管理员', '2026-05-05 19:38:04');

-- ----------------------------
-- Table structure for repair_records
-- ----------------------------
DROP TABLE IF EXISTS `repair_records`;
CREATE TABLE `repair_records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待处理',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair_records
-- ----------------------------
INSERT INTO `repair_records` VALUES (1, '2023001', '张三', '电表故障', '电表显示异常', '13900139001', '处理中', '2026-03-08 16:15:24', '2026-03-08 16:15:24');
INSERT INTO `repair_records` VALUES (2, '2023002', '李四', '电路故障', '插座无电', '13900139002', '已完成', '2026-03-08 16:15:24', '2026-03-08 16:15:24');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int NOT NULL,
  `price_per_kwh` decimal(5, 2) NULL DEFAULT 0.65,
  `low_balance_threshold` decimal(10, 2) NULL DEFAULT 20.00,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 0.65, 20.00, '2026-03-08 16:15:24');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `student_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '123456',
  `building_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `student_id`(`student_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, '张三', '男', '2023001', '13900139001', '123456', '', '', '2026-03-08 16:15:24', '2026-05-11 16:31:46');
INSERT INTO `students` VALUES (2, '李四', '男', '2023002', '13900139002', '123456', '1号楼', '101', '2026-03-08 16:15:24', '2026-05-11 16:07:28');
INSERT INTO `students` VALUES (3, '王五', '男', '2023003', '13900139003', '123456', '', '', '2026-03-08 16:15:24', '2026-05-11 16:31:51');
INSERT INTO `students` VALUES (4, '文章', '女', '2024234555', '15023800665', '123456', '1号楼', '101', '2026-03-08 16:41:21', '2026-05-11 16:07:38');
INSERT INTO `students` VALUES (6, '二分', '女', '55156', '54345354', '123456', '1号楼', '101', '2026-03-19 14:37:40', '2026-05-11 16:07:41');
INSERT INTO `students` VALUES (9, '含章', '女', '2024234590', '15023800665', '123456', '1号楼', '101', '2026-04-01 16:39:41', '2026-05-11 16:07:43');
INSERT INTO `students` VALUES (11, '含章', '女', '20242345900', '15023800665', '123456', '1号楼', '101', '2026-04-01 16:48:54', '2026-05-11 16:07:48');
INSERT INTO `students` VALUES (12, '威威五', '男', '2024234559', '15023800665', '123456', '一号楼', '101', '2026-05-06 21:00:43', '2026-05-11 16:07:53');
INSERT INTO `students` VALUES (13, '张东健', '男', '2024234101', '18398532132', '123456', '1号楼', '101', '2026-05-06 21:12:52', '2026-05-11 16:07:56');
INSERT INTO `students` VALUES (14, '达瓦', '男', '2024234112', '156156156156', '123456', '1号楼', '101', '2026-05-06 21:38:12', '2026-05-11 16:07:58');
INSERT INTO `students` VALUES (15, '可可粉', '女', '2021333', '516161651', '123456', '古剑', '105', '2026-05-06 22:27:46', '2026-05-11 16:08:00');
INSERT INTO `students` VALUES (16, '链接库', '男', '5550000', '15023800665', '123456', '观云', '101', '2026-05-11 15:09:15', '2026-05-11 16:08:10');
INSERT INTO `students` VALUES (17, 'bask', '男', '22222255', '354543453', '123456', '2', '201', '2026-05-11 21:00:23', '2026-05-11 21:00:34');
INSERT INTO `students` VALUES (18, '合法化', NULL, '456456', '6456', '3453', '33', '33', '2026-05-14 16:29:43', '2026-05-14 16:29:43');

SET FOREIGN_KEY_CHECKS = 1;
