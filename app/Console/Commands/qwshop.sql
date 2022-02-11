/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/01/2022 22:48:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `receive_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人名',
  `receive_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人手机',
  `area_info` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址信息',
  `address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细地址信息',
  `province_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '省份',
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '城市',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '区县',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否默认',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES (1, 6, '22', '333', '河北省 淄博市', '32', 37, 1442, 0, 0, '2021-12-23 19:33:30', '2021-12-23 20:23:46', '2021-12-23 20:23:46');
INSERT INTO `addresses` VALUES (2, 6, '22134', '12313', '河北省 青岛市', '123', 37, 1430, 0, 0, '2021-12-23 19:34:28', '2021-12-27 14:18:09', NULL);
INSERT INTO `addresses` VALUES (3, 6, '张三', '18888888888', '河北省 淄博市', '面馆', 37, 1442, 0, 1, '2021-12-23 20:24:35', '2021-12-27 14:18:09', NULL);

-- ----------------------------
-- Table structure for admin_menus
-- ----------------------------
DROP TABLE IF EXISTS `admin_menus`;
CREATE TABLE `admin_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ename` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图标',
  `apis` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单路由',
  `view` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '前端视图',
  `is_open` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '外链跳转',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单描述',
  `is_sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menus
-- ----------------------------
INSERT INTO `admin_menus` VALUES (1, 0, '工作台', 'Menu Name', 'fa-desktop', '', '', 0, '', 0, '2021-11-05 02:43:12', '2021-11-09 15:19:07', NULL);
INSERT INTO `admin_menus` VALUES (2, 0, '系统中心', 'Menu Name', 'fa-cogs', '', '', 0, '', 99, '2021-11-09 15:32:48', '2021-11-09 15:32:52', NULL);
INSERT INTO `admin_menus` VALUES (3, 2, '系统配置', 'Menu Name', 'fa-cog', '', '', 0, '', 0, '2021-11-12 10:57:52', '2021-11-12 10:57:56', NULL);
INSERT INTO `admin_menus` VALUES (4, 2, '用户管理', 'Menu Name', 'fa-user', '', '', 0, '', 1, '2021-11-12 10:59:46', '2021-11-12 10:59:49', NULL);
INSERT INTO `admin_menus` VALUES (5, 2, '菜单管理', 'Menu Name', 'fa-list-ul', '', '', 0, '', 8, '2021-11-12 11:00:45', '2021-12-09 14:25:48', NULL);
INSERT INTO `admin_menus` VALUES (6, 4, '用户管理', 'Menu Name', '', '/Admin/admins', 'Admin/admins/index', 0, '', 0, '2021-11-12 11:09:10', '2021-11-12 11:09:14', NULL);
INSERT INTO `admin_menus` VALUES (7, 4, '角色管理', 'Menu Name', '', '/Admin/roles', 'Admin/roles/index', 0, '', 1, '2021-11-12 11:09:34', '2021-11-12 11:09:37', NULL);
INSERT INTO `admin_menus` VALUES (8, 4, '接口分组', 'Menu Name', '', '/Admin/permission_groups', 'Admin/permissions/group', 0, '', 2, '2021-11-12 11:10:16', '2021-11-12 11:10:21', NULL);
INSERT INTO `admin_menus` VALUES (9, 4, '接口管理', 'Menu Name', '', '/Admin/permissions', 'Admin/permissions/index', 0, '', 3, '2021-11-12 11:10:38', '2021-11-12 11:10:41', NULL);
INSERT INTO `admin_menus` VALUES (33, 5, '后台菜单', '', '', '/Admin/menus', 'Admin/menus/index', 0, '', 0, '2021-12-09 14:26:19', '2021-12-09 14:26:19', NULL);
INSERT INTO `admin_menus` VALUES (10, 3, '网站配置', '', '', '/Admin/configs/web', 'Admin/configs/web', 0, '', 0, '2021-11-24 14:11:59', '2021-11-24 14:11:59', NULL);
INSERT INTO `admin_menus` VALUES (11, 2, '短信配置', '', 'fa-envelope', '', '', 0, '', 4, '2021-11-24 09:24:31', '2021-11-30 16:26:42', NULL);
INSERT INTO `admin_menus` VALUES (15, 2, '协议管理', '', 'fa-file-text', '/Admin/agreements', 'Admin/agreements/index', 0, '', 9, '2021-11-30 16:28:07', '2021-11-30 21:32:50', NULL);
INSERT INTO `admin_menus` VALUES (12, 11, '基础配置', '', '', '/Admin/configs/sms', 'Admin/configs/sms', 0, '', 0, '2021-11-27 09:52:59', '2021-11-30 22:18:20', NULL);
INSERT INTO `admin_menus` VALUES (13, 11, '签名配置', '', '', '/Admin/sms', 'Admin/sms/index', 0, '', 1, '2021-11-27 17:54:52', '2021-11-27 17:54:52', NULL);
INSERT INTO `admin_menus` VALUES (14, 11, '短信日志', '', '', '/Admin/sms_logs', 'Admin/sms_logs/index', 0, '', 2, '2021-11-27 17:55:49', '2021-11-27 17:55:49', NULL);
INSERT INTO `admin_menus` VALUES (16, 1, '文章中心', '', 'fa-file-text', '', '', 0, '', 10, '2021-11-30 21:34:23', '2021-11-30 21:34:23', NULL);
INSERT INTO `admin_menus` VALUES (17, 16, '文章栏目', '', '', '/Admin/article_menus', 'Admin/article_menus/index', 0, '', 0, '2021-11-30 21:36:09', '2021-11-30 21:36:09', NULL);
INSERT INTO `admin_menus` VALUES (18, 16, '文章管理', '', '', '/Admin/articles', 'Admin/articles/index', 0, '', 1, '2021-11-30 21:39:15', '2021-11-30 21:39:15', NULL);
INSERT INTO `admin_menus` VALUES (19, 1, '公告中心', '', 'fa-volume-up', '', '', 0, '', 9, '2021-11-30 21:48:38', '2022-01-09 00:47:54', NULL);
INSERT INTO `admin_menus` VALUES (20, 19, '公告管理', '', '', '/Admin/notices', 'Admin/notices/index', 0, '', 0, '2021-11-30 21:50:07', '2021-11-30 21:50:07', NULL);
INSERT INTO `admin_menus` VALUES (21, 3, '支付配置', '', '', '/Admin/configs/pay', 'Admin/configs/pay', 0, '', 0, '2021-12-01 14:43:23', '2021-12-01 14:44:27', NULL);
INSERT INTO `admin_menus` VALUES (22, 3, '第三方登录', '', '', '/Admin/configs/oauth', 'Admin/configs/oauth', 0, '', 3, '2021-12-01 16:02:58', '2021-12-01 16:02:58', NULL);
INSERT INTO `admin_menus` VALUES (23, 2, '广告中心', '', 'fa-picture-o', '', '', 0, '', 5, '2021-12-01 17:46:24', '2021-12-01 17:46:24', NULL);
INSERT INTO `admin_menus` VALUES (24, 23, '广告位', '', '', '/Admin/adv_spaces', 'Admin/adv_spaces/index', 0, '', 0, '2021-12-01 18:05:00', '2021-12-01 18:05:00', NULL);
INSERT INTO `admin_menus` VALUES (25, 23, '广告管理', '', '', '/Admin/advs', 'Admin/advs/index', 0, '', 0, '2021-12-01 18:06:21', '2021-12-01 18:06:21', NULL);
INSERT INTO `admin_menus` VALUES (26, 0, '商品中心', '', 'fa-shopping-bag', '', '', 0, '', 1, '2021-12-06 17:48:32', '2021-12-29 17:53:17', NULL);
INSERT INTO `admin_menus` VALUES (27, 26, '商品分类', '', 'fa-th-list', '/Admin/goods_classes', 'Admin/exts/goods_classes/index', 0, '', 0, '2021-12-06 17:50:01', '2021-12-06 17:56:39', NULL);
INSERT INTO `admin_menus` VALUES (28, 26, '商品管理', '', 'fa-shopping-bag', '/Admin/goods', 'Admin/exts/goods/index', 0, '', 1, '2021-12-06 18:07:53', '2021-12-06 18:10:38', NULL);
INSERT INTO `admin_menus` VALUES (29, 26, '品牌管理', '', 'fa-codepen', '/Admin/goods_brands', 'Admin/exts/goods_brands/index', 0, '', 2, '2021-12-06 18:10:13', '2021-12-06 18:10:13', NULL);
INSERT INTO `admin_menus` VALUES (30, 0, '店铺中心', '', 'fa-archive', '', '', 0, '', 2, '2021-12-06 18:20:03', '2021-12-29 17:53:25', NULL);
INSERT INTO `admin_menus` VALUES (31, 30, '店铺管理', '', 'fa-archive', '', '', 0, '', 0, '2021-12-08 19:39:52', '2021-12-08 19:39:52', NULL);
INSERT INTO `admin_menus` VALUES (32, 31, '店铺管理', '', '', '/Admin/stores', 'Admin/exts/stores/index', 0, '', 0, '2021-12-08 19:41:24', '2021-12-08 20:36:03', NULL);
INSERT INTO `admin_menus` VALUES (34, 5, '商家菜单', '', '', '/Admin/seller_menus', 'Admin/seller_menus/index', 0, '', 1, '2021-12-09 15:20:15', '2021-12-09 15:20:31', NULL);
INSERT INTO `admin_menus` VALUES (35, 30, '订单中心', '', 'fa-file-text', '', '', 0, '', 1, '2021-12-29 16:00:00', '2021-12-29 16:22:13', NULL);
INSERT INTO `admin_menus` VALUES (37, 2, '资金管理', '', 'fa-money', '', '', 0, '', 6, '2021-12-29 16:59:31', '2021-12-29 17:00:04', NULL);
INSERT INTO `admin_menus` VALUES (36, 35, '订单管理', '', '', '/Admin/orders', 'Admin/exts/orders/index', 0, '', 0, '2021-12-29 16:22:06', '2021-12-29 16:23:04', NULL);
INSERT INTO `admin_menus` VALUES (38, 37, '用户资金', '', '', '/Admin/money_logs', 'Admin/money_logs/index', 0, '', 0, '2021-12-29 17:00:57', '2021-12-29 17:00:57', NULL);
INSERT INTO `admin_menus` VALUES (39, 37, '资金提现', '', '', '/Admin/cashes', 'Admin/exts/cashes/index', 0, '', 1, '2021-12-29 17:26:08', '2021-12-29 17:26:08', NULL);
INSERT INTO `admin_menus` VALUES (40, 35, '退款订单', '', '', '/Admin/refunds', 'Admin/exts/refunds/index', 0, '', 1, '2021-12-29 17:35:58', '2021-12-31 17:10:00', NULL);
INSERT INTO `admin_menus` VALUES (41, 35, '退货订单', '', '', '/Admin/returns', 'Admin/exts/refunds/return', 0, '', 2, '2021-12-29 17:36:08', '2021-12-31 16:58:41', NULL);
INSERT INTO `admin_menus` VALUES (42, 35, '订单评论', '', '', '/Admin/order_comments', 'Admin/exts/order_comments/index', 0, '', 3, '2021-12-29 17:36:20', '2021-12-31 15:43:24', NULL);
INSERT INTO `admin_menus` VALUES (43, 0, '积分商城', '', 'fa-birthday-cake', '', '', 0, '', 3, '2021-12-29 17:37:50', '2021-12-29 17:44:10', NULL);
INSERT INTO `admin_menus` VALUES (44, 43, '商品管理', '', 'fa-shopping-bag', '', '', 0, '', 0, '2021-12-29 17:38:31', '2021-12-29 17:40:08', NULL);
INSERT INTO `admin_menus` VALUES (45, 43, '订单管理', '', 'fa-file-text', '/Admin/integral_orders', 'Admin/exts/integral_orders/index', 0, '', 1, '2021-12-29 17:38:44', '2022-01-04 22:18:46', NULL);
INSERT INTO `admin_menus` VALUES (46, 44, '商品分类', '', '', '/Admin/integral_goods_classes', 'Admin/exts/integral_goods_classes/index', 0, '', 0, '2021-12-29 17:39:12', '2022-01-04 16:42:58', NULL);
INSERT INTO `admin_menus` VALUES (47, 44, '商品管理', '', '', '/Admin/integral_goods', 'Admin/exts/integral_goods/index', 0, '', 1, '2021-12-29 17:39:23', '2022-01-04 16:43:25', NULL);
INSERT INTO `admin_menus` VALUES (48, 31, '订单结算', '', '', '', '', 0, '', 2, '2021-12-29 17:45:14', '2021-12-29 17:45:14', NULL);
INSERT INTO `admin_menus` VALUES (49, 30, '物流中心', '', 'fa-truck', '', '', 0, '', 3, '2021-12-29 17:47:46', '2021-12-29 17:47:46', NULL);
INSERT INTO `admin_menus` VALUES (50, 49, '区域地址', '', '', '/Admin/areas', 'Admin/exts/areas/index', 0, '', 0, '2021-12-29 17:48:28', '2022-01-01 21:59:40', NULL);
INSERT INTO `admin_menus` VALUES (51, 49, '物流公司', '', '', '/Admin/expresses', 'Admin/exts/expresses/index', 0, '', 1, '2021-12-29 17:48:36', '2021-12-31 18:11:30', NULL);
INSERT INTO `admin_menus` VALUES (52, 30, '营销中心', '', 'fa-share-alt-square', '', '', 0, '', 5, '2021-12-29 17:52:41', '2021-12-29 17:52:41', NULL);
INSERT INTO `admin_menus` VALUES (53, 52, '分销管理', '', '', '', '', 0, '', 0, '2021-12-29 17:53:54', '2021-12-29 17:53:54', NULL);
INSERT INTO `admin_menus` VALUES (54, 0, '数据统计', '', 'fa-bar-chart-o', '', '', 0, '', 98, '2021-12-29 17:55:11', '2021-12-29 17:55:11', NULL);
INSERT INTO `admin_menus` VALUES (55, 54, '会员分析', '', 'fa-users', '/Admin/dashboard/user', 'Admin/dashboard/user', 0, '', 0, '2021-12-29 17:55:58', '2022-01-12 14:07:49', NULL);
INSERT INTO `admin_menus` VALUES (56, 54, '店铺分析', '', 'fa-window-restore', '/Admin/dashboard/store', 'Admin/dashboard/store', 0, '', 1, '2021-12-29 17:57:14', '2022-01-12 14:08:04', NULL);
INSERT INTO `admin_menus` VALUES (57, 54, '销量分析', '', 'fa-first-order', '/Admin/dashboard/order', 'Admin/dashboard/order', 0, '', 2, '2021-12-29 17:57:42', '2022-01-12 14:07:32', NULL);
INSERT INTO `admin_menus` VALUES (58, 54, '支付分析', '', 'fa-money', '/Admin/dashboard/pay', 'Admin/dashboard/pay', 0, '', 3, '2021-12-29 17:58:09', '2022-01-12 14:06:56', NULL);
INSERT INTO `admin_menus` VALUES (59, 1, '仪表盘', '', 'fa-dashboard', '/Admin/dashboard', 'Admin/dashboard/index', 1, '', 0, '2022-01-09 00:48:54', '2022-01-09 00:48:54', NULL);
INSERT INTO `admin_menus` VALUES (60, 31, '店铺配置', '', '', '/Admin/configs/store', 'Admin/configs/store', 0, '', 0, '2022-01-11 12:42:44', '2022-01-11 12:42:44', NULL);

-- ----------------------------
-- Table structure for admin_permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_groups`;
CREATE TABLE `admin_permission_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限分组名称',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口分组描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permission_groups
-- ----------------------------
INSERT INTO `admin_permission_groups` VALUES (1, '某某接口组', '超级管理员', '2021-11-15 21:08:55', '2021-11-15 21:08:55', NULL);
INSERT INTO `admin_permission_groups` VALUES (2, '21某某接口组2', '打赏', '2021-11-07 05:09:14', '2021-11-07 05:09:14', NULL);
INSERT INTO `admin_permission_groups` VALUES (3, '', '', '2021-11-15 22:42:45', '2021-11-15 22:42:45', NULL);
INSERT INTO `admin_permission_groups` VALUES (4, '', '', '2021-11-15 22:42:47', '2021-11-18 13:29:22', '2021-11-18 13:29:22');
INSERT INTO `admin_permission_groups` VALUES (5, 'xxx', '', '2021-11-15 23:10:40', '2021-11-15 23:10:40', NULL);
INSERT INTO `admin_permission_groups` VALUES (6, 'xxxx', '', '2021-11-15 23:29:44', '2021-11-15 23:51:10', '2021-11-15 23:51:10');
INSERT INTO `admin_permission_groups` VALUES (7, 'xxxxx22', '4', '2021-11-14 23:32:46', '2021-11-15 23:50:20', '2021-11-15 23:50:20');
INSERT INTO `admin_permission_groups` VALUES (8, '12344', '44顶顶顶', '2021-11-16 00:26:12', '2021-11-16 16:26:22', '2021-11-16 16:26:22');
INSERT INTO `admin_permission_groups` VALUES (9, '小行星', '', '2021-11-27 18:22:19', '2021-11-27 18:58:36', NULL);

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权限分组ID',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `apis` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口名称',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 5, '测试', 'admins.index', 'ds', '2021-11-19 16:55:26', '2021-11-21 17:14:04', '2021-11-21 17:14:04');
INSERT INTO `admin_permissions` VALUES (2, 5, '222', 'admins.index', 'xxx', '2021-11-20 16:15:23', '2021-11-21 17:14:04', '2021-11-21 17:14:04');
INSERT INTO `admin_permissions` VALUES (3, 5, 'ddd', 'admins.index', '', '2021-11-24 13:44:57', '2021-11-24 13:44:57', NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '所属',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 1, '超级管理员', '2021-11-05 07:15:51', '2021-11-05 07:16:01', NULL);
INSERT INTO `admin_roles` VALUES (2, 1, '测试3', '2021-11-20 23:27:31', '2021-11-21 02:14:38', NULL);
INSERT INTO `admin_roles` VALUES (3, 1, '测试2', '2021-11-20 23:28:13', '2021-11-20 23:28:24', '2021-11-20 23:28:24');
INSERT INTO `admin_roles` VALUES (4, 1, '测试4', '2021-11-27 18:22:10', '2021-11-27 18:22:10', NULL);

-- ----------------------------
-- Table structure for admin_to_menus
-- ----------------------------
DROP TABLE IF EXISTS `admin_to_menus`;
CREATE TABLE `admin_to_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_to_menus
-- ----------------------------
INSERT INTO `admin_to_menus` VALUES (40, 2, 5, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (39, 2, 9, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (38, 2, 8, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (37, 2, 7, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (36, 2, 6, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (35, 2, 4, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (34, 2, 3, NULL, NULL, NULL);
INSERT INTO `admin_to_menus` VALUES (33, 2, 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admin_to_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_to_permissions`;
CREATE TABLE `admin_to_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_to_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_to_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_to_roles`;
CREATE TABLE `admin_to_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_to_roles
-- ----------------------------
INSERT INTO `admin_to_roles` VALUES (1, 5, 2, NULL, NULL, NULL);
INSERT INTO `admin_to_roles` VALUES (2, 5, 1, NULL, NULL, NULL);
INSERT INTO `admin_to_roles` VALUES (4, 6, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `is_super` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '超级管理员',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0' COMMENT '登陆IP',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登陆时间',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最后一次登陆',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 0, 'admin', '$2y$10$hK33S6rakhABix382ecAie9tP/LFgEz1xfYIITfTGeDE5H4ObMHZC', '超级管理员', '/storage/avatar/2021-11-29/3iRdmBH4otVN8AEX33CrDcxTpmKcf6cfNjMKIyAr.png', 1, '0.0.0.0', NULL, NULL, '2021-11-05 03:12:56', '2021-11-29 00:37:04', NULL);
INSERT INTO `admins` VALUES (5, 1, 'dddd', '$2y$10$u9FFzLIVTk0HErz/9KkOIORJNLd1j/Nut.4Yn/mQMn7GHFve.yECu', 'dddd', '/storage/myfiles/2021-11-27/4f011vf81vyWHEbURCavDmiRBD1B3zIFyITkbgCI.png', 0, '0.0.0.0', NULL, NULL, '2021-11-21 23:26:18', '2021-11-27 13:31:12', NULL);
INSERT INTO `admins` VALUES (4, 1, 'aa', '$2y$10$fqDVKc8dJAWwMcmB351TxemVqZ/31nkpIzjgsBIPikqtMmfIxo3RW', 'aa2', '/storage/avatar/2021-11-27/NsQF3oGvYgkJ7r7N6rz0mZR24fcMQZHC1UkfoSid.png', 0, '0.0.0.0', NULL, NULL, '2021-11-21 17:20:13', '2021-11-27 16:49:50', NULL);
INSERT INTO `admins` VALUES (6, 1, 'dddd', '$2y$10$BgcHQzYcr9.DxapFUWQrRebUpSD2QPMCn/L9mA7lNA9zDIB0C6tl2', '', '', 0, '0.0.0.0', NULL, NULL, '2021-11-27 18:21:45', '2021-11-27 18:21:56', NULL);

-- ----------------------------
-- Table structure for adv_spaces
-- ----------------------------
DROP TABLE IF EXISTS `adv_spaces`;
CREATE TABLE `adv_spaces`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '广告位名称',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '建议宽度',
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '建议高度',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adv_spaces
-- ----------------------------
INSERT INTO `adv_spaces` VALUES (1, 0, '测试广告位', 123, 123, '2021-12-01 21:13:57', '2021-12-01 21:15:46', '2021-12-01 21:15:46');
INSERT INTO `adv_spaces` VALUES (2, 0, '测试广告位', 213, 33, '2021-12-01 21:15:55', '2021-12-01 21:15:55', NULL);
INSERT INTO `adv_spaces` VALUES (3, 1, 'ddd', 45, 5, '2021-12-02 13:07:07', '2021-12-02 13:07:07', NULL);

-- ----------------------------
-- Table structure for advs
-- ----------------------------
DROP TABLE IF EXISTS `advs`;
CREATE TABLE `advs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告位',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `adv_start` timestamp NOT NULL DEFAULT '2021-12-01 19:46:09' COMMENT '开始时间',
  `adv_end` timestamp NOT NULL DEFAULT '2021-12-02 19:46:09' COMMENT '结束时间',
  `is_sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advs
-- ----------------------------
INSERT INTO `advs` VALUES (1, 0, 2, 'sda23', '', '/storage/image/2021-12-01/7OuaqEkdbZ5ebZx9SllBQ4Ccd6E30b27OSTRssOl.png', '2021-12-01 23:01:11', '2021-12-30 00:00:00', 0, 0, 1, '2021-12-01 23:01:16', '2021-12-01 23:06:05', NULL);
INSERT INTO `advs` VALUES (2, 1, 3, '范德萨', '', '/storage/image/2021-12-02/3L8wEFtlyrUfY2mwiNn8qxkPIhGhUe6yGURzE5yr.png', '2021-12-01 00:00:00', '2021-12-02 14:45:33', 0, 0, 1, '2021-12-02 14:45:37', '2021-12-02 15:19:08', NULL);

-- ----------------------------
-- Table structure for agreements
-- ----------------------------
DROP TABLE IF EXISTS `agreements`;
CREATE TABLE `agreements`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '协议名称',
  `ename` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '调取名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '协议内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agreements
-- ----------------------------
INSERT INTO `agreements` VALUES (1, '协议文件', 'agreement', '<p>我是uohe测试的33322ddddcssccc</p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"我是uohe测试的33322ddddcssccc\"}]}]', '2021-11-30 20:13:18', '2021-12-23 12:32:47', NULL);

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '父ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编码',
  `deep` tinyint(3) UNSIGNED NOT NULL COMMENT '深度',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3446 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES (1, '0', '北京市', '11', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2, '11', '市辖区', '1101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3, '1101', '东城区', '110101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (4, '1101', '西城区', '110102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (5, '1101', '朝阳区', '110105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (6, '1101', '丰台区', '110106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (7, '1101', '石景山区', '110107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (8, '1101', '海淀区', '110108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (9, '1101', '门头沟区', '110109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (10, '1101', '房山区', '110111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (11, '1101', '通州区', '110112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (12, '1101', '顺义区', '110113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (13, '1101', '昌平区', '110114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (14, '1101', '大兴区', '110115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (15, '1101', '怀柔区', '110116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (16, '1101', '平谷区', '110117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (17, '1101', '密云区', '110118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (18, '1101', '延庆区', '110119', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (19, '0', '天津市', '12', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (20, '12', '市辖区', '1201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (21, '1201', '和平区', '120101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (22, '1201', '河东区', '120102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (23, '1201', '河西区', '120103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (24, '1201', '南开区', '120104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (25, '1201', '河北区', '120105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (26, '1201', '红桥区', '120106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (27, '1201', '东丽区', '120110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (28, '1201', '西青区', '120111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (29, '1201', '津南区', '120112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (30, '1201', '北辰区', '120113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (31, '1201', '武清区', '120114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (32, '1201', '宝坻区', '120115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (33, '1201', '滨海新区', '120116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (34, '1201', '宁河区', '120117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (35, '1201', '静海区', '120118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (36, '1201', '蓟州区', '120119', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (37, '0', '河北省', '13', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (38, '13', '石家庄市', '1301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (39, '1301', '长安区', '130102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (40, '1301', '桥西区', '130104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (41, '1301', '新华区', '130105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (42, '1301', '井陉矿区', '130107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (43, '1301', '裕华区', '130108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (44, '1301', '藁城区', '130109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (45, '1301', '鹿泉区', '130110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (46, '1301', '栾城区', '130111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (47, '1301', '井陉县', '130121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (48, '1301', '正定县', '130123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (49, '1301', '行唐县', '130125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (50, '1301', '灵寿县', '130126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (51, '1301', '高邑县', '130127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (52, '1301', '深泽县', '130128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (53, '1301', '赞皇县', '130129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (54, '1301', '无极县', '130130', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (55, '1301', '平山县', '130131', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (56, '1301', '元氏县', '130132', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (57, '1301', '赵县', '130133', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (58, '1301', '石家庄高新技术产业开发区', '130171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (59, '1301', '石家庄循环化工园区', '130172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (60, '1301', '辛集市', '130181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (61, '1301', '晋州市', '130183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (62, '1301', '新乐市', '130184', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (63, '13', '唐山市', '1302', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (64, '1302', '路南区', '130202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (65, '1302', '路北区', '130203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (66, '1302', '古冶区', '130204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (67, '1302', '开平区', '130205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (68, '1302', '丰南区', '130207', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (69, '1302', '丰润区', '130208', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (70, '1302', '曹妃甸区', '130209', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (71, '1302', '滦南县', '130224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (72, '1302', '乐亭县', '130225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (73, '1302', '迁西县', '130227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (74, '1302', '玉田县', '130229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (75, '1302', '河北唐山芦台经济开发区', '130271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (76, '1302', '唐山市汉沽管理区', '130272', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (77, '1302', '唐山高新技术产业开发区', '130273', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (78, '1302', '河北唐山海港经济开发区', '130274', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (79, '1302', '遵化市', '130281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (80, '1302', '迁安市', '130283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (81, '1302', '滦州市', '130284', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (82, '13', '秦皇岛市', '1303', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (83, '1303', '海港区', '130302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (84, '1303', '山海关区', '130303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (85, '1303', '北戴河区', '130304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (86, '1303', '抚宁区', '130306', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (87, '1303', '青龙满族自治县', '130321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (88, '1303', '昌黎县', '130322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (89, '1303', '卢龙县', '130324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (90, '1303', '秦皇岛市经济技术开发区', '130371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (91, '1303', '北戴河新区', '130372', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (92, '13', '邯郸市', '1304', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (93, '1304', '邯山区', '130402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (94, '1304', '丛台区', '130403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (95, '1304', '复兴区', '130404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (96, '1304', '峰峰矿区', '130406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (97, '1304', '肥乡区', '130407', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (98, '1304', '永年区', '130408', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (99, '1304', '临漳县', '130423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (100, '1304', '成安县', '130424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (101, '1304', '大名县', '130425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (102, '1304', '涉县', '130426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (103, '1304', '磁县', '130427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (104, '1304', '邱县', '130430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (105, '1304', '鸡泽县', '130431', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (106, '1304', '广平县', '130432', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (107, '1304', '馆陶县', '130433', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (108, '1304', '魏县', '130434', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (109, '1304', '曲周县', '130435', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (110, '1304', '邯郸经济技术开发区', '130471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (111, '1304', '邯郸冀南新区', '130473', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (112, '1304', '武安市', '130481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (113, '13', '邢台市', '1305', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (114, '1305', '襄都区', '130502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (115, '1305', '信都区', '130503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (116, '1305', '任泽区', '130505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (117, '1305', '南和区', '130506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (118, '1305', '临城县', '130522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (119, '1305', '内丘县', '130523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (120, '1305', '柏乡县', '130524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (121, '1305', '隆尧县', '130525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (122, '1305', '宁晋县', '130528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (123, '1305', '巨鹿县', '130529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (124, '1305', '新河县', '130530', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (125, '1305', '广宗县', '130531', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (126, '1305', '平乡县', '130532', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (127, '1305', '威县', '130533', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (128, '1305', '清河县', '130534', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (129, '1305', '临西县', '130535', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (130, '1305', '河北邢台经济开发区', '130571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (131, '1305', '南宫市', '130581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (132, '1305', '沙河市', '130582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (133, '13', '保定市', '1306', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (134, '1306', '竞秀区', '130602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (135, '1306', '莲池区', '130606', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (136, '1306', '满城区', '130607', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (137, '1306', '清苑区', '130608', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (138, '1306', '徐水区', '130609', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (139, '1306', '涞水县', '130623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (140, '1306', '阜平县', '130624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (141, '1306', '定兴县', '130626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (142, '1306', '唐县', '130627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (143, '1306', '高阳县', '130628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (144, '1306', '容城县', '130629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (145, '1306', '涞源县', '130630', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (146, '1306', '望都县', '130631', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (147, '1306', '安新县', '130632', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (148, '1306', '易县', '130633', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (149, '1306', '曲阳县', '130634', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (150, '1306', '蠡县', '130635', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (151, '1306', '顺平县', '130636', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (152, '1306', '博野县', '130637', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (153, '1306', '雄县', '130638', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (154, '1306', '保定高新技术产业开发区', '130671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (155, '1306', '保定白沟新城', '130672', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (156, '1306', '涿州市', '130681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (157, '1306', '定州市', '130682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (158, '1306', '安国市', '130683', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (159, '1306', '高碑店市', '130684', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (160, '13', '张家口市', '1307', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (161, '1307', '桥东区', '130702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (162, '1307', '桥西区', '130703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (163, '1307', '宣化区', '130705', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (164, '1307', '下花园区', '130706', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (165, '1307', '万全区', '130708', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (166, '1307', '崇礼区', '130709', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (167, '1307', '张北县', '130722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (168, '1307', '康保县', '130723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (169, '1307', '沽源县', '130724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (170, '1307', '尚义县', '130725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (171, '1307', '蔚县', '130726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (172, '1307', '阳原县', '130727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (173, '1307', '怀安县', '130728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (174, '1307', '怀来县', '130730', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (175, '1307', '涿鹿县', '130731', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (176, '1307', '赤城县', '130732', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (177, '1307', '张家口经济开发区', '130771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (178, '1307', '张家口市察北管理区', '130772', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (179, '1307', '张家口市塞北管理区', '130773', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (180, '13', '承德市', '1308', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (181, '1308', '双桥区', '130802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (182, '1308', '双滦区', '130803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (183, '1308', '鹰手营子矿区', '130804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (184, '1308', '承德县', '130821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (185, '1308', '兴隆县', '130822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (186, '1308', '滦平县', '130824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (187, '1308', '隆化县', '130825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (188, '1308', '丰宁满族自治县', '130826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (189, '1308', '宽城满族自治县', '130827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (190, '1308', '围场满族蒙古族自治县', '130828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (191, '1308', '承德高新技术产业开发区', '130871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (192, '1308', '平泉市', '130881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (193, '13', '沧州市', '1309', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (194, '1309', '新华区', '130902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (195, '1309', '运河区', '130903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (196, '1309', '沧县', '130921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (197, '1309', '青县', '130922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (198, '1309', '东光县', '130923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (199, '1309', '海兴县', '130924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (200, '1309', '盐山县', '130925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (201, '1309', '肃宁县', '130926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (202, '1309', '南皮县', '130927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (203, '1309', '吴桥县', '130928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (204, '1309', '献县', '130929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (205, '1309', '孟村回族自治县', '130930', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (206, '1309', '河北沧州经济开发区', '130971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (207, '1309', '沧州高新技术产业开发区', '130972', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (208, '1309', '沧州渤海新区', '130973', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (209, '1309', '泊头市', '130981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (210, '1309', '任丘市', '130982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (211, '1309', '黄骅市', '130983', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (212, '1309', '河间市', '130984', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (213, '13', '廊坊市', '1310', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (214, '1310', '安次区', '131002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (215, '1310', '广阳区', '131003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (216, '1310', '固安县', '131022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (217, '1310', '永清县', '131023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (218, '1310', '香河县', '131024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (219, '1310', '大城县', '131025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (220, '1310', '文安县', '131026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (221, '1310', '大厂回族自治县', '131028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (222, '1310', '廊坊经济技术开发区', '131071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (223, '1310', '霸州市', '131081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (224, '1310', '三河市', '131082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (225, '13', '衡水市', '1311', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (226, '1311', '桃城区', '131102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (227, '1311', '冀州区', '131103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (228, '1311', '枣强县', '131121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (229, '1311', '武邑县', '131122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (230, '1311', '武强县', '131123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (231, '1311', '饶阳县', '131124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (232, '1311', '安平县', '131125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (233, '1311', '故城县', '131126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (234, '1311', '景县', '131127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (235, '1311', '阜城县', '131128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (236, '1311', '河北衡水高新技术产业开发区', '131171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (237, '1311', '衡水滨湖新区', '131172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (238, '1311', '深州市', '131182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (239, '0', '山西省', '14', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (240, '14', '太原市', '1401', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (241, '1401', '小店区', '140105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (242, '1401', '迎泽区', '140106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (243, '1401', '杏花岭区', '140107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (244, '1401', '尖草坪区', '140108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (245, '1401', '万柏林区', '140109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (246, '1401', '晋源区', '140110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (247, '1401', '清徐县', '140121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (248, '1401', '阳曲县', '140122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (249, '1401', '娄烦县', '140123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (250, '1401', '山西转型综合改革示范区', '140171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (251, '1401', '古交市', '140181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (252, '14', '大同市', '1402', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (253, '1402', '新荣区', '140212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (254, '1402', '平城区', '140213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (255, '1402', '云冈区', '140214', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (256, '1402', '云州区', '140215', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (257, '1402', '阳高县', '140221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (258, '1402', '天镇县', '140222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (259, '1402', '广灵县', '140223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (260, '1402', '灵丘县', '140224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (261, '1402', '浑源县', '140225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (262, '1402', '左云县', '140226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (263, '1402', '山西大同经济开发区', '140271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (264, '14', '阳泉市', '1403', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (265, '1403', '城区', '140302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (266, '1403', '矿区', '140303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (267, '1403', '郊区', '140311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (268, '1403', '平定县', '140321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (269, '1403', '盂县', '140322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (270, '14', '长治市', '1404', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (271, '1404', '潞州区', '140403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (272, '1404', '上党区', '140404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (273, '1404', '屯留区', '140405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (274, '1404', '潞城区', '140406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (275, '1404', '襄垣县', '140423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (276, '1404', '平顺县', '140425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (277, '1404', '黎城县', '140426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (278, '1404', '壶关县', '140427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (279, '1404', '长子县', '140428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (280, '1404', '武乡县', '140429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (281, '1404', '沁县', '140430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (282, '1404', '沁源县', '140431', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (283, '1404', '山西长治高新技术产业园区', '140471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (284, '14', '晋城市', '1405', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (285, '1405', '城区', '140502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (286, '1405', '沁水县', '140521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (287, '1405', '阳城县', '140522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (288, '1405', '陵川县', '140524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (289, '1405', '泽州县', '140525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (290, '1405', '高平市', '140581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (291, '14', '朔州市', '1406', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (292, '1406', '朔城区', '140602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (293, '1406', '平鲁区', '140603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (294, '1406', '山阴县', '140621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (295, '1406', '应县', '140622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (296, '1406', '右玉县', '140623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (297, '1406', '山西朔州经济开发区', '140671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (298, '1406', '怀仁市', '140681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (299, '14', '晋中市', '1407', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (300, '1407', '榆次区', '140702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (301, '1407', '太谷区', '140703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (302, '1407', '榆社县', '140721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (303, '1407', '左权县', '140722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (304, '1407', '和顺县', '140723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (305, '1407', '昔阳县', '140724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (306, '1407', '寿阳县', '140725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (307, '1407', '祁县', '140727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (308, '1407', '平遥县', '140728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (309, '1407', '灵石县', '140729', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (310, '1407', '介休市', '140781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (311, '14', '运城市', '1408', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (312, '1408', '盐湖区', '140802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (313, '1408', '临猗县', '140821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (314, '1408', '万荣县', '140822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (315, '1408', '闻喜县', '140823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (316, '1408', '稷山县', '140824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (317, '1408', '新绛县', '140825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (318, '1408', '绛县', '140826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (319, '1408', '垣曲县', '140827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (320, '1408', '夏县', '140828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (321, '1408', '平陆县', '140829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (322, '1408', '芮城县', '140830', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (323, '1408', '永济市', '140881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (324, '1408', '河津市', '140882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (325, '14', '忻州市', '1409', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (326, '1409', '忻府区', '140902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (327, '1409', '定襄县', '140921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (328, '1409', '五台县', '140922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (329, '1409', '代县', '140923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (330, '1409', '繁峙县', '140924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (331, '1409', '宁武县', '140925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (332, '1409', '静乐县', '140926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (333, '1409', '神池县', '140927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (334, '1409', '五寨县', '140928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (335, '1409', '岢岚县', '140929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (336, '1409', '河曲县', '140930', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (337, '1409', '保德县', '140931', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (338, '1409', '偏关县', '140932', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (339, '1409', '五台山风景名胜区', '140971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (340, '1409', '原平市', '140981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (341, '14', '临汾市', '1410', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (342, '1410', '尧都区', '141002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (343, '1410', '曲沃县', '141021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (344, '1410', '翼城县', '141022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (345, '1410', '襄汾县', '141023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (346, '1410', '洪洞县', '141024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (347, '1410', '古县', '141025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (348, '1410', '安泽县', '141026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (349, '1410', '浮山县', '141027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (350, '1410', '吉县', '141028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (351, '1410', '乡宁县', '141029', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (352, '1410', '大宁县', '141030', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (353, '1410', '隰县', '141031', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (354, '1410', '永和县', '141032', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (355, '1410', '蒲县', '141033', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (356, '1410', '汾西县', '141034', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (357, '1410', '侯马市', '141081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (358, '1410', '霍州市', '141082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (359, '14', '吕梁市', '1411', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (360, '1411', '离石区', '141102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (361, '1411', '文水县', '141121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (362, '1411', '交城县', '141122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (363, '1411', '兴县', '141123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (364, '1411', '临县', '141124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (365, '1411', '柳林县', '141125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (366, '1411', '石楼县', '141126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (367, '1411', '岚县', '141127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (368, '1411', '方山县', '141128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (369, '1411', '中阳县', '141129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (370, '1411', '交口县', '141130', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (371, '1411', '孝义市', '141181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (372, '1411', '汾阳市', '141182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (373, '0', '内蒙古自治区', '15', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (374, '15', '呼和浩特市', '1501', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (375, '1501', '新城区', '150102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (376, '1501', '回民区', '150103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (377, '1501', '玉泉区', '150104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (378, '1501', '赛罕区', '150105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (379, '1501', '土默特左旗', '150121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (380, '1501', '托克托县', '150122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (381, '1501', '和林格尔县', '150123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (382, '1501', '清水河县', '150124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (383, '1501', '武川县', '150125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (384, '1501', '呼和浩特经济技术开发区', '150172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (385, '15', '包头市', '1502', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (386, '1502', '东河区', '150202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (387, '1502', '昆都仑区', '150203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (388, '1502', '青山区', '150204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (389, '1502', '石拐区', '150205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (390, '1502', '白云鄂博矿区', '150206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (391, '1502', '九原区', '150207', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (392, '1502', '土默特右旗', '150221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (393, '1502', '固阳县', '150222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (394, '1502', '达尔罕茂明安联合旗', '150223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (395, '1502', '包头稀土高新技术产业开发区', '150271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (396, '15', '乌海市', '1503', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (397, '1503', '海勃湾区', '150302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (398, '1503', '海南区', '150303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (399, '1503', '乌达区', '150304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (400, '15', '赤峰市', '1504', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (401, '1504', '红山区', '150402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (402, '1504', '元宝山区', '150403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (403, '1504', '松山区', '150404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (404, '1504', '阿鲁科尔沁旗', '150421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (405, '1504', '巴林左旗', '150422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (406, '1504', '巴林右旗', '150423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (407, '1504', '林西县', '150424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (408, '1504', '克什克腾旗', '150425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (409, '1504', '翁牛特旗', '150426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (410, '1504', '喀喇沁旗', '150428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (411, '1504', '宁城县', '150429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (412, '1504', '敖汉旗', '150430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (413, '15', '通辽市', '1505', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (414, '1505', '科尔沁区', '150502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (415, '1505', '科尔沁左翼中旗', '150521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (416, '1505', '科尔沁左翼后旗', '150522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (417, '1505', '开鲁县', '150523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (418, '1505', '库伦旗', '150524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (419, '1505', '奈曼旗', '150525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (420, '1505', '扎鲁特旗', '150526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (421, '1505', '通辽经济技术开发区', '150571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (422, '1505', '霍林郭勒市', '150581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (423, '15', '鄂尔多斯市', '1506', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (424, '1506', '东胜区', '150602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (425, '1506', '康巴什区', '150603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (426, '1506', '达拉特旗', '150621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (427, '1506', '准格尔旗', '150622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (428, '1506', '鄂托克前旗', '150623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (429, '1506', '鄂托克旗', '150624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (430, '1506', '杭锦旗', '150625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (431, '1506', '乌审旗', '150626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (432, '1506', '伊金霍洛旗', '150627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (433, '15', '呼伦贝尔市', '1507', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (434, '1507', '海拉尔区', '150702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (435, '1507', '扎赉诺尔区', '150703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (436, '1507', '阿荣旗', '150721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (437, '1507', '莫力达瓦达斡尔族自治旗', '150722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (438, '1507', '鄂伦春自治旗', '150723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (439, '1507', '鄂温克族自治旗', '150724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (440, '1507', '陈巴尔虎旗', '150725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (441, '1507', '新巴尔虎左旗', '150726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (442, '1507', '新巴尔虎右旗', '150727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (443, '1507', '满洲里市', '150781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (444, '1507', '牙克石市', '150782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (445, '1507', '扎兰屯市', '150783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (446, '1507', '额尔古纳市', '150784', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (447, '1507', '根河市', '150785', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (448, '15', '巴彦淖尔市', '1508', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (449, '1508', '临河区', '150802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (450, '1508', '五原县', '150821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (451, '1508', '磴口县', '150822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (452, '1508', '乌拉特前旗', '150823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (453, '1508', '乌拉特中旗', '150824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (454, '1508', '乌拉特后旗', '150825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (455, '1508', '杭锦后旗', '150826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (456, '15', '乌兰察布市', '1509', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (457, '1509', '集宁区', '150902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (458, '1509', '卓资县', '150921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (459, '1509', '化德县', '150922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (460, '1509', '商都县', '150923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (461, '1509', '兴和县', '150924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (462, '1509', '凉城县', '150925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (463, '1509', '察哈尔右翼前旗', '150926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (464, '1509', '察哈尔右翼中旗', '150927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (465, '1509', '察哈尔右翼后旗', '150928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (466, '1509', '四子王旗', '150929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (467, '1509', '丰镇市', '150981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (468, '15', '兴安盟', '1522', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (469, '1522', '乌兰浩特市', '152201', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (470, '1522', '阿尔山市', '152202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (471, '1522', '科尔沁右翼前旗', '152221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (472, '1522', '科尔沁右翼中旗', '152222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (473, '1522', '扎赉特旗', '152223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (474, '1522', '突泉县', '152224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (475, '15', '锡林郭勒盟', '1525', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (476, '1525', '二连浩特市', '152501', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (477, '1525', '锡林浩特市', '152502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (478, '1525', '阿巴嘎旗', '152522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (479, '1525', '苏尼特左旗', '152523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (480, '1525', '苏尼特右旗', '152524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (481, '1525', '东乌珠穆沁旗', '152525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (482, '1525', '西乌珠穆沁旗', '152526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (483, '1525', '太仆寺旗', '152527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (484, '1525', '镶黄旗', '152528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (485, '1525', '正镶白旗', '152529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (486, '1525', '正蓝旗', '152530', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (487, '1525', '多伦县', '152531', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (488, '1525', '乌拉盖管委会', '152571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (489, '15', '阿拉善盟', '1529', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (490, '1529', '阿拉善左旗', '152921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (491, '1529', '阿拉善右旗', '152922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (492, '1529', '额济纳旗', '152923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (493, '1529', '内蒙古阿拉善经济开发区', '152971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (494, '0', '辽宁省', '21', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (495, '21', '沈阳市', '2101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (496, '2101', '和平区', '210102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (497, '2101', '沈河区', '210103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (498, '2101', '大东区', '210104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (499, '2101', '皇姑区', '210105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (500, '2101', '铁西区', '210106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (501, '2101', '苏家屯区', '210111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (502, '2101', '浑南区', '210112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (503, '2101', '沈北新区', '210113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (504, '2101', '于洪区', '210114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (505, '2101', '辽中区', '210115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (506, '2101', '康平县', '210123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (507, '2101', '法库县', '210124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (508, '2101', '新民市', '210181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (509, '21', '大连市', '2102', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (510, '2102', '中山区', '210202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (511, '2102', '西岗区', '210203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (512, '2102', '沙河口区', '210204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (513, '2102', '甘井子区', '210211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (514, '2102', '旅顺口区', '210212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (515, '2102', '金州区', '210213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (516, '2102', '普兰店区', '210214', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (517, '2102', '长海县', '210224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (518, '2102', '瓦房店市', '210281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (519, '2102', '庄河市', '210283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (520, '21', '鞍山市', '2103', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (521, '2103', '铁东区', '210302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (522, '2103', '铁西区', '210303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (523, '2103', '立山区', '210304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (524, '2103', '千山区', '210311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (525, '2103', '台安县', '210321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (526, '2103', '岫岩满族自治县', '210323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (527, '2103', '海城市', '210381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (528, '21', '抚顺市', '2104', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (529, '2104', '新抚区', '210402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (530, '2104', '东洲区', '210403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (531, '2104', '望花区', '210404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (532, '2104', '顺城区', '210411', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (533, '2104', '抚顺县', '210421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (534, '2104', '新宾满族自治县', '210422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (535, '2104', '清原满族自治县', '210423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (536, '21', '本溪市', '2105', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (537, '2105', '平山区', '210502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (538, '2105', '溪湖区', '210503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (539, '2105', '明山区', '210504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (540, '2105', '南芬区', '210505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (541, '2105', '本溪满族自治县', '210521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (542, '2105', '桓仁满族自治县', '210522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (543, '21', '丹东市', '2106', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (544, '2106', '元宝区', '210602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (545, '2106', '振兴区', '210603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (546, '2106', '振安区', '210604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (547, '2106', '宽甸满族自治县', '210624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (548, '2106', '东港市', '210681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (549, '2106', '凤城市', '210682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (550, '21', '锦州市', '2107', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (551, '2107', '古塔区', '210702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (552, '2107', '凌河区', '210703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (553, '2107', '太和区', '210711', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (554, '2107', '黑山县', '210726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (555, '2107', '义县', '210727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (556, '2107', '凌海市', '210781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (557, '2107', '北镇市', '210782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (558, '21', '营口市', '2108', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (559, '2108', '站前区', '210802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (560, '2108', '西市区', '210803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (561, '2108', '鲅鱼圈区', '210804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (562, '2108', '老边区', '210811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (563, '2108', '盖州市', '210881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (564, '2108', '大石桥市', '210882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (565, '21', '阜新市', '2109', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (566, '2109', '海州区', '210902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (567, '2109', '新邱区', '210903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (568, '2109', '太平区', '210904', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (569, '2109', '清河门区', '210905', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (570, '2109', '细河区', '210911', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (571, '2109', '阜新蒙古族自治县', '210921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (572, '2109', '彰武县', '210922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (573, '21', '辽阳市', '2110', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (574, '2110', '白塔区', '211002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (575, '2110', '文圣区', '211003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (576, '2110', '宏伟区', '211004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (577, '2110', '弓长岭区', '211005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (578, '2110', '太子河区', '211011', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (579, '2110', '辽阳县', '211021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (580, '2110', '灯塔市', '211081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (581, '21', '盘锦市', '2111', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (582, '2111', '双台子区', '211102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (583, '2111', '兴隆台区', '211103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (584, '2111', '大洼区', '211104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (585, '2111', '盘山县', '211122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (586, '21', '铁岭市', '2112', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (587, '2112', '银州区', '211202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (588, '2112', '清河区', '211204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (589, '2112', '铁岭县', '211221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (590, '2112', '西丰县', '211223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (591, '2112', '昌图县', '211224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (592, '2112', '调兵山市', '211281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (593, '2112', '开原市', '211282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (594, '21', '朝阳市', '2113', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (595, '2113', '双塔区', '211302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (596, '2113', '龙城区', '211303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (597, '2113', '朝阳县', '211321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (598, '2113', '建平县', '211322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (599, '2113', '喀喇沁左翼蒙古族自治县', '211324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (600, '2113', '北票市', '211381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (601, '2113', '凌源市', '211382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (602, '21', '葫芦岛市', '2114', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (603, '2114', '连山区', '211402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (604, '2114', '龙港区', '211403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (605, '2114', '南票区', '211404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (606, '2114', '绥中县', '211421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (607, '2114', '建昌县', '211422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (608, '2114', '兴城市', '211481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (609, '0', '吉林省', '22', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (610, '22', '长春市', '2201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (611, '2201', '南关区', '220102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (612, '2201', '宽城区', '220103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (613, '2201', '朝阳区', '220104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (614, '2201', '二道区', '220105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (615, '2201', '绿园区', '220106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (616, '2201', '双阳区', '220112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (617, '2201', '九台区', '220113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (618, '2201', '农安县', '220122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (619, '2201', '长春经济技术开发区', '220171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (620, '2201', '长春净月高新技术产业开发区', '220172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (621, '2201', '长春高新技术产业开发区', '220173', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (622, '2201', '长春汽车经济技术开发区', '220174', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (623, '2201', '榆树市', '220182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (624, '2201', '德惠市', '220183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (625, '2201', '公主岭市', '220184', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (626, '22', '吉林市', '2202', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (627, '2202', '昌邑区', '220202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (628, '2202', '龙潭区', '220203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (629, '2202', '船营区', '220204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (630, '2202', '丰满区', '220211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (631, '2202', '永吉县', '220221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (632, '2202', '吉林经济开发区', '220271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (633, '2202', '吉林高新技术产业开发区', '220272', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (634, '2202', '吉林中国新加坡食品区', '220273', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (635, '2202', '蛟河市', '220281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (636, '2202', '桦甸市', '220282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (637, '2202', '舒兰市', '220283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (638, '2202', '磐石市', '220284', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (639, '22', '四平市', '2203', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (640, '2203', '铁西区', '220302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (641, '2203', '铁东区', '220303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (642, '2203', '梨树县', '220322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (643, '2203', '伊通满族自治县', '220323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (644, '2203', '双辽市', '220382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (645, '22', '辽源市', '2204', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (646, '2204', '龙山区', '220402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (647, '2204', '西安区', '220403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (648, '2204', '东丰县', '220421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (649, '2204', '东辽县', '220422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (650, '22', '通化市', '2205', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (651, '2205', '东昌区', '220502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (652, '2205', '二道江区', '220503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (653, '2205', '通化县', '220521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (654, '2205', '辉南县', '220523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (655, '2205', '柳河县', '220524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (656, '2205', '梅河口市', '220581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (657, '2205', '集安市', '220582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (658, '22', '白山市', '2206', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (659, '2206', '浑江区', '220602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (660, '2206', '江源区', '220605', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (661, '2206', '抚松县', '220621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (662, '2206', '靖宇县', '220622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (663, '2206', '长白朝鲜族自治县', '220623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (664, '2206', '临江市', '220681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (665, '22', '松原市', '2207', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (666, '2207', '宁江区', '220702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (667, '2207', '前郭尔罗斯蒙古族自治县', '220721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (668, '2207', '长岭县', '220722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (669, '2207', '乾安县', '220723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (670, '2207', '吉林松原经济开发区', '220771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (671, '2207', '扶余市', '220781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (672, '22', '白城市', '2208', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (673, '2208', '洮北区', '220802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (674, '2208', '镇赉县', '220821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (675, '2208', '通榆县', '220822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (676, '2208', '吉林白城经济开发区', '220871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (677, '2208', '洮南市', '220881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (678, '2208', '大安市', '220882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (679, '22', '延边朝鲜族自治州', '2224', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (680, '2224', '延吉市', '222401', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (681, '2224', '图们市', '222402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (682, '2224', '敦化市', '222403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (683, '2224', '珲春市', '222404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (684, '2224', '龙井市', '222405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (685, '2224', '和龙市', '222406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (686, '2224', '汪清县', '222424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (687, '2224', '安图县', '222426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (688, '0', '黑龙江省', '23', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (689, '23', '哈尔滨市', '2301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (690, '2301', '道里区', '230102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (691, '2301', '南岗区', '230103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (692, '2301', '道外区', '230104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (693, '2301', '平房区', '230108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (694, '2301', '松北区', '230109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (695, '2301', '香坊区', '230110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (696, '2301', '呼兰区', '230111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (697, '2301', '阿城区', '230112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (698, '2301', '双城区', '230113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (699, '2301', '依兰县', '230123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (700, '2301', '方正县', '230124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (701, '2301', '宾县', '230125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (702, '2301', '巴彦县', '230126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (703, '2301', '木兰县', '230127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (704, '2301', '通河县', '230128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (705, '2301', '延寿县', '230129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (706, '2301', '尚志市', '230183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (707, '2301', '五常市', '230184', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (708, '23', '齐齐哈尔市', '2302', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (709, '2302', '龙沙区', '230202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (710, '2302', '建华区', '230203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (711, '2302', '铁锋区', '230204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (712, '2302', '昂昂溪区', '230205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (713, '2302', '富拉尔基区', '230206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (714, '2302', '碾子山区', '230207', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (715, '2302', '梅里斯达斡尔族区', '230208', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (716, '2302', '龙江县', '230221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (717, '2302', '依安县', '230223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (718, '2302', '泰来县', '230224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (719, '2302', '甘南县', '230225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (720, '2302', '富裕县', '230227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (721, '2302', '克山县', '230229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (722, '2302', '克东县', '230230', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (723, '2302', '拜泉县', '230231', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (724, '2302', '讷河市', '230281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (725, '23', '鸡西市', '2303', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (726, '2303', '鸡冠区', '230302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (727, '2303', '恒山区', '230303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (728, '2303', '滴道区', '230304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (729, '2303', '梨树区', '230305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (730, '2303', '城子河区', '230306', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (731, '2303', '麻山区', '230307', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (732, '2303', '鸡东县', '230321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (733, '2303', '虎林市', '230381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (734, '2303', '密山市', '230382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (735, '23', '鹤岗市', '2304', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (736, '2304', '向阳区', '230402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (737, '2304', '工农区', '230403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (738, '2304', '南山区', '230404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (739, '2304', '兴安区', '230405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (740, '2304', '东山区', '230406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (741, '2304', '兴山区', '230407', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (742, '2304', '萝北县', '230421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (743, '2304', '绥滨县', '230422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (744, '23', '双鸭山市', '2305', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (745, '2305', '尖山区', '230502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (746, '2305', '岭东区', '230503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (747, '2305', '四方台区', '230505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (748, '2305', '宝山区', '230506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (749, '2305', '集贤县', '230521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (750, '2305', '友谊县', '230522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (751, '2305', '宝清县', '230523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (752, '2305', '饶河县', '230524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (753, '23', '大庆市', '2306', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (754, '2306', '萨尔图区', '230602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (755, '2306', '龙凤区', '230603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (756, '2306', '让胡路区', '230604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (757, '2306', '红岗区', '230605', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (758, '2306', '大同区', '230606', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (759, '2306', '肇州县', '230621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (760, '2306', '肇源县', '230622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (761, '2306', '林甸县', '230623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (762, '2306', '杜尔伯特蒙古族自治县', '230624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (763, '2306', '大庆高新技术产业开发区', '230671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (764, '23', '伊春市', '2307', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (765, '2307', '伊美区', '230717', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (766, '2307', '乌翠区', '230718', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (767, '2307', '友好区', '230719', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (768, '2307', '嘉荫县', '230722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (769, '2307', '汤旺县', '230723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (770, '2307', '丰林县', '230724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (771, '2307', '大箐山县', '230725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (772, '2307', '南岔县', '230726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (773, '2307', '金林区', '230751', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (774, '2307', '铁力市', '230781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (775, '23', '佳木斯市', '2308', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (776, '2308', '向阳区', '230803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (777, '2308', '前进区', '230804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (778, '2308', '东风区', '230805', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (779, '2308', '郊区', '230811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (780, '2308', '桦南县', '230822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (781, '2308', '桦川县', '230826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (782, '2308', '汤原县', '230828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (783, '2308', '同江市', '230881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (784, '2308', '富锦市', '230882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (785, '2308', '抚远市', '230883', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (786, '23', '七台河市', '2309', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (787, '2309', '新兴区', '230902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (788, '2309', '桃山区', '230903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (789, '2309', '茄子河区', '230904', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (790, '2309', '勃利县', '230921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (791, '23', '牡丹江市', '2310', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (792, '2310', '东安区', '231002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (793, '2310', '阳明区', '231003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (794, '2310', '爱民区', '231004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (795, '2310', '西安区', '231005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (796, '2310', '林口县', '231025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (797, '2310', '牡丹江经济技术开发区', '231071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (798, '2310', '绥芬河市', '231081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (799, '2310', '海林市', '231083', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (800, '2310', '宁安市', '231084', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (801, '2310', '穆棱市', '231085', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (802, '2310', '东宁市', '231086', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (803, '23', '黑河市', '2311', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (804, '2311', '爱辉区', '231102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (805, '2311', '逊克县', '231123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (806, '2311', '孙吴县', '231124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (807, '2311', '北安市', '231181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (808, '2311', '五大连池市', '231182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (809, '2311', '嫩江市', '231183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (810, '23', '绥化市', '2312', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (811, '2312', '北林区', '231202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (812, '2312', '望奎县', '231221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (813, '2312', '兰西县', '231222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (814, '2312', '青冈县', '231223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (815, '2312', '庆安县', '231224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (816, '2312', '明水县', '231225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (817, '2312', '绥棱县', '231226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (818, '2312', '安达市', '231281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (819, '2312', '肇东市', '231282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (820, '2312', '海伦市', '231283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (821, '23', '大兴安岭地区', '2327', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (822, '2327', '漠河市', '232701', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (823, '2327', '呼玛县', '232721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (824, '2327', '塔河县', '232722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (825, '2327', '加格达奇区', '232761', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (826, '2327', '松岭区', '232762', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (827, '2327', '新林区', '232763', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (828, '2327', '呼中区', '232764', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (829, '0', '上海市', '31', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (830, '31', '市辖区', '3101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (831, '3101', '黄浦区', '310101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (832, '3101', '徐汇区', '310104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (833, '3101', '长宁区', '310105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (834, '3101', '静安区', '310106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (835, '3101', '普陀区', '310107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (836, '3101', '虹口区', '310109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (837, '3101', '杨浦区', '310110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (838, '3101', '闵行区', '310112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (839, '3101', '宝山区', '310113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (840, '3101', '嘉定区', '310114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (841, '3101', '浦东新区', '310115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (842, '3101', '金山区', '310116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (843, '3101', '松江区', '310117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (844, '3101', '青浦区', '310118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (845, '3101', '奉贤区', '310120', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (846, '3101', '崇明区', '310151', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (847, '0', '江苏省', '32', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (848, '32', '南京市', '3201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (849, '3201', '玄武区', '320102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (850, '3201', '秦淮区', '320104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (851, '3201', '建邺区', '320105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (852, '3201', '鼓楼区', '320106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (853, '3201', '浦口区', '320111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (854, '3201', '栖霞区', '320113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (855, '3201', '雨花台区', '320114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (856, '3201', '江宁区', '320115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (857, '3201', '六合区', '320116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (858, '3201', '溧水区', '320117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (859, '3201', '高淳区', '320118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (860, '32', '无锡市', '3202', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (861, '3202', '锡山区', '320205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (862, '3202', '惠山区', '320206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (863, '3202', '滨湖区', '320211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (864, '3202', '梁溪区', '320213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (865, '3202', '新吴区', '320214', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (866, '3202', '江阴市', '320281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (867, '3202', '宜兴市', '320282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (868, '32', '徐州市', '3203', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (869, '3203', '鼓楼区', '320302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (870, '3203', '云龙区', '320303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (871, '3203', '贾汪区', '320305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (872, '3203', '泉山区', '320311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (873, '3203', '铜山区', '320312', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (874, '3203', '丰县', '320321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (875, '3203', '沛县', '320322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (876, '3203', '睢宁县', '320324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (877, '3203', '徐州经济技术开发区', '320371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (878, '3203', '新沂市', '320381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (879, '3203', '邳州市', '320382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (880, '32', '常州市', '3204', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (881, '3204', '天宁区', '320402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (882, '3204', '钟楼区', '320404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (883, '3204', '新北区', '320411', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (884, '3204', '武进区', '320412', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (885, '3204', '金坛区', '320413', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (886, '3204', '溧阳市', '320481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (887, '32', '苏州市', '3205', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (888, '3205', '虎丘区', '320505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (889, '3205', '吴中区', '320506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (890, '3205', '相城区', '320507', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (891, '3205', '姑苏区', '320508', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (892, '3205', '吴江区', '320509', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (893, '3205', '苏州工业园区', '320571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (894, '3205', '常熟市', '320581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (895, '3205', '张家港市', '320582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (896, '3205', '昆山市', '320583', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (897, '3205', '太仓市', '320585', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (898, '32', '南通市', '3206', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (899, '3206', '崇川区', '320602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (900, '3206', '港闸区', '320611', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (901, '3206', '通州区', '320612', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (902, '3206', '如东县', '320623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (903, '3206', '南通经济技术开发区', '320671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (904, '3206', '启东市', '320681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (905, '3206', '如皋市', '320682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (906, '3206', '海门市', '320684', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (907, '3206', '海安市', '320685', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (908, '32', '连云港市', '3207', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (909, '3207', '连云区', '320703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (910, '3207', '海州区', '320706', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (911, '3207', '赣榆区', '320707', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (912, '3207', '东海县', '320722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (913, '3207', '灌云县', '320723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (914, '3207', '灌南县', '320724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (915, '3207', '连云港经济技术开发区', '320771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (916, '3207', '连云港高新技术产业开发区', '320772', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (917, '32', '淮安市', '3208', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (918, '3208', '淮安区', '320803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (919, '3208', '淮阴区', '320804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (920, '3208', '清江浦区', '320812', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (921, '3208', '洪泽区', '320813', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (922, '3208', '涟水县', '320826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (923, '3208', '盱眙县', '320830', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (924, '3208', '金湖县', '320831', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (925, '3208', '淮安经济技术开发区', '320871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (926, '32', '盐城市', '3209', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (927, '3209', '亭湖区', '320902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (928, '3209', '盐都区', '320903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (929, '3209', '大丰区', '320904', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (930, '3209', '响水县', '320921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (931, '3209', '滨海县', '320922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (932, '3209', '阜宁县', '320923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (933, '3209', '射阳县', '320924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (934, '3209', '建湖县', '320925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (935, '3209', '盐城经济技术开发区', '320971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (936, '3209', '东台市', '320981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (937, '32', '扬州市', '3210', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (938, '3210', '广陵区', '321002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (939, '3210', '邗江区', '321003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (940, '3210', '江都区', '321012', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (941, '3210', '宝应县', '321023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (942, '3210', '扬州经济技术开发区', '321071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (943, '3210', '仪征市', '321081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (944, '3210', '高邮市', '321084', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (945, '32', '镇江市', '3211', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (946, '3211', '京口区', '321102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (947, '3211', '润州区', '321111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (948, '3211', '丹徒区', '321112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (949, '3211', '镇江新区', '321171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (950, '3211', '丹阳市', '321181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (951, '3211', '扬中市', '321182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (952, '3211', '句容市', '321183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (953, '32', '泰州市', '3212', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (954, '3212', '海陵区', '321202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (955, '3212', '高港区', '321203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (956, '3212', '姜堰区', '321204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (957, '3212', '泰州医药高新技术产业开发区', '321271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (958, '3212', '兴化市', '321281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (959, '3212', '靖江市', '321282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (960, '3212', '泰兴市', '321283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (961, '32', '宿迁市', '3213', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (962, '3213', '宿城区', '321302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (963, '3213', '宿豫区', '321311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (964, '3213', '沭阳县', '321322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (965, '3213', '泗阳县', '321323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (966, '3213', '泗洪县', '321324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (967, '3213', '宿迁经济技术开发区', '321371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (968, '0', '浙江省', '33', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (969, '33', '杭州市', '3301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (970, '3301', '上城区', '330102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (971, '3301', '下城区', '330103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (972, '3301', '江干区', '330104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (973, '3301', '拱墅区', '330105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (974, '3301', '西湖区', '330106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (975, '3301', '滨江区', '330108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (976, '3301', '萧山区', '330109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (977, '3301', '余杭区', '330110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (978, '3301', '富阳区', '330111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (979, '3301', '临安区', '330112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (980, '3301', '桐庐县', '330122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (981, '3301', '淳安县', '330127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (982, '3301', '建德市', '330182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (983, '33', '宁波市', '3302', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (984, '3302', '海曙区', '330203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (985, '3302', '江北区', '330205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (986, '3302', '北仑区', '330206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (987, '3302', '镇海区', '330211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (988, '3302', '鄞州区', '330212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (989, '3302', '奉化区', '330213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (990, '3302', '象山县', '330225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (991, '3302', '宁海县', '330226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (992, '3302', '余姚市', '330281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (993, '3302', '慈溪市', '330282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (994, '33', '温州市', '3303', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (995, '3303', '鹿城区', '330302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (996, '3303', '龙湾区', '330303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (997, '3303', '瓯海区', '330304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (998, '3303', '洞头区', '330305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (999, '3303', '永嘉县', '330324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1000, '3303', '平阳县', '330326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1001, '3303', '苍南县', '330327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1002, '3303', '文成县', '330328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1003, '3303', '泰顺县', '330329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1004, '3303', '温州经济技术开发区', '330371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1005, '3303', '瑞安市', '330381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1006, '3303', '乐清市', '330382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1007, '3303', '龙港市', '330383', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1008, '33', '嘉兴市', '3304', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1009, '3304', '南湖区', '330402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1010, '3304', '秀洲区', '330411', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1011, '3304', '嘉善县', '330421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1012, '3304', '海盐县', '330424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1013, '3304', '海宁市', '330481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1014, '3304', '平湖市', '330482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1015, '3304', '桐乡市', '330483', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1016, '33', '湖州市', '3305', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1017, '3305', '吴兴区', '330502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1018, '3305', '南浔区', '330503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1019, '3305', '德清县', '330521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1020, '3305', '长兴县', '330522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1021, '3305', '安吉县', '330523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1022, '33', '绍兴市', '3306', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1023, '3306', '越城区', '330602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1024, '3306', '柯桥区', '330603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1025, '3306', '上虞区', '330604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1026, '3306', '新昌县', '330624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1027, '3306', '诸暨市', '330681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1028, '3306', '嵊州市', '330683', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1029, '33', '金华市', '3307', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1030, '3307', '婺城区', '330702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1031, '3307', '金东区', '330703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1032, '3307', '武义县', '330723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1033, '3307', '浦江县', '330726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1034, '3307', '磐安县', '330727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1035, '3307', '兰溪市', '330781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1036, '3307', '义乌市', '330782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1037, '3307', '东阳市', '330783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1038, '3307', '永康市', '330784', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1039, '33', '衢州市', '3308', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1040, '3308', '柯城区', '330802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1041, '3308', '衢江区', '330803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1042, '3308', '常山县', '330822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1043, '3308', '开化县', '330824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1044, '3308', '龙游县', '330825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1045, '3308', '江山市', '330881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1046, '33', '舟山市', '3309', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1047, '3309', '定海区', '330902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1048, '3309', '普陀区', '330903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1049, '3309', '岱山县', '330921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1050, '3309', '嵊泗县', '330922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1051, '33', '台州市', '3310', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1052, '3310', '椒江区', '331002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1053, '3310', '黄岩区', '331003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1054, '3310', '路桥区', '331004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1055, '3310', '三门县', '331022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1056, '3310', '天台县', '331023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1057, '3310', '仙居县', '331024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1058, '3310', '温岭市', '331081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1059, '3310', '临海市', '331082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1060, '3310', '玉环市', '331083', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1061, '33', '丽水市', '3311', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1062, '3311', '莲都区', '331102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1063, '3311', '青田县', '331121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1064, '3311', '缙云县', '331122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1065, '3311', '遂昌县', '331123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1066, '3311', '松阳县', '331124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1067, '3311', '云和县', '331125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1068, '3311', '庆元县', '331126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1069, '3311', '景宁畲族自治县', '331127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1070, '3311', '龙泉市', '331181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1071, '0', '安徽省', '34', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1072, '34', '合肥市', '3401', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1073, '3401', '瑶海区', '340102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1074, '3401', '庐阳区', '340103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1075, '3401', '蜀山区', '340104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1076, '3401', '包河区', '340111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1077, '3401', '长丰县', '340121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1078, '3401', '肥东县', '340122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1079, '3401', '肥西县', '340123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1080, '3401', '庐江县', '340124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1081, '3401', '合肥高新技术产业开发区', '340171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1082, '3401', '合肥经济技术开发区', '340172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1083, '3401', '合肥新站高新技术产业开发区', '340173', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1084, '3401', '巢湖市', '340181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1085, '34', '芜湖市', '3402', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1086, '3402', '镜湖区', '340202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1087, '3402', '弋江区', '340203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1088, '3402', '鸠江区', '340207', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1089, '3402', '三山区', '340208', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1090, '3402', '芜湖县', '340221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1091, '3402', '繁昌县', '340222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1092, '3402', '南陵县', '340223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1093, '3402', '芜湖经济技术开发区', '340271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1094, '3402', '安徽芜湖长江大桥经济开发区', '340272', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1095, '3402', '无为市', '340281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1096, '34', '蚌埠市', '3403', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1097, '3403', '龙子湖区', '340302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1098, '3403', '蚌山区', '340303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1099, '3403', '禹会区', '340304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1100, '3403', '淮上区', '340311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1101, '3403', '怀远县', '340321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1102, '3403', '五河县', '340322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1103, '3403', '固镇县', '340323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1104, '3403', '蚌埠市高新技术开发区', '340371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1105, '3403', '蚌埠市经济开发区', '340372', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1106, '34', '淮南市', '3404', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1107, '3404', '大通区', '340402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1108, '3404', '田家庵区', '340403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1109, '3404', '谢家集区', '340404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1110, '3404', '八公山区', '340405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1111, '3404', '潘集区', '340406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1112, '3404', '凤台县', '340421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1113, '3404', '寿县', '340422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1114, '34', '马鞍山市', '3405', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1115, '3405', '花山区', '340503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1116, '3405', '雨山区', '340504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1117, '3405', '博望区', '340506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1118, '3405', '当涂县', '340521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1119, '3405', '含山县', '340522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1120, '3405', '和县', '340523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1121, '34', '淮北市', '3406', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1122, '3406', '杜集区', '340602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1123, '3406', '相山区', '340603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1124, '3406', '烈山区', '340604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1125, '3406', '濉溪县', '340621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1126, '34', '铜陵市', '3407', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1127, '3407', '铜官区', '340705', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1128, '3407', '义安区', '340706', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1129, '3407', '郊区', '340711', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1130, '3407', '枞阳县', '340722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1131, '34', '安庆市', '3408', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1132, '3408', '迎江区', '340802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1133, '3408', '大观区', '340803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1134, '3408', '宜秀区', '340811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1135, '3408', '怀宁县', '340822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1136, '3408', '太湖县', '340825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1137, '3408', '宿松县', '340826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1138, '3408', '望江县', '340827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1139, '3408', '岳西县', '340828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1140, '3408', '安徽安庆经济开发区', '340871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1141, '3408', '桐城市', '340881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1142, '3408', '潜山市', '340882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1143, '34', '黄山市', '3410', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1144, '3410', '屯溪区', '341002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1145, '3410', '黄山区', '341003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1146, '3410', '徽州区', '341004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1147, '3410', '歙县', '341021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1148, '3410', '休宁县', '341022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1149, '3410', '黟县', '341023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1150, '3410', '祁门县', '341024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1151, '34', '滁州市', '3411', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1152, '3411', '琅琊区', '341102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1153, '3411', '南谯区', '341103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1154, '3411', '来安县', '341122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1155, '3411', '全椒县', '341124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1156, '3411', '定远县', '341125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1157, '3411', '凤阳县', '341126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1158, '3411', '苏滁现代产业园', '341171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1159, '3411', '滁州经济技术开发区', '341172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1160, '3411', '天长市', '341181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1161, '3411', '明光市', '341182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1162, '34', '阜阳市', '3412', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1163, '3412', '颍州区', '341202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1164, '3412', '颍东区', '341203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1165, '3412', '颍泉区', '341204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1166, '3412', '临泉县', '341221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1167, '3412', '太和县', '341222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1168, '3412', '阜南县', '341225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1169, '3412', '颍上县', '341226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1170, '3412', '阜阳合肥现代产业园区', '341271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1171, '3412', '阜阳经济技术开发区', '341272', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1172, '3412', '界首市', '341282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1173, '34', '宿州市', '3413', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1174, '3413', '埇桥区', '341302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1175, '3413', '砀山县', '341321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1176, '3413', '萧县', '341322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1177, '3413', '灵璧县', '341323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1178, '3413', '泗县', '341324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1179, '3413', '宿州马鞍山现代产业园区', '341371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1180, '3413', '宿州经济技术开发区', '341372', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1181, '34', '六安市', '3415', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1182, '3415', '金安区', '341502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1183, '3415', '裕安区', '341503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1184, '3415', '叶集区', '341504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1185, '3415', '霍邱县', '341522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1186, '3415', '舒城县', '341523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1187, '3415', '金寨县', '341524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1188, '3415', '霍山县', '341525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1189, '34', '亳州市', '3416', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1190, '3416', '谯城区', '341602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1191, '3416', '涡阳县', '341621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1192, '3416', '蒙城县', '341622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1193, '3416', '利辛县', '341623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1194, '34', '池州市', '3417', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1195, '3417', '贵池区', '341702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1196, '3417', '东至县', '341721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1197, '3417', '石台县', '341722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1198, '3417', '青阳县', '341723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1199, '34', '宣城市', '3418', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1200, '3418', '宣州区', '341802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1201, '3418', '郎溪县', '341821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1202, '3418', '泾县', '341823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1203, '3418', '绩溪县', '341824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1204, '3418', '旌德县', '341825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1205, '3418', '宣城市经济开发区', '341871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1206, '3418', '宁国市', '341881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1207, '3418', '广德市', '341882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1208, '0', '福建省', '35', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1209, '35', '福州市', '3501', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1210, '3501', '鼓楼区', '350102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1211, '3501', '台江区', '350103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1212, '3501', '仓山区', '350104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1213, '3501', '马尾区', '350105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1214, '3501', '晋安区', '350111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1215, '3501', '长乐区', '350112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1216, '3501', '闽侯县', '350121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1217, '3501', '连江县', '350122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1218, '3501', '罗源县', '350123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1219, '3501', '闽清县', '350124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1220, '3501', '永泰县', '350125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1221, '3501', '平潭县', '350128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1222, '3501', '福清市', '350181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1223, '35', '厦门市', '3502', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1224, '3502', '思明区', '350203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1225, '3502', '海沧区', '350205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1226, '3502', '湖里区', '350206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1227, '3502', '集美区', '350211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1228, '3502', '同安区', '350212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1229, '3502', '翔安区', '350213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1230, '35', '莆田市', '3503', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1231, '3503', '城厢区', '350302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1232, '3503', '涵江区', '350303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1233, '3503', '荔城区', '350304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1234, '3503', '秀屿区', '350305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1235, '3503', '仙游县', '350322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1236, '35', '三明市', '3504', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1237, '3504', '梅列区', '350402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1238, '3504', '三元区', '350403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1239, '3504', '明溪县', '350421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1240, '3504', '清流县', '350423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1241, '3504', '宁化县', '350424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1242, '3504', '大田县', '350425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1243, '3504', '尤溪县', '350426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1244, '3504', '沙县', '350427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1245, '3504', '将乐县', '350428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1246, '3504', '泰宁县', '350429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1247, '3504', '建宁县', '350430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1248, '3504', '永安市', '350481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1249, '35', '泉州市', '3505', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1250, '3505', '鲤城区', '350502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1251, '3505', '丰泽区', '350503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1252, '3505', '洛江区', '350504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1253, '3505', '泉港区', '350505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1254, '3505', '惠安县', '350521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1255, '3505', '安溪县', '350524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1256, '3505', '永春县', '350525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1257, '3505', '德化县', '350526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1258, '3505', '金门县', '350527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1259, '3505', '石狮市', '350581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1260, '3505', '晋江市', '350582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1261, '3505', '南安市', '350583', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1262, '35', '漳州市', '3506', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1263, '3506', '芗城区', '350602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1264, '3506', '龙文区', '350603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1265, '3506', '云霄县', '350622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1266, '3506', '漳浦县', '350623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1267, '3506', '诏安县', '350624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1268, '3506', '长泰县', '350625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1269, '3506', '东山县', '350626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1270, '3506', '南靖县', '350627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1271, '3506', '平和县', '350628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1272, '3506', '华安县', '350629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1273, '3506', '龙海市', '350681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1274, '35', '南平市', '3507', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1275, '3507', '延平区', '350702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1276, '3507', '建阳区', '350703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1277, '3507', '顺昌县', '350721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1278, '3507', '浦城县', '350722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1279, '3507', '光泽县', '350723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1280, '3507', '松溪县', '350724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1281, '3507', '政和县', '350725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1282, '3507', '邵武市', '350781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1283, '3507', '武夷山市', '350782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1284, '3507', '建瓯市', '350783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1285, '35', '龙岩市', '3508', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1286, '3508', '新罗区', '350802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1287, '3508', '永定区', '350803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1288, '3508', '长汀县', '350821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1289, '3508', '上杭县', '350823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1290, '3508', '武平县', '350824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1291, '3508', '连城县', '350825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1292, '3508', '漳平市', '350881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1293, '35', '宁德市', '3509', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1294, '3509', '蕉城区', '350902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1295, '3509', '霞浦县', '350921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1296, '3509', '古田县', '350922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1297, '3509', '屏南县', '350923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1298, '3509', '寿宁县', '350924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1299, '3509', '周宁县', '350925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1300, '3509', '柘荣县', '350926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1301, '3509', '福安市', '350981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1302, '3509', '福鼎市', '350982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1303, '0', '江西省', '36', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1304, '36', '南昌市', '3601', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1305, '3601', '东湖区', '360102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1306, '3601', '西湖区', '360103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1307, '3601', '青云谱区', '360104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1308, '3601', '青山湖区', '360111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1309, '3601', '新建区', '360112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1310, '3601', '红谷滩区', '360113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1311, '3601', '南昌县', '360121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1312, '3601', '安义县', '360123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1313, '3601', '进贤县', '360124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1314, '36', '景德镇市', '3602', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1315, '3602', '昌江区', '360202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1316, '3602', '珠山区', '360203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1317, '3602', '浮梁县', '360222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1318, '3602', '乐平市', '360281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1319, '36', '萍乡市', '3603', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1320, '3603', '安源区', '360302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1321, '3603', '湘东区', '360313', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1322, '3603', '莲花县', '360321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1323, '3603', '上栗县', '360322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1324, '3603', '芦溪县', '360323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1325, '36', '九江市', '3604', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1326, '3604', '濂溪区', '360402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1327, '3604', '浔阳区', '360403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1328, '3604', '柴桑区', '360404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1329, '3604', '武宁县', '360423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1330, '3604', '修水县', '360424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1331, '3604', '永修县', '360425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1332, '3604', '德安县', '360426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1333, '3604', '都昌县', '360428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1334, '3604', '湖口县', '360429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1335, '3604', '彭泽县', '360430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1336, '3604', '瑞昌市', '360481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1337, '3604', '共青城市', '360482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1338, '3604', '庐山市', '360483', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1339, '36', '新余市', '3605', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1340, '3605', '渝水区', '360502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1341, '3605', '分宜县', '360521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1342, '36', '鹰潭市', '3606', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1343, '3606', '月湖区', '360602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1344, '3606', '余江区', '360603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1345, '3606', '贵溪市', '360681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1346, '36', '赣州市', '3607', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1347, '3607', '章贡区', '360702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1348, '3607', '南康区', '360703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1349, '3607', '赣县区', '360704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1350, '3607', '信丰县', '360722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1351, '3607', '大余县', '360723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1352, '3607', '上犹县', '360724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1353, '3607', '崇义县', '360725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1354, '3607', '安远县', '360726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1355, '3607', '定南县', '360728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1356, '3607', '全南县', '360729', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1357, '3607', '宁都县', '360730', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1358, '3607', '于都县', '360731', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1359, '3607', '兴国县', '360732', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1360, '3607', '会昌县', '360733', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1361, '3607', '寻乌县', '360734', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1362, '3607', '石城县', '360735', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1363, '3607', '瑞金市', '360781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1364, '3607', '龙南市', '360783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1365, '36', '吉安市', '3608', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1366, '3608', '吉州区', '360802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1367, '3608', '青原区', '360803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1368, '3608', '吉安县', '360821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1369, '3608', '吉水县', '360822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1370, '3608', '峡江县', '360823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1371, '3608', '新干县', '360824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1372, '3608', '永丰县', '360825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1373, '3608', '泰和县', '360826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1374, '3608', '遂川县', '360827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1375, '3608', '万安县', '360828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1376, '3608', '安福县', '360829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1377, '3608', '永新县', '360830', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1378, '3608', '井冈山市', '360881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1379, '36', '宜春市', '3609', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1380, '3609', '袁州区', '360902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1381, '3609', '奉新县', '360921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1382, '3609', '万载县', '360922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1383, '3609', '上高县', '360923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1384, '3609', '宜丰县', '360924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1385, '3609', '靖安县', '360925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1386, '3609', '铜鼓县', '360926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1387, '3609', '丰城市', '360981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1388, '3609', '樟树市', '360982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1389, '3609', '高安市', '360983', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1390, '36', '抚州市', '3610', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1391, '3610', '临川区', '361002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1392, '3610', '东乡区', '361003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1393, '3610', '南城县', '361021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1394, '3610', '黎川县', '361022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1395, '3610', '南丰县', '361023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1396, '3610', '崇仁县', '361024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1397, '3610', '乐安县', '361025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1398, '3610', '宜黄县', '361026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1399, '3610', '金溪县', '361027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1400, '3610', '资溪县', '361028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1401, '3610', '广昌县', '361030', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1402, '36', '上饶市', '3611', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1403, '3611', '信州区', '361102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1404, '3611', '广丰区', '361103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1405, '3611', '广信区', '361104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1406, '3611', '玉山县', '361123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1407, '3611', '铅山县', '361124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1408, '3611', '横峰县', '361125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1409, '3611', '弋阳县', '361126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1410, '3611', '余干县', '361127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1411, '3611', '鄱阳县', '361128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1412, '3611', '万年县', '361129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1413, '3611', '婺源县', '361130', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1414, '3611', '德兴市', '361181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1415, '0', '山东省', '37', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1416, '37', '济南市', '3701', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1417, '3701', '历下区', '370102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1418, '3701', '市中区', '370103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1419, '3701', '槐荫区', '370104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1420, '3701', '天桥区', '370105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1421, '3701', '历城区', '370112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1422, '3701', '长清区', '370113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1423, '3701', '章丘区', '370114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1424, '3701', '济阳区', '370115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1425, '3701', '莱芜区', '370116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1426, '3701', '钢城区', '370117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1427, '3701', '平阴县', '370124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1428, '3701', '商河县', '370126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1429, '3701', '济南高新技术产业开发区', '370171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1430, '37', '青岛市', '3702', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1431, '3702', '市南区', '370202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1432, '3702', '市北区', '370203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1433, '3702', '黄岛区', '370211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1434, '3702', '崂山区', '370212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1435, '3702', '李沧区', '370213', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1436, '3702', '城阳区', '370214', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1437, '3702', '即墨区', '370215', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1438, '3702', '青岛高新技术产业开发区', '370271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1439, '3702', '胶州市', '370281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1440, '3702', '平度市', '370283', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1441, '3702', '莱西市', '370285', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1442, '37', '淄博市', '3703', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1443, '3703', '淄川区', '370302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1444, '3703', '张店区', '370303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1445, '3703', '博山区', '370304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1446, '3703', '临淄区', '370305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1447, '3703', '周村区', '370306', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1448, '3703', '桓台县', '370321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1449, '3703', '高青县', '370322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1450, '3703', '沂源县', '370323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1451, '37', '枣庄市', '3704', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1452, '3704', '市中区', '370402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1453, '3704', '薛城区', '370403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1454, '3704', '峄城区', '370404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1455, '3704', '台儿庄区', '370405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1456, '3704', '山亭区', '370406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1457, '3704', '滕州市', '370481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1458, '37', '东营市', '3705', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1459, '3705', '东营区', '370502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1460, '3705', '河口区', '370503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1461, '3705', '垦利区', '370505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1462, '3705', '利津县', '370522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1463, '3705', '广饶县', '370523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1464, '3705', '东营经济技术开发区', '370571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1465, '3705', '东营港经济开发区', '370572', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1466, '37', '烟台市', '3706', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1467, '3706', '芝罘区', '370602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1468, '3706', '福山区', '370611', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1469, '3706', '牟平区', '370612', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1470, '3706', '莱山区', '370613', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1471, '3706', '蓬莱区', '370614', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1472, '3706', '烟台高新技术产业开发区', '370671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1473, '3706', '烟台经济技术开发区', '370672', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1474, '3706', '龙口市', '370681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1475, '3706', '莱阳市', '370682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1476, '3706', '莱州市', '370683', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1477, '3706', '招远市', '370685', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1478, '3706', '栖霞市', '370686', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1479, '3706', '海阳市', '370687', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1480, '37', '潍坊市', '3707', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1481, '3707', '潍城区', '370702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1482, '3707', '寒亭区', '370703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1483, '3707', '坊子区', '370704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1484, '3707', '奎文区', '370705', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1485, '3707', '临朐县', '370724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1486, '3707', '昌乐县', '370725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1487, '3707', '潍坊滨海经济技术开发区', '370772', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1488, '3707', '青州市', '370781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1489, '3707', '诸城市', '370782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1490, '3707', '寿光市', '370783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1491, '3707', '安丘市', '370784', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1492, '3707', '高密市', '370785', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1493, '3707', '昌邑市', '370786', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1494, '37', '济宁市', '3708', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1495, '3708', '任城区', '370811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1496, '3708', '兖州区', '370812', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1497, '3708', '微山县', '370826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1498, '3708', '鱼台县', '370827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1499, '3708', '金乡县', '370828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1500, '3708', '嘉祥县', '370829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1501, '3708', '汶上县', '370830', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1502, '3708', '泗水县', '370831', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1503, '3708', '梁山县', '370832', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1504, '3708', '济宁高新技术产业开发区', '370871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1505, '3708', '曲阜市', '370881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1506, '3708', '邹城市', '370883', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1507, '37', '泰安市', '3709', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1508, '3709', '泰山区', '370902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1509, '3709', '岱岳区', '370911', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1510, '3709', '宁阳县', '370921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1511, '3709', '东平县', '370923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1512, '3709', '新泰市', '370982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1513, '3709', '肥城市', '370983', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1514, '37', '威海市', '3710', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1515, '3710', '环翠区', '371002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1516, '3710', '文登区', '371003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1517, '3710', '威海火炬高技术产业开发区', '371071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1518, '3710', '威海经济技术开发区', '371072', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1519, '3710', '威海临港经济技术开发区', '371073', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1520, '3710', '荣成市', '371082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1521, '3710', '乳山市', '371083', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1522, '37', '日照市', '3711', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1523, '3711', '东港区', '371102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1524, '3711', '岚山区', '371103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1525, '3711', '五莲县', '371121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1526, '3711', '莒县', '371122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1527, '3711', '日照经济技术开发区', '371171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1528, '37', '临沂市', '3713', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1529, '3713', '兰山区', '371302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1530, '3713', '罗庄区', '371311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1531, '3713', '河东区', '371312', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1532, '3713', '沂南县', '371321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1533, '3713', '郯城县', '371322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1534, '3713', '沂水县', '371323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1535, '3713', '兰陵县', '371324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1536, '3713', '费县', '371325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1537, '3713', '平邑县', '371326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1538, '3713', '莒南县', '371327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1539, '3713', '蒙阴县', '371328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1540, '3713', '临沭县', '371329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1541, '3713', '临沂高新技术产业开发区', '371371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1542, '37', '德州市', '3714', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1543, '3714', '德城区', '371402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1544, '3714', '陵城区', '371403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1545, '3714', '宁津县', '371422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1546, '3714', '庆云县', '371423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1547, '3714', '临邑县', '371424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1548, '3714', '齐河县', '371425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1549, '3714', '平原县', '371426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1550, '3714', '夏津县', '371427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1551, '3714', '武城县', '371428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1552, '3714', '德州经济技术开发区', '371471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1553, '3714', '德州运河经济开发区', '371472', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1554, '3714', '乐陵市', '371481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1555, '3714', '禹城市', '371482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1556, '37', '聊城市', '3715', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1557, '3715', '东昌府区', '371502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1558, '3715', '茌平区', '371503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1559, '3715', '阳谷县', '371521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1560, '3715', '莘县', '371522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1561, '3715', '东阿县', '371524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1562, '3715', '冠县', '371525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1563, '3715', '高唐县', '371526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1564, '3715', '临清市', '371581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1565, '37', '滨州市', '3716', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1566, '3716', '滨城区', '371602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1567, '3716', '沾化区', '371603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1568, '3716', '惠民县', '371621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1569, '3716', '阳信县', '371622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1570, '3716', '无棣县', '371623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1571, '3716', '博兴县', '371625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1572, '3716', '邹平市', '371681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1573, '37', '菏泽市', '3717', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1574, '3717', '牡丹区', '371702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1575, '3717', '定陶区', '371703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1576, '3717', '曹县', '371721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1577, '3717', '单县', '371722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1578, '3717', '成武县', '371723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1579, '3717', '巨野县', '371724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1580, '3717', '郓城县', '371725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1581, '3717', '鄄城县', '371726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1582, '3717', '东明县', '371728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1583, '3717', '菏泽经济技术开发区', '371771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1584, '3717', '菏泽高新技术开发区', '371772', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1585, '0', '河南省', '41', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1586, '41', '郑州市', '4101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1587, '4101', '中原区', '410102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1588, '4101', '二七区', '410103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1589, '4101', '管城回族区', '410104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1590, '4101', '金水区', '410105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1591, '4101', '上街区', '410106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1592, '4101', '惠济区', '410108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1593, '4101', '中牟县', '410122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1594, '4101', '郑州经济技术开发区', '410171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1595, '4101', '郑州高新技术产业开发区', '410172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1596, '4101', '郑州航空港经济综合实验区', '410173', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1597, '4101', '巩义市', '410181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1598, '4101', '荥阳市', '410182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1599, '4101', '新密市', '410183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1600, '4101', '新郑市', '410184', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1601, '4101', '登封市', '410185', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1602, '41', '开封市', '4102', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1603, '4102', '龙亭区', '410202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1604, '4102', '顺河回族区', '410203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1605, '4102', '鼓楼区', '410204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1606, '4102', '禹王台区', '410205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1607, '4102', '祥符区', '410212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1608, '4102', '杞县', '410221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1609, '4102', '通许县', '410222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1610, '4102', '尉氏县', '410223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1611, '4102', '兰考县', '410225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1612, '41', '洛阳市', '4103', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1613, '4103', '老城区', '410302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1614, '4103', '西工区', '410303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1615, '4103', '瀍河回族区', '410304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1616, '4103', '涧西区', '410305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1617, '4103', '吉利区', '410306', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1618, '4103', '洛龙区', '410311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1619, '4103', '孟津县', '410322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1620, '4103', '新安县', '410323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1621, '4103', '栾川县', '410324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1622, '4103', '嵩县', '410325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1623, '4103', '汝阳县', '410326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1624, '4103', '宜阳县', '410327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1625, '4103', '洛宁县', '410328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1626, '4103', '伊川县', '410329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1627, '4103', '洛阳高新技术产业开发区', '410371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1628, '4103', '偃师市', '410381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1629, '41', '平顶山市', '4104', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1630, '4104', '新华区', '410402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1631, '4104', '卫东区', '410403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1632, '4104', '石龙区', '410404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1633, '4104', '湛河区', '410411', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1634, '4104', '宝丰县', '410421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1635, '4104', '叶县', '410422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1636, '4104', '鲁山县', '410423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1637, '4104', '郏县', '410425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1638, '4104', '平顶山高新技术产业开发区', '410471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1639, '4104', '平顶山市城乡一体化示范区', '410472', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1640, '4104', '舞钢市', '410481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1641, '4104', '汝州市', '410482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1642, '41', '安阳市', '4105', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1643, '4105', '文峰区', '410502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1644, '4105', '北关区', '410503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1645, '4105', '殷都区', '410505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1646, '4105', '龙安区', '410506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1647, '4105', '安阳县', '410522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1648, '4105', '汤阴县', '410523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1649, '4105', '滑县', '410526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1650, '4105', '内黄县', '410527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1651, '4105', '安阳高新技术产业开发区', '410571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1652, '4105', '林州市', '410581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1653, '41', '鹤壁市', '4106', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1654, '4106', '鹤山区', '410602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1655, '4106', '山城区', '410603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1656, '4106', '淇滨区', '410611', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1657, '4106', '浚县', '410621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1658, '4106', '淇县', '410622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1659, '4106', '鹤壁经济技术开发区', '410671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1660, '41', '新乡市', '4107', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1661, '4107', '红旗区', '410702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1662, '4107', '卫滨区', '410703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1663, '4107', '凤泉区', '410704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1664, '4107', '牧野区', '410711', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1665, '4107', '新乡县', '410721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1666, '4107', '获嘉县', '410724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1667, '4107', '原阳县', '410725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1668, '4107', '延津县', '410726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1669, '4107', '封丘县', '410727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1670, '4107', '新乡高新技术产业开发区', '410771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1671, '4107', '新乡经济技术开发区', '410772', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1672, '4107', '新乡市平原城乡一体化示范区', '410773', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1673, '4107', '卫辉市', '410781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1674, '4107', '辉县市', '410782', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1675, '4107', '长垣市', '410783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1676, '41', '焦作市', '4108', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1677, '4108', '解放区', '410802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1678, '4108', '中站区', '410803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1679, '4108', '马村区', '410804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1680, '4108', '山阳区', '410811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1681, '4108', '修武县', '410821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1682, '4108', '博爱县', '410822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1683, '4108', '武陟县', '410823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1684, '4108', '温县', '410825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1685, '4108', '焦作城乡一体化示范区', '410871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1686, '4108', '沁阳市', '410882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1687, '4108', '孟州市', '410883', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1688, '41', '濮阳市', '4109', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1689, '4109', '华龙区', '410902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1690, '4109', '清丰县', '410922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1691, '4109', '南乐县', '410923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1692, '4109', '范县', '410926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1693, '4109', '台前县', '410927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1694, '4109', '濮阳县', '410928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1695, '4109', '河南濮阳工业园区', '410971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1696, '4109', '濮阳经济技术开发区', '410972', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1697, '41', '许昌市', '4110', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1698, '4110', '魏都区', '411002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1699, '4110', '建安区', '411003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1700, '4110', '鄢陵县', '411024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1701, '4110', '襄城县', '411025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1702, '4110', '许昌经济技术开发区', '411071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1703, '4110', '禹州市', '411081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1704, '4110', '长葛市', '411082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1705, '41', '漯河市', '4111', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1706, '4111', '源汇区', '411102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1707, '4111', '郾城区', '411103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1708, '4111', '召陵区', '411104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1709, '4111', '舞阳县', '411121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1710, '4111', '临颍县', '411122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1711, '4111', '漯河经济技术开发区', '411171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1712, '41', '三门峡市', '4112', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1713, '4112', '湖滨区', '411202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1714, '4112', '陕州区', '411203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1715, '4112', '渑池县', '411221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1716, '4112', '卢氏县', '411224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1717, '4112', '河南三门峡经济开发区', '411271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1718, '4112', '义马市', '411281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1719, '4112', '灵宝市', '411282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1720, '41', '南阳市', '4113', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1721, '4113', '宛城区', '411302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1722, '4113', '卧龙区', '411303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1723, '4113', '南召县', '411321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1724, '4113', '方城县', '411322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1725, '4113', '西峡县', '411323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1726, '4113', '镇平县', '411324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1727, '4113', '内乡县', '411325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1728, '4113', '淅川县', '411326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1729, '4113', '社旗县', '411327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1730, '4113', '唐河县', '411328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1731, '4113', '新野县', '411329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1732, '4113', '桐柏县', '411330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1733, '4113', '南阳高新技术产业开发区', '411371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1734, '4113', '南阳市城乡一体化示范区', '411372', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1735, '4113', '邓州市', '411381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1736, '41', '商丘市', '4114', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1737, '4114', '梁园区', '411402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1738, '4114', '睢阳区', '411403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1739, '4114', '民权县', '411421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1740, '4114', '睢县', '411422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1741, '4114', '宁陵县', '411423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1742, '4114', '柘城县', '411424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1743, '4114', '虞城县', '411425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1744, '4114', '夏邑县', '411426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1745, '4114', '豫东综合物流产业聚集区', '411471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1746, '4114', '河南商丘经济开发区', '411472', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1747, '4114', '永城市', '411481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1748, '41', '信阳市', '4115', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1749, '4115', '浉河区', '411502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1750, '4115', '平桥区', '411503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1751, '4115', '罗山县', '411521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1752, '4115', '光山县', '411522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1753, '4115', '新县', '411523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1754, '4115', '商城县', '411524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1755, '4115', '固始县', '411525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1756, '4115', '潢川县', '411526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1757, '4115', '淮滨县', '411527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1758, '4115', '息县', '411528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1759, '4115', '信阳高新技术产业开发区', '411571', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1760, '41', '周口市', '4116', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1761, '4116', '川汇区', '411602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1762, '4116', '淮阳区', '411603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1763, '4116', '扶沟县', '411621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1764, '4116', '西华县', '411622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1765, '4116', '商水县', '411623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1766, '4116', '沈丘县', '411624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1767, '4116', '郸城县', '411625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1768, '4116', '太康县', '411627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1769, '4116', '鹿邑县', '411628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1770, '4116', '河南周口经济开发区', '411671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1771, '4116', '项城市', '411681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1772, '41', '驻马店市', '4117', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1773, '4117', '驿城区', '411702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1774, '4117', '西平县', '411721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1775, '4117', '上蔡县', '411722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1776, '4117', '平舆县', '411723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1777, '4117', '正阳县', '411724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1778, '4117', '确山县', '411725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1779, '4117', '泌阳县', '411726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1780, '4117', '汝南县', '411727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1781, '4117', '遂平县', '411728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1782, '4117', '新蔡县', '411729', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1783, '4117', '河南驻马店经济开发区', '411771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1784, '41', '省直辖县级行政区划', '4190', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1785, '4190', '济源市', '419001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1786, '0', '湖北省', '42', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1787, '42', '武汉市', '4201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1788, '4201', '江岸区', '420102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1789, '4201', '江汉区', '420103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1790, '4201', '硚口区', '420104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1791, '4201', '汉阳区', '420105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1792, '4201', '武昌区', '420106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1793, '4201', '青山区', '420107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1794, '4201', '洪山区', '420111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1795, '4201', '东西湖区', '420112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1796, '4201', '汉南区', '420113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1797, '4201', '蔡甸区', '420114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1798, '4201', '江夏区', '420115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1799, '4201', '黄陂区', '420116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1800, '4201', '新洲区', '420117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1801, '42', '黄石市', '4202', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1802, '4202', '黄石港区', '420202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1803, '4202', '西塞山区', '420203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1804, '4202', '下陆区', '420204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1805, '4202', '铁山区', '420205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1806, '4202', '阳新县', '420222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1807, '4202', '大冶市', '420281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1808, '42', '十堰市', '4203', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1809, '4203', '茅箭区', '420302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1810, '4203', '张湾区', '420303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1811, '4203', '郧阳区', '420304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1812, '4203', '郧西县', '420322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1813, '4203', '竹山县', '420323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1814, '4203', '竹溪县', '420324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1815, '4203', '房县', '420325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1816, '4203', '丹江口市', '420381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1817, '42', '宜昌市', '4205', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1818, '4205', '西陵区', '420502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1819, '4205', '伍家岗区', '420503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1820, '4205', '点军区', '420504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1821, '4205', '猇亭区', '420505', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1822, '4205', '夷陵区', '420506', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1823, '4205', '远安县', '420525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1824, '4205', '兴山县', '420526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1825, '4205', '秭归县', '420527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1826, '4205', '长阳土家族自治县', '420528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1827, '4205', '五峰土家族自治县', '420529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1828, '4205', '宜都市', '420581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1829, '4205', '当阳市', '420582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1830, '4205', '枝江市', '420583', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1831, '42', '襄阳市', '4206', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1832, '4206', '襄城区', '420602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1833, '4206', '樊城区', '420606', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1834, '4206', '襄州区', '420607', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1835, '4206', '南漳县', '420624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1836, '4206', '谷城县', '420625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1837, '4206', '保康县', '420626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1838, '4206', '老河口市', '420682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1839, '4206', '枣阳市', '420683', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1840, '4206', '宜城市', '420684', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1841, '42', '鄂州市', '4207', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1842, '4207', '梁子湖区', '420702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1843, '4207', '华容区', '420703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1844, '4207', '鄂城区', '420704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1845, '42', '荆门市', '4208', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1846, '4208', '东宝区', '420802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1847, '4208', '掇刀区', '420804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1848, '4208', '沙洋县', '420822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1849, '4208', '钟祥市', '420881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1850, '4208', '京山市', '420882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1851, '42', '孝感市', '4209', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1852, '4209', '孝南区', '420902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1853, '4209', '孝昌县', '420921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1854, '4209', '大悟县', '420922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1855, '4209', '云梦县', '420923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1856, '4209', '应城市', '420981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1857, '4209', '安陆市', '420982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1858, '4209', '汉川市', '420984', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1859, '42', '荆州市', '4210', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1860, '4210', '沙市区', '421002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1861, '4210', '荆州区', '421003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1862, '4210', '公安县', '421022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1863, '4210', '监利县', '421023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1864, '4210', '江陵县', '421024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1865, '4210', '荆州经济技术开发区', '421071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1866, '4210', '石首市', '421081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1867, '4210', '洪湖市', '421083', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1868, '4210', '松滋市', '421087', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1869, '42', '黄冈市', '4211', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1870, '4211', '黄州区', '421102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1871, '4211', '团风县', '421121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1872, '4211', '红安县', '421122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1873, '4211', '罗田县', '421123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1874, '4211', '英山县', '421124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1875, '4211', '浠水县', '421125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1876, '4211', '蕲春县', '421126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1877, '4211', '黄梅县', '421127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1878, '4211', '龙感湖管理区', '421171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1879, '4211', '麻城市', '421181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1880, '4211', '武穴市', '421182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1881, '42', '咸宁市', '4212', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1882, '4212', '咸安区', '421202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1883, '4212', '嘉鱼县', '421221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1884, '4212', '通城县', '421222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1885, '4212', '崇阳县', '421223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1886, '4212', '通山县', '421224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1887, '4212', '赤壁市', '421281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1888, '42', '随州市', '4213', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1889, '4213', '曾都区', '421303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1890, '4213', '随县', '421321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1891, '4213', '广水市', '421381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1892, '42', '恩施土家族苗族自治州', '4228', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1893, '4228', '恩施市', '422801', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1894, '4228', '利川市', '422802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1895, '4228', '建始县', '422822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1896, '4228', '巴东县', '422823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1897, '4228', '宣恩县', '422825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1898, '4228', '咸丰县', '422826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1899, '4228', '来凤县', '422827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1900, '4228', '鹤峰县', '422828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1901, '42', '省直辖县级行政区划', '4290', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1902, '4290', '仙桃市', '429004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1903, '4290', '潜江市', '429005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1904, '4290', '天门市', '429006', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1905, '4290', '神农架林区', '429021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1906, '0', '湖南省', '43', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1907, '43', '长沙市', '4301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1908, '4301', '芙蓉区', '430102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1909, '4301', '天心区', '430103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1910, '4301', '岳麓区', '430104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1911, '4301', '开福区', '430105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1912, '4301', '雨花区', '430111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1913, '4301', '望城区', '430112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1914, '4301', '长沙县', '430121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1915, '4301', '浏阳市', '430181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1916, '4301', '宁乡市', '430182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1917, '43', '株洲市', '4302', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1918, '4302', '荷塘区', '430202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1919, '4302', '芦淞区', '430203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1920, '4302', '石峰区', '430204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1921, '4302', '天元区', '430211', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1922, '4302', '渌口区', '430212', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1923, '4302', '攸县', '430223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1924, '4302', '茶陵县', '430224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1925, '4302', '炎陵县', '430225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1926, '4302', '云龙示范区', '430271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1927, '4302', '醴陵市', '430281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1928, '43', '湘潭市', '4303', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1929, '4303', '雨湖区', '430302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1930, '4303', '岳塘区', '430304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1931, '4303', '湘潭县', '430321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1932, '4303', '湖南湘潭高新技术产业园区', '430371', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1933, '4303', '湘潭昭山示范区', '430372', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1934, '4303', '湘潭九华示范区', '430373', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1935, '4303', '湘乡市', '430381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1936, '4303', '韶山市', '430382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1937, '43', '衡阳市', '4304', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1938, '4304', '珠晖区', '430405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1939, '4304', '雁峰区', '430406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1940, '4304', '石鼓区', '430407', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1941, '4304', '蒸湘区', '430408', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1942, '4304', '南岳区', '430412', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1943, '4304', '衡阳县', '430421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1944, '4304', '衡南县', '430422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1945, '4304', '衡山县', '430423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1946, '4304', '衡东县', '430424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1947, '4304', '祁东县', '430426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1948, '4304', '衡阳综合保税区', '430471', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1949, '4304', '湖南衡阳高新技术产业园区', '430472', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1950, '4304', '湖南衡阳松木经济开发区', '430473', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1951, '4304', '耒阳市', '430481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1952, '4304', '常宁市', '430482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1953, '43', '邵阳市', '4305', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1954, '4305', '双清区', '430502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1955, '4305', '大祥区', '430503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1956, '4305', '北塔区', '430511', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1957, '4305', '新邵县', '430522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1958, '4305', '邵阳县', '430523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1959, '4305', '隆回县', '430524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1960, '4305', '洞口县', '430525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1961, '4305', '绥宁县', '430527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1962, '4305', '新宁县', '430528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1963, '4305', '城步苗族自治县', '430529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1964, '4305', '武冈市', '430581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1965, '4305', '邵东市', '430582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1966, '43', '岳阳市', '4306', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1967, '4306', '岳阳楼区', '430602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1968, '4306', '云溪区', '430603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1969, '4306', '君山区', '430611', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1970, '4306', '岳阳县', '430621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1971, '4306', '华容县', '430623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1972, '4306', '湘阴县', '430624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1973, '4306', '平江县', '430626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1974, '4306', '岳阳市屈原管理区', '430671', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1975, '4306', '汨罗市', '430681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1976, '4306', '临湘市', '430682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1977, '43', '常德市', '4307', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1978, '4307', '武陵区', '430702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1979, '4307', '鼎城区', '430703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1980, '4307', '安乡县', '430721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1981, '4307', '汉寿县', '430722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1982, '4307', '澧县', '430723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1983, '4307', '临澧县', '430724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1984, '4307', '桃源县', '430725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1985, '4307', '石门县', '430726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1986, '4307', '常德市西洞庭管理区', '430771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1987, '4307', '津市市', '430781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1988, '43', '张家界市', '4308', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1989, '4308', '永定区', '430802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1990, '4308', '武陵源区', '430811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1991, '4308', '慈利县', '430821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1992, '4308', '桑植县', '430822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1993, '43', '益阳市', '4309', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1994, '4309', '资阳区', '430902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1995, '4309', '赫山区', '430903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1996, '4309', '南县', '430921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1997, '4309', '桃江县', '430922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1998, '4309', '安化县', '430923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (1999, '4309', '益阳市大通湖管理区', '430971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2000, '4309', '湖南益阳高新技术产业园区', '430972', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2001, '4309', '沅江市', '430981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2002, '43', '郴州市', '4310', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2003, '4310', '北湖区', '431002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2004, '4310', '苏仙区', '431003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2005, '4310', '桂阳县', '431021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2006, '4310', '宜章县', '431022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2007, '4310', '永兴县', '431023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2008, '4310', '嘉禾县', '431024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2009, '4310', '临武县', '431025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2010, '4310', '汝城县', '431026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2011, '4310', '桂东县', '431027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2012, '4310', '安仁县', '431028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2013, '4310', '资兴市', '431081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2014, '43', '永州市', '4311', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2015, '4311', '零陵区', '431102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2016, '4311', '冷水滩区', '431103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2017, '4311', '祁阳县', '431121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2018, '4311', '东安县', '431122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2019, '4311', '双牌县', '431123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2020, '4311', '道县', '431124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2021, '4311', '江永县', '431125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2022, '4311', '宁远县', '431126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2023, '4311', '蓝山县', '431127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2024, '4311', '新田县', '431128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2025, '4311', '江华瑶族自治县', '431129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2026, '4311', '永州经济技术开发区', '431171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2027, '4311', '永州市金洞管理区', '431172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2028, '4311', '永州市回龙圩管理区', '431173', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2029, '43', '怀化市', '4312', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2030, '4312', '鹤城区', '431202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2031, '4312', '中方县', '431221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2032, '4312', '沅陵县', '431222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2033, '4312', '辰溪县', '431223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2034, '4312', '溆浦县', '431224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2035, '4312', '会同县', '431225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2036, '4312', '麻阳苗族自治县', '431226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2037, '4312', '新晃侗族自治县', '431227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2038, '4312', '芷江侗族自治县', '431228', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2039, '4312', '靖州苗族侗族自治县', '431229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2040, '4312', '通道侗族自治县', '431230', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2041, '4312', '怀化市洪江管理区', '431271', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2042, '4312', '洪江市', '431281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2043, '43', '娄底市', '4313', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2044, '4313', '娄星区', '431302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2045, '4313', '双峰县', '431321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2046, '4313', '新化县', '431322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2047, '4313', '冷水江市', '431381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2048, '4313', '涟源市', '431382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2049, '43', '湘西土家族苗族自治州', '4331', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2050, '4331', '吉首市', '433101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2051, '4331', '泸溪县', '433122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2052, '4331', '凤凰县', '433123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2053, '4331', '花垣县', '433124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2054, '4331', '保靖县', '433125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2055, '4331', '古丈县', '433126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2056, '4331', '永顺县', '433127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2057, '4331', '龙山县', '433130', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2058, '0', '广东省', '44', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2059, '44', '广州市', '4401', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2060, '4401', '荔湾区', '440103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2061, '4401', '越秀区', '440104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2062, '4401', '海珠区', '440105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2063, '4401', '天河区', '440106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2064, '4401', '白云区', '440111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2065, '4401', '黄埔区', '440112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2066, '4401', '番禺区', '440113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2067, '4401', '花都区', '440114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2068, '4401', '南沙区', '440115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2069, '4401', '从化区', '440117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2070, '4401', '增城区', '440118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2071, '44', '韶关市', '4402', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2072, '4402', '武江区', '440203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2073, '4402', '浈江区', '440204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2074, '4402', '曲江区', '440205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2075, '4402', '始兴县', '440222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2076, '4402', '仁化县', '440224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2077, '4402', '翁源县', '440229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2078, '4402', '乳源瑶族自治县', '440232', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2079, '4402', '新丰县', '440233', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2080, '4402', '乐昌市', '440281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2081, '4402', '南雄市', '440282', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2082, '44', '深圳市', '4403', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2083, '4403', '罗湖区', '440303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2084, '4403', '福田区', '440304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2085, '4403', '南山区', '440305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2086, '4403', '宝安区', '440306', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2087, '4403', '龙岗区', '440307', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2088, '4403', '盐田区', '440308', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2089, '4403', '龙华区', '440309', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2090, '4403', '坪山区', '440310', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2091, '4403', '光明区', '440311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2092, '44', '珠海市', '4404', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2093, '4404', '香洲区', '440402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2094, '4404', '斗门区', '440403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2095, '4404', '金湾区', '440404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2096, '44', '汕头市', '4405', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2097, '4405', '龙湖区', '440507', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2098, '4405', '金平区', '440511', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2099, '4405', '濠江区', '440512', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2100, '4405', '潮阳区', '440513', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2101, '4405', '潮南区', '440514', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2102, '4405', '澄海区', '440515', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2103, '4405', '南澳县', '440523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2104, '44', '佛山市', '4406', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2105, '4406', '禅城区', '440604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2106, '4406', '南海区', '440605', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2107, '4406', '顺德区', '440606', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2108, '4406', '三水区', '440607', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2109, '4406', '高明区', '440608', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2110, '44', '江门市', '4407', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2111, '4407', '蓬江区', '440703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2112, '4407', '江海区', '440704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2113, '4407', '新会区', '440705', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2114, '4407', '台山市', '440781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2115, '4407', '开平市', '440783', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2116, '4407', '鹤山市', '440784', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2117, '4407', '恩平市', '440785', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2118, '44', '湛江市', '4408', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2119, '4408', '赤坎区', '440802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2120, '4408', '霞山区', '440803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2121, '4408', '坡头区', '440804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2122, '4408', '麻章区', '440811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2123, '4408', '遂溪县', '440823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2124, '4408', '徐闻县', '440825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2125, '4408', '廉江市', '440881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2126, '4408', '雷州市', '440882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2127, '4408', '吴川市', '440883', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2128, '44', '茂名市', '4409', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2129, '4409', '茂南区', '440902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2130, '4409', '电白区', '440904', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2131, '4409', '高州市', '440981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2132, '4409', '化州市', '440982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2133, '4409', '信宜市', '440983', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2134, '44', '肇庆市', '4412', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2135, '4412', '端州区', '441202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2136, '4412', '鼎湖区', '441203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2137, '4412', '高要区', '441204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2138, '4412', '广宁县', '441223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2139, '4412', '怀集县', '441224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2140, '4412', '封开县', '441225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2141, '4412', '德庆县', '441226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2142, '4412', '四会市', '441284', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2143, '44', '惠州市', '4413', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2144, '4413', '惠城区', '441302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2145, '4413', '惠阳区', '441303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2146, '4413', '博罗县', '441322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2147, '4413', '惠东县', '441323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2148, '4413', '龙门县', '441324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2149, '44', '梅州市', '4414', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2150, '4414', '梅江区', '441402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2151, '4414', '梅县区', '441403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2152, '4414', '大埔县', '441422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2153, '4414', '丰顺县', '441423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2154, '4414', '五华县', '441424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2155, '4414', '平远县', '441426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2156, '4414', '蕉岭县', '441427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2157, '4414', '兴宁市', '441481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2158, '44', '汕尾市', '4415', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2159, '4415', '城区', '441502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2160, '4415', '海丰县', '441521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2161, '4415', '陆河县', '441523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2162, '4415', '陆丰市', '441581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2163, '44', '河源市', '4416', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2164, '4416', '源城区', '441602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2165, '4416', '紫金县', '441621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2166, '4416', '龙川县', '441622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2167, '4416', '连平县', '441623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2168, '4416', '和平县', '441624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2169, '4416', '东源县', '441625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2170, '44', '阳江市', '4417', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2171, '4417', '江城区', '441702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2172, '4417', '阳东区', '441704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2173, '4417', '阳西县', '441721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2174, '4417', '阳春市', '441781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2175, '44', '清远市', '4418', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2176, '4418', '清城区', '441802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2177, '4418', '清新区', '441803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2178, '4418', '佛冈县', '441821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2179, '4418', '阳山县', '441823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2180, '4418', '连山壮族瑶族自治县', '441825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2181, '4418', '连南瑶族自治县', '441826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2182, '4418', '英德市', '441881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2183, '4418', '连州市', '441882', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2184, '44', '东莞市', '4419', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2185, '4419', '东城街道', '441900003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2186, '4419', '南城街道', '441900004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2187, '4419', '万江街道', '441900005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2188, '4419', '莞城街道', '441900006', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2189, '4419', '石碣镇', '441900101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2190, '4419', '石龙镇', '441900102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2191, '4419', '茶山镇', '441900103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2192, '4419', '石排镇', '441900104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2193, '4419', '企石镇', '441900105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2194, '4419', '横沥镇', '441900106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2195, '4419', '桥头镇', '441900107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2196, '4419', '谢岗镇', '441900108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2197, '4419', '东坑镇', '441900109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2198, '4419', '常平镇', '441900110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2199, '4419', '寮步镇', '441900111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2200, '4419', '樟木头镇', '441900112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2201, '4419', '大朗镇', '441900113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2202, '4419', '黄江镇', '441900114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2203, '4419', '清溪镇', '441900115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2204, '4419', '塘厦镇', '441900116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2205, '4419', '凤岗镇', '441900117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2206, '4419', '大岭山镇', '441900118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2207, '4419', '长安镇', '441900119', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2208, '4419', '虎门镇', '441900121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2209, '4419', '厚街镇', '441900122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2210, '4419', '沙田镇', '441900123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2211, '4419', '道滘镇', '441900124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2212, '4419', '洪梅镇', '441900125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2213, '4419', '麻涌镇', '441900126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2214, '4419', '望牛墩镇', '441900127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2215, '4419', '中堂镇', '441900128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2216, '4419', '高埗镇', '441900129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2217, '4419', '松山湖', '441900401', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2218, '4419', '东莞港', '441900402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2219, '4419', '东莞生态园', '441900403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2220, '44', '中山市', '4420', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2221, '4420', '石岐街道', '442000001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2222, '4420', '东区街道', '442000002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2223, '4420', '中山港街道', '442000003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2224, '4420', '西区街道', '442000004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2225, '4420', '南区街道', '442000005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2226, '4420', '五桂山街道', '442000006', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2227, '4420', '小榄镇', '442000100', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2228, '4420', '黄圃镇', '442000101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2229, '4420', '民众镇', '442000102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2230, '4420', '东凤镇', '442000103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2231, '4420', '东升镇', '442000104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2232, '4420', '古镇镇', '442000105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2233, '4420', '沙溪镇', '442000106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2234, '4420', '坦洲镇', '442000107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2235, '4420', '港口镇', '442000108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2236, '4420', '三角镇', '442000109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2237, '4420', '横栏镇', '442000110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2238, '4420', '南头镇', '442000111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2239, '4420', '阜沙镇', '442000112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2240, '4420', '南朗镇', '442000113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2241, '4420', '三乡镇', '442000114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2242, '4420', '板芙镇', '442000115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2243, '4420', '大涌镇', '442000116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2244, '4420', '神湾镇', '442000117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2245, '44', '潮州市', '4451', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2246, '4451', '湘桥区', '445102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2247, '4451', '潮安区', '445103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2248, '4451', '饶平县', '445122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2249, '44', '揭阳市', '4452', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2250, '4452', '榕城区', '445202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2251, '4452', '揭东区', '445203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2252, '4452', '揭西县', '445222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2253, '4452', '惠来县', '445224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2254, '4452', '普宁市', '445281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2255, '44', '云浮市', '4453', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2256, '4453', '云城区', '445302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2257, '4453', '云安区', '445303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2258, '4453', '新兴县', '445321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2259, '4453', '郁南县', '445322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2260, '4453', '罗定市', '445381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2261, '0', '广西壮族自治区', '45', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2262, '45', '南宁市', '4501', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2263, '4501', '兴宁区', '450102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2264, '4501', '青秀区', '450103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2265, '4501', '江南区', '450105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2266, '4501', '西乡塘区', '450107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2267, '4501', '良庆区', '450108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2268, '4501', '邕宁区', '450109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2269, '4501', '武鸣区', '450110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2270, '4501', '隆安县', '450123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2271, '4501', '马山县', '450124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2272, '4501', '上林县', '450125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2273, '4501', '宾阳县', '450126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2274, '4501', '横县', '450127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2275, '45', '柳州市', '4502', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2276, '4502', '城中区', '450202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2277, '4502', '鱼峰区', '450203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2278, '4502', '柳南区', '450204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2279, '4502', '柳北区', '450205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2280, '4502', '柳江区', '450206', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2281, '4502', '柳城县', '450222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2282, '4502', '鹿寨县', '450223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2283, '4502', '融安县', '450224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2284, '4502', '融水苗族自治县', '450225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2285, '4502', '三江侗族自治县', '450226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2286, '45', '桂林市', '4503', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2287, '4503', '秀峰区', '450302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2288, '4503', '叠彩区', '450303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2289, '4503', '象山区', '450304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2290, '4503', '七星区', '450305', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2291, '4503', '雁山区', '450311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2292, '4503', '临桂区', '450312', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2293, '4503', '阳朔县', '450321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2294, '4503', '灵川县', '450323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2295, '4503', '全州县', '450324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2296, '4503', '兴安县', '450325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2297, '4503', '永福县', '450326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2298, '4503', '灌阳县', '450327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2299, '4503', '龙胜各族自治县', '450328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2300, '4503', '资源县', '450329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2301, '4503', '平乐县', '450330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2302, '4503', '恭城瑶族自治县', '450332', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2303, '4503', '荔浦市', '450381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2304, '45', '梧州市', '4504', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2305, '4504', '万秀区', '450403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2306, '4504', '长洲区', '450405', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2307, '4504', '龙圩区', '450406', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2308, '4504', '苍梧县', '450421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2309, '4504', '藤县', '450422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2310, '4504', '蒙山县', '450423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2311, '4504', '岑溪市', '450481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2312, '45', '北海市', '4505', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2313, '4505', '海城区', '450502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2314, '4505', '银海区', '450503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2315, '4505', '铁山港区', '450512', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2316, '4505', '合浦县', '450521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2317, '45', '防城港市', '4506', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2318, '4506', '港口区', '450602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2319, '4506', '防城区', '450603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2320, '4506', '上思县', '450621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2321, '4506', '东兴市', '450681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2322, '45', '钦州市', '4507', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2323, '4507', '钦南区', '450702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2324, '4507', '钦北区', '450703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2325, '4507', '灵山县', '450721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2326, '4507', '浦北县', '450722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2327, '45', '贵港市', '4508', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2328, '4508', '港北区', '450802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2329, '4508', '港南区', '450803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2330, '4508', '覃塘区', '450804', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2331, '4508', '平南县', '450821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2332, '4508', '桂平市', '450881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2333, '45', '玉林市', '4509', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2334, '4509', '玉州区', '450902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2335, '4509', '福绵区', '450903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2336, '4509', '容县', '450921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2337, '4509', '陆川县', '450922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2338, '4509', '博白县', '450923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2339, '4509', '兴业县', '450924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2340, '4509', '北流市', '450981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2341, '45', '百色市', '4510', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2342, '4510', '右江区', '451002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2343, '4510', '田阳区', '451003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2344, '4510', '田东县', '451022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2345, '4510', '德保县', '451024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2346, '4510', '那坡县', '451026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2347, '4510', '凌云县', '451027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2348, '4510', '乐业县', '451028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2349, '4510', '田林县', '451029', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2350, '4510', '西林县', '451030', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2351, '4510', '隆林各族自治县', '451031', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2352, '4510', '靖西市', '451081', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2353, '4510', '平果市', '451082', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2354, '45', '贺州市', '4511', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2355, '4511', '八步区', '451102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2356, '4511', '平桂区', '451103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2357, '4511', '昭平县', '451121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2358, '4511', '钟山县', '451122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2359, '4511', '富川瑶族自治县', '451123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2360, '45', '河池市', '4512', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2361, '4512', '金城江区', '451202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2362, '4512', '宜州区', '451203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2363, '4512', '南丹县', '451221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2364, '4512', '天峨县', '451222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2365, '4512', '凤山县', '451223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2366, '4512', '东兰县', '451224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2367, '4512', '罗城仫佬族自治县', '451225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2368, '4512', '环江毛南族自治县', '451226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2369, '4512', '巴马瑶族自治县', '451227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2370, '4512', '都安瑶族自治县', '451228', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2371, '4512', '大化瑶族自治县', '451229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2372, '45', '来宾市', '4513', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2373, '4513', '兴宾区', '451302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2374, '4513', '忻城县', '451321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2375, '4513', '象州县', '451322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2376, '4513', '武宣县', '451323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2377, '4513', '金秀瑶族自治县', '451324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2378, '4513', '合山市', '451381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2379, '45', '崇左市', '4514', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2380, '4514', '江州区', '451402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2381, '4514', '扶绥县', '451421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2382, '4514', '宁明县', '451422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2383, '4514', '龙州县', '451423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2384, '4514', '大新县', '451424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2385, '4514', '天等县', '451425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2386, '4514', '凭祥市', '451481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2387, '0', '海南省', '46', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2388, '46', '海口市', '4601', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2389, '4601', '秀英区', '460105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2390, '4601', '龙华区', '460106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2391, '4601', '琼山区', '460107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2392, '4601', '美兰区', '460108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2393, '46', '三亚市', '4602', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2394, '4602', '海棠区', '460202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2395, '4602', '吉阳区', '460203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2396, '4602', '天涯区', '460204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2397, '4602', '崖州区', '460205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2398, '46', '三沙市', '4603', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2399, '4603', '西沙群岛', '460321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2400, '4603', '南沙群岛', '460322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2401, '4603', '中沙群岛的岛礁及其海域', '460323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2402, '46', '儋州市', '4604', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2403, '4604', '那大镇', '460400100', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2404, '4604', '和庆镇', '460400101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2405, '4604', '南丰镇', '460400102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2406, '4604', '大成镇', '460400103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2407, '4604', '雅星镇', '460400104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2408, '4604', '兰洋镇', '460400105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2409, '4604', '光村镇', '460400106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2410, '4604', '木棠镇', '460400107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2411, '4604', '海头镇', '460400108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2412, '4604', '峨蔓镇', '460400109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2413, '4604', '王五镇', '460400111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2414, '4604', '白马井镇', '460400112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2415, '4604', '中和镇', '460400113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2416, '4604', '排浦镇', '460400114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2417, '4604', '东成镇', '460400115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2418, '4604', '新州镇', '460400116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2419, '4604', '洋浦经济开发区', '460400499', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2420, '4604', '华南热作学院', '460400500', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2421, '46', '省直辖县级行政区划', '4690', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2422, '4690', '五指山市', '469001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2423, '4690', '琼海市', '469002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2424, '4690', '文昌市', '469005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2425, '4690', '万宁市', '469006', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2426, '4690', '东方市', '469007', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2427, '4690', '定安县', '469021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2428, '4690', '屯昌县', '469022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2429, '4690', '澄迈县', '469023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2430, '4690', '临高县', '469024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2431, '4690', '白沙黎族自治县', '469025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2432, '4690', '昌江黎族自治县', '469026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2433, '4690', '乐东黎族自治县', '469027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2434, '4690', '陵水黎族自治县', '469028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2435, '4690', '保亭黎族苗族自治县', '469029', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2436, '4690', '琼中黎族苗族自治县', '469030', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2437, '0', '重庆市', '50', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2438, '50', '市辖区', '5001', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2439, '5001', '万州区', '500101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2440, '5001', '涪陵区', '500102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2441, '5001', '渝中区', '500103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2442, '5001', '大渡口区', '500104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2443, '5001', '江北区', '500105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2444, '5001', '沙坪坝区', '500106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2445, '5001', '九龙坡区', '500107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2446, '5001', '南岸区', '500108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2447, '5001', '北碚区', '500109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2448, '5001', '綦江区', '500110', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2449, '5001', '大足区', '500111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2450, '5001', '渝北区', '500112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2451, '5001', '巴南区', '500113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2452, '5001', '黔江区', '500114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2453, '5001', '长寿区', '500115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2454, '5001', '江津区', '500116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2455, '5001', '合川区', '500117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2456, '5001', '永川区', '500118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2457, '5001', '南川区', '500119', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2458, '5001', '璧山区', '500120', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2459, '5001', '铜梁区', '500151', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2460, '5001', '潼南区', '500152', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2461, '5001', '荣昌区', '500153', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2462, '5001', '开州区', '500154', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2463, '5001', '梁平区', '500155', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2464, '5001', '武隆区', '500156', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2465, '50', '县', '5002', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2466, '5002', '城口县', '500229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2467, '5002', '丰都县', '500230', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2468, '5002', '垫江县', '500231', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2469, '5002', '忠县', '500233', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2470, '5002', '云阳县', '500235', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2471, '5002', '奉节县', '500236', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2472, '5002', '巫山县', '500237', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2473, '5002', '巫溪县', '500238', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2474, '5002', '石柱土家族自治县', '500240', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2475, '5002', '秀山土家族苗族自治县', '500241', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2476, '5002', '酉阳土家族苗族自治县', '500242', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2477, '5002', '彭水苗族土家族自治县', '500243', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2478, '0', '四川省', '51', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2479, '51', '成都市', '5101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2480, '5101', '锦江区', '510104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2481, '5101', '青羊区', '510105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2482, '5101', '金牛区', '510106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2483, '5101', '武侯区', '510107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2484, '5101', '成华区', '510108', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2485, '5101', '龙泉驿区', '510112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2486, '5101', '青白江区', '510113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2487, '5101', '新都区', '510114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2488, '5101', '温江区', '510115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2489, '5101', '双流区', '510116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2490, '5101', '郫都区', '510117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2491, '5101', '新津区', '510118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2492, '5101', '金堂县', '510121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2493, '5101', '大邑县', '510129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2494, '5101', '蒲江县', '510131', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2495, '5101', '都江堰市', '510181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2496, '5101', '彭州市', '510182', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2497, '5101', '邛崃市', '510183', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2498, '5101', '崇州市', '510184', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2499, '5101', '简阳市', '510185', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2500, '51', '自贡市', '5103', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2501, '5103', '自流井区', '510302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2502, '5103', '贡井区', '510303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2503, '5103', '大安区', '510304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2504, '5103', '沿滩区', '510311', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2505, '5103', '荣县', '510321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2506, '5103', '富顺县', '510322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2507, '51', '攀枝花市', '5104', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2508, '5104', '东区', '510402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2509, '5104', '西区', '510403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2510, '5104', '仁和区', '510411', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2511, '5104', '米易县', '510421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2512, '5104', '盐边县', '510422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2513, '51', '泸州市', '5105', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2514, '5105', '江阳区', '510502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2515, '5105', '纳溪区', '510503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2516, '5105', '龙马潭区', '510504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2517, '5105', '泸县', '510521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2518, '5105', '合江县', '510522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2519, '5105', '叙永县', '510524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2520, '5105', '古蔺县', '510525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2521, '51', '德阳市', '5106', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2522, '5106', '旌阳区', '510603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2523, '5106', '罗江区', '510604', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2524, '5106', '中江县', '510623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2525, '5106', '广汉市', '510681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2526, '5106', '什邡市', '510682', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2527, '5106', '绵竹市', '510683', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2528, '51', '绵阳市', '5107', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2529, '5107', '涪城区', '510703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2530, '5107', '游仙区', '510704', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2531, '5107', '安州区', '510705', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2532, '5107', '三台县', '510722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2533, '5107', '盐亭县', '510723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2534, '5107', '梓潼县', '510725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2535, '5107', '北川羌族自治县', '510726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2536, '5107', '平武县', '510727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2537, '5107', '江油市', '510781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2538, '51', '广元市', '5108', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2539, '5108', '利州区', '510802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2540, '5108', '昭化区', '510811', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2541, '5108', '朝天区', '510812', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2542, '5108', '旺苍县', '510821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2543, '5108', '青川县', '510822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2544, '5108', '剑阁县', '510823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2545, '5108', '苍溪县', '510824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2546, '51', '遂宁市', '5109', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2547, '5109', '船山区', '510903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2548, '5109', '安居区', '510904', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2549, '5109', '蓬溪县', '510921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2550, '5109', '大英县', '510923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2551, '5109', '射洪市', '510981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2552, '51', '内江市', '5110', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2553, '5110', '市中区', '511002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2554, '5110', '东兴区', '511011', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2555, '5110', '威远县', '511024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2556, '5110', '资中县', '511025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2557, '5110', '内江经济开发区', '511071', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2558, '5110', '隆昌市', '511083', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2559, '51', '乐山市', '5111', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2560, '5111', '市中区', '511102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2561, '5111', '沙湾区', '511111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2562, '5111', '五通桥区', '511112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2563, '5111', '金口河区', '511113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2564, '5111', '犍为县', '511123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2565, '5111', '井研县', '511124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2566, '5111', '夹江县', '511126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2567, '5111', '沐川县', '511129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2568, '5111', '峨边彝族自治县', '511132', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2569, '5111', '马边彝族自治县', '511133', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2570, '5111', '峨眉山市', '511181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2571, '51', '南充市', '5113', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2572, '5113', '顺庆区', '511302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2573, '5113', '高坪区', '511303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2574, '5113', '嘉陵区', '511304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2575, '5113', '南部县', '511321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2576, '5113', '营山县', '511322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2577, '5113', '蓬安县', '511323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2578, '5113', '仪陇县', '511324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2579, '5113', '西充县', '511325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2580, '5113', '阆中市', '511381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2581, '51', '眉山市', '5114', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2582, '5114', '东坡区', '511402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2583, '5114', '彭山区', '511403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2584, '5114', '仁寿县', '511421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2585, '5114', '洪雅县', '511423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2586, '5114', '丹棱县', '511424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2587, '5114', '青神县', '511425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2588, '51', '宜宾市', '5115', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2589, '5115', '翠屏区', '511502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2590, '5115', '南溪区', '511503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2591, '5115', '叙州区', '511504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2592, '5115', '江安县', '511523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2593, '5115', '长宁县', '511524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2594, '5115', '高县', '511525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2595, '5115', '珙县', '511526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2596, '5115', '筠连县', '511527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2597, '5115', '兴文县', '511528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2598, '5115', '屏山县', '511529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2599, '51', '广安市', '5116', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2600, '5116', '广安区', '511602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2601, '5116', '前锋区', '511603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2602, '5116', '岳池县', '511621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2603, '5116', '武胜县', '511622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2604, '5116', '邻水县', '511623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2605, '5116', '华蓥市', '511681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2606, '51', '达州市', '5117', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2607, '5117', '通川区', '511702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2608, '5117', '达川区', '511703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2609, '5117', '宣汉县', '511722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2610, '5117', '开江县', '511723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2611, '5117', '大竹县', '511724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2612, '5117', '渠县', '511725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2613, '5117', '达州经济开发区', '511771', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2614, '5117', '万源市', '511781', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2615, '51', '雅安市', '5118', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2616, '5118', '雨城区', '511802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2617, '5118', '名山区', '511803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2618, '5118', '荥经县', '511822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2619, '5118', '汉源县', '511823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2620, '5118', '石棉县', '511824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2621, '5118', '天全县', '511825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2622, '5118', '芦山县', '511826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2623, '5118', '宝兴县', '511827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2624, '51', '巴中市', '5119', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2625, '5119', '巴州区', '511902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2626, '5119', '恩阳区', '511903', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2627, '5119', '通江县', '511921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2628, '5119', '南江县', '511922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2629, '5119', '平昌县', '511923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2630, '5119', '巴中经济开发区', '511971', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2631, '51', '资阳市', '5120', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2632, '5120', '雁江区', '512002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2633, '5120', '安岳县', '512021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2634, '5120', '乐至县', '512022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2635, '51', '阿坝藏族羌族自治州', '5132', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2636, '5132', '马尔康市', '513201', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2637, '5132', '汶川县', '513221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2638, '5132', '理县', '513222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2639, '5132', '茂县', '513223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2640, '5132', '松潘县', '513224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2641, '5132', '九寨沟县', '513225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2642, '5132', '金川县', '513226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2643, '5132', '小金县', '513227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2644, '5132', '黑水县', '513228', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2645, '5132', '壤塘县', '513230', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2646, '5132', '阿坝县', '513231', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2647, '5132', '若尔盖县', '513232', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2648, '5132', '红原县', '513233', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2649, '51', '甘孜藏族自治州', '5133', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2650, '5133', '康定市', '513301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2651, '5133', '泸定县', '513322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2652, '5133', '丹巴县', '513323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2653, '5133', '九龙县', '513324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2654, '5133', '雅江县', '513325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2655, '5133', '道孚县', '513326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2656, '5133', '炉霍县', '513327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2657, '5133', '甘孜县', '513328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2658, '5133', '新龙县', '513329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2659, '5133', '德格县', '513330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2660, '5133', '白玉县', '513331', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2661, '5133', '石渠县', '513332', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2662, '5133', '色达县', '513333', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2663, '5133', '理塘县', '513334', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2664, '5133', '巴塘县', '513335', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2665, '5133', '乡城县', '513336', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2666, '5133', '稻城县', '513337', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2667, '5133', '得荣县', '513338', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2668, '51', '凉山彝族自治州', '5134', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2669, '5134', '西昌市', '513401', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2670, '5134', '木里藏族自治县', '513422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2671, '5134', '盐源县', '513423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2672, '5134', '德昌县', '513424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2673, '5134', '会理县', '513425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2674, '5134', '会东县', '513426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2675, '5134', '宁南县', '513427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2676, '5134', '普格县', '513428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2677, '5134', '布拖县', '513429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2678, '5134', '金阳县', '513430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2679, '5134', '昭觉县', '513431', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2680, '5134', '喜德县', '513432', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2681, '5134', '冕宁县', '513433', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2682, '5134', '越西县', '513434', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2683, '5134', '甘洛县', '513435', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2684, '5134', '美姑县', '513436', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2685, '5134', '雷波县', '513437', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2686, '0', '贵州省', '52', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2687, '52', '贵阳市', '5201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2688, '5201', '南明区', '520102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2689, '5201', '云岩区', '520103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2690, '5201', '花溪区', '520111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2691, '5201', '乌当区', '520112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2692, '5201', '白云区', '520113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2693, '5201', '观山湖区', '520115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2694, '5201', '开阳县', '520121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2695, '5201', '息烽县', '520122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2696, '5201', '修文县', '520123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2697, '5201', '清镇市', '520181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2698, '52', '六盘水市', '5202', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2699, '5202', '钟山区', '520201', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2700, '5202', '六枝特区', '520203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2701, '5202', '水城县', '520221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2702, '5202', '盘州市', '520281', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2703, '52', '遵义市', '5203', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2704, '5203', '红花岗区', '520302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2705, '5203', '汇川区', '520303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2706, '5203', '播州区', '520304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2707, '5203', '桐梓县', '520322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2708, '5203', '绥阳县', '520323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2709, '5203', '正安县', '520324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2710, '5203', '道真仡佬族苗族自治县', '520325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2711, '5203', '务川仡佬族苗族自治县', '520326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2712, '5203', '凤冈县', '520327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2713, '5203', '湄潭县', '520328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2714, '5203', '余庆县', '520329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2715, '5203', '习水县', '520330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2716, '5203', '赤水市', '520381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2717, '5203', '仁怀市', '520382', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2718, '52', '安顺市', '5204', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2719, '5204', '西秀区', '520402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2720, '5204', '平坝区', '520403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2721, '5204', '普定县', '520422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2722, '5204', '镇宁布依族苗族自治县', '520423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2723, '5204', '关岭布依族苗族自治县', '520424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2724, '5204', '紫云苗族布依族自治县', '520425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2725, '52', '毕节市', '5205', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2726, '5205', '七星关区', '520502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2727, '5205', '大方县', '520521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2728, '5205', '黔西县', '520522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2729, '5205', '金沙县', '520523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2730, '5205', '织金县', '520524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2731, '5205', '纳雍县', '520525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2732, '5205', '威宁彝族回族苗族自治县', '520526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2733, '5205', '赫章县', '520527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2734, '52', '铜仁市', '5206', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2735, '5206', '碧江区', '520602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2736, '5206', '万山区', '520603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2737, '5206', '江口县', '520621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2738, '5206', '玉屏侗族自治县', '520622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2739, '5206', '石阡县', '520623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2740, '5206', '思南县', '520624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2741, '5206', '印江土家族苗族自治县', '520625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2742, '5206', '德江县', '520626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2743, '5206', '沿河土家族自治县', '520627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2744, '5206', '松桃苗族自治县', '520628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2745, '52', '黔西南布依族苗族自治州', '5223', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2746, '5223', '兴义市', '522301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2747, '5223', '兴仁市', '522302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2748, '5223', '普安县', '522323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2749, '5223', '晴隆县', '522324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2750, '5223', '贞丰县', '522325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2751, '5223', '望谟县', '522326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2752, '5223', '册亨县', '522327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2753, '5223', '安龙县', '522328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2754, '52', '黔东南苗族侗族自治州', '5226', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2755, '5226', '凯里市', '522601', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2756, '5226', '黄平县', '522622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2757, '5226', '施秉县', '522623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2758, '5226', '三穗县', '522624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2759, '5226', '镇远县', '522625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2760, '5226', '岑巩县', '522626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2761, '5226', '天柱县', '522627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2762, '5226', '锦屏县', '522628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2763, '5226', '剑河县', '522629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2764, '5226', '台江县', '522630', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2765, '5226', '黎平县', '522631', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2766, '5226', '榕江县', '522632', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2767, '5226', '从江县', '522633', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2768, '5226', '雷山县', '522634', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2769, '5226', '麻江县', '522635', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2770, '5226', '丹寨县', '522636', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2771, '52', '黔南布依族苗族自治州', '5227', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2772, '5227', '都匀市', '522701', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2773, '5227', '福泉市', '522702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2774, '5227', '荔波县', '522722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2775, '5227', '贵定县', '522723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2776, '5227', '瓮安县', '522725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2777, '5227', '独山县', '522726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2778, '5227', '平塘县', '522727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2779, '5227', '罗甸县', '522728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2780, '5227', '长顺县', '522729', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2781, '5227', '龙里县', '522730', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2782, '5227', '惠水县', '522731', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2783, '5227', '三都水族自治县', '522732', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2784, '0', '云南省', '53', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2785, '53', '昆明市', '5301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2786, '5301', '五华区', '530102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2787, '5301', '盘龙区', '530103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2788, '5301', '官渡区', '530111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2789, '5301', '西山区', '530112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2790, '5301', '东川区', '530113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2791, '5301', '呈贡区', '530114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2792, '5301', '晋宁区', '530115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2793, '5301', '富民县', '530124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2794, '5301', '宜良县', '530125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2795, '5301', '石林彝族自治县', '530126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2796, '5301', '嵩明县', '530127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2797, '5301', '禄劝彝族苗族自治县', '530128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2798, '5301', '寻甸回族彝族自治县', '530129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2799, '5301', '安宁市', '530181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2800, '53', '曲靖市', '5303', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2801, '5303', '麒麟区', '530302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2802, '5303', '沾益区', '530303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2803, '5303', '马龙区', '530304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2804, '5303', '陆良县', '530322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2805, '5303', '师宗县', '530323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2806, '5303', '罗平县', '530324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2807, '5303', '富源县', '530325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2808, '5303', '会泽县', '530326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2809, '5303', '宣威市', '530381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2810, '53', '玉溪市', '5304', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2811, '5304', '红塔区', '530402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2812, '5304', '江川区', '530403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2813, '5304', '通海县', '530423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2814, '5304', '华宁县', '530424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2815, '5304', '易门县', '530425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2816, '5304', '峨山彝族自治县', '530426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2817, '5304', '新平彝族傣族自治县', '530427', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2818, '5304', '元江哈尼族彝族傣族自治县', '530428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2819, '5304', '澄江市', '530481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2820, '53', '保山市', '5305', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2821, '5305', '隆阳区', '530502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2822, '5305', '施甸县', '530521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2823, '5305', '龙陵县', '530523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2824, '5305', '昌宁县', '530524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2825, '5305', '腾冲市', '530581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2826, '53', '昭通市', '5306', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2827, '5306', '昭阳区', '530602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2828, '5306', '鲁甸县', '530621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2829, '5306', '巧家县', '530622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2830, '5306', '盐津县', '530623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2831, '5306', '大关县', '530624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2832, '5306', '永善县', '530625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2833, '5306', '绥江县', '530626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2834, '5306', '镇雄县', '530627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2835, '5306', '彝良县', '530628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2836, '5306', '威信县', '530629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2837, '5306', '水富市', '530681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2838, '53', '丽江市', '5307', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2839, '5307', '古城区', '530702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2840, '5307', '玉龙纳西族自治县', '530721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2841, '5307', '永胜县', '530722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2842, '5307', '华坪县', '530723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2843, '5307', '宁蒗彝族自治县', '530724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2844, '53', '普洱市', '5308', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2845, '5308', '思茅区', '530802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2846, '5308', '宁洱哈尼族彝族自治县', '530821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2847, '5308', '墨江哈尼族自治县', '530822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2848, '5308', '景东彝族自治县', '530823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2849, '5308', '景谷傣族彝族自治县', '530824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2850, '5308', '镇沅彝族哈尼族拉祜族自治县', '530825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2851, '5308', '江城哈尼族彝族自治县', '530826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2852, '5308', '孟连傣族拉祜族佤族自治县', '530827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2853, '5308', '澜沧拉祜族自治县', '530828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2854, '5308', '西盟佤族自治县', '530829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2855, '53', '临沧市', '5309', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2856, '5309', '临翔区', '530902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2857, '5309', '凤庆县', '530921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2858, '5309', '云县', '530922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2859, '5309', '永德县', '530923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2860, '5309', '镇康县', '530924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2861, '5309', '双江拉祜族佤族布朗族傣族自治县', '530925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2862, '5309', '耿马傣族佤族自治县', '530926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2863, '5309', '沧源佤族自治县', '530927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2864, '53', '楚雄彝族自治州', '5323', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2865, '5323', '楚雄市', '532301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2866, '5323', '双柏县', '532322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2867, '5323', '牟定县', '532323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2868, '5323', '南华县', '532324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2869, '5323', '姚安县', '532325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2870, '5323', '大姚县', '532326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2871, '5323', '永仁县', '532327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2872, '5323', '元谋县', '532328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2873, '5323', '武定县', '532329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2874, '5323', '禄丰县', '532331', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2875, '53', '红河哈尼族彝族自治州', '5325', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2876, '5325', '个旧市', '532501', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2877, '5325', '开远市', '532502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2878, '5325', '蒙自市', '532503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2879, '5325', '弥勒市', '532504', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2880, '5325', '屏边苗族自治县', '532523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2881, '5325', '建水县', '532524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2882, '5325', '石屏县', '532525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2883, '5325', '泸西县', '532527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2884, '5325', '元阳县', '532528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2885, '5325', '红河县', '532529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2886, '5325', '金平苗族瑶族傣族自治县', '532530', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2887, '5325', '绿春县', '532531', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2888, '5325', '河口瑶族自治县', '532532', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2889, '53', '文山壮族苗族自治州', '5326', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2890, '5326', '文山市', '532601', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2891, '5326', '砚山县', '532622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2892, '5326', '西畴县', '532623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2893, '5326', '麻栗坡县', '532624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2894, '5326', '马关县', '532625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2895, '5326', '丘北县', '532626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2896, '5326', '广南县', '532627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2897, '5326', '富宁县', '532628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2898, '53', '西双版纳傣族自治州', '5328', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2899, '5328', '景洪市', '532801', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2900, '5328', '勐海县', '532822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2901, '5328', '勐腊县', '532823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2902, '53', '大理白族自治州', '5329', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2903, '5329', '大理市', '532901', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2904, '5329', '漾濞彝族自治县', '532922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2905, '5329', '祥云县', '532923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2906, '5329', '宾川县', '532924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2907, '5329', '弥渡县', '532925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2908, '5329', '南涧彝族自治县', '532926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2909, '5329', '巍山彝族回族自治县', '532927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2910, '5329', '永平县', '532928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2911, '5329', '云龙县', '532929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2912, '5329', '洱源县', '532930', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2913, '5329', '剑川县', '532931', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2914, '5329', '鹤庆县', '532932', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2915, '53', '德宏傣族景颇族自治州', '5331', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2916, '5331', '瑞丽市', '533102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2917, '5331', '芒市', '533103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2918, '5331', '梁河县', '533122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2919, '5331', '盈江县', '533123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2920, '5331', '陇川县', '533124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2921, '53', '怒江傈僳族自治州', '5333', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2922, '5333', '泸水市', '533301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2923, '5333', '福贡县', '533323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2924, '5333', '贡山独龙族怒族自治县', '533324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2925, '5333', '兰坪白族普米族自治县', '533325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2926, '53', '迪庆藏族自治州', '5334', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2927, '5334', '香格里拉市', '533401', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2928, '5334', '德钦县', '533422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2929, '5334', '维西傈僳族自治县', '533423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2930, '0', '西藏自治区', '54', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2931, '54', '拉萨市', '5401', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2932, '5401', '城关区', '540102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2933, '5401', '堆龙德庆区', '540103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2934, '5401', '达孜区', '540104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2935, '5401', '林周县', '540121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2936, '5401', '当雄县', '540122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2937, '5401', '尼木县', '540123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2938, '5401', '曲水县', '540124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2939, '5401', '墨竹工卡县', '540127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2940, '5401', '格尔木藏青工业园区', '540171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2941, '5401', '拉萨经济技术开发区', '540172', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2942, '5401', '西藏文化旅游创意园区', '540173', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2943, '5401', '达孜工业园区', '540174', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2944, '54', '日喀则市', '5402', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2945, '5402', '桑珠孜区', '540202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2946, '5402', '南木林县', '540221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2947, '5402', '江孜县', '540222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2948, '5402', '定日县', '540223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2949, '5402', '萨迦县', '540224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2950, '5402', '拉孜县', '540225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2951, '5402', '昂仁县', '540226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2952, '5402', '谢通门县', '540227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2953, '5402', '白朗县', '540228', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2954, '5402', '仁布县', '540229', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2955, '5402', '康马县', '540230', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2956, '5402', '定结县', '540231', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2957, '5402', '仲巴县', '540232', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2958, '5402', '亚东县', '540233', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2959, '5402', '吉隆县', '540234', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2960, '5402', '聂拉木县', '540235', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2961, '5402', '萨嘎县', '540236', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2962, '5402', '岗巴县', '540237', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2963, '54', '昌都市', '5403', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2964, '5403', '卡若区', '540302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2965, '5403', '江达县', '540321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2966, '5403', '贡觉县', '540322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2967, '5403', '类乌齐县', '540323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2968, '5403', '丁青县', '540324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2969, '5403', '察雅县', '540325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2970, '5403', '八宿县', '540326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2971, '5403', '左贡县', '540327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2972, '5403', '芒康县', '540328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2973, '5403', '洛隆县', '540329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2974, '5403', '边坝县', '540330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2975, '54', '林芝市', '5404', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2976, '5404', '巴宜区', '540402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2977, '5404', '工布江达县', '540421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2978, '5404', '米林县', '540422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2979, '5404', '墨脱县', '540423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2980, '5404', '波密县', '540424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2981, '5404', '察隅县', '540425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2982, '5404', '朗县', '540426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2983, '54', '山南市', '5405', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2984, '5405', '乃东区', '540502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2985, '5405', '扎囊县', '540521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2986, '5405', '贡嘎县', '540522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2987, '5405', '桑日县', '540523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2988, '5405', '琼结县', '540524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2989, '5405', '曲松县', '540525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2990, '5405', '措美县', '540526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2991, '5405', '洛扎县', '540527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2992, '5405', '加查县', '540528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2993, '5405', '隆子县', '540529', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2994, '5405', '错那县', '540530', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2995, '5405', '浪卡子县', '540531', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2996, '54', '那曲市', '5406', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2997, '5406', '色尼区', '540602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2998, '5406', '嘉黎县', '540621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (2999, '5406', '比如县', '540622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3000, '5406', '聂荣县', '540623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3001, '5406', '安多县', '540624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3002, '5406', '申扎县', '540625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3003, '5406', '索县', '540626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3004, '5406', '班戈县', '540627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3005, '5406', '巴青县', '540628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3006, '5406', '尼玛县', '540629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3007, '5406', '双湖县', '540630', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3008, '54', '阿里地区', '5425', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3009, '5425', '普兰县', '542521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3010, '5425', '札达县', '542522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3011, '5425', '噶尔县', '542523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3012, '5425', '日土县', '542524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3013, '5425', '革吉县', '542525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3014, '5425', '改则县', '542526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3015, '5425', '措勤县', '542527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3016, '0', '陕西省', '61', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3017, '61', '西安市', '6101', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3018, '6101', '新城区', '610102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3019, '6101', '碑林区', '610103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3020, '6101', '莲湖区', '610104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3021, '6101', '灞桥区', '610111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3022, '6101', '未央区', '610112', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3023, '6101', '雁塔区', '610113', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3024, '6101', '阎良区', '610114', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3025, '6101', '临潼区', '610115', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3026, '6101', '长安区', '610116', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3027, '6101', '高陵区', '610117', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3028, '6101', '鄠邑区', '610118', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3029, '6101', '蓝田县', '610122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3030, '6101', '周至县', '610124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3031, '61', '铜川市', '6102', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3032, '6102', '王益区', '610202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3033, '6102', '印台区', '610203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3034, '6102', '耀州区', '610204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3035, '6102', '宜君县', '610222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3036, '61', '宝鸡市', '6103', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3037, '6103', '渭滨区', '610302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3038, '6103', '金台区', '610303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3039, '6103', '陈仓区', '610304', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3040, '6103', '凤翔县', '610322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3041, '6103', '岐山县', '610323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3042, '6103', '扶风县', '610324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3043, '6103', '眉县', '610326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3044, '6103', '陇县', '610327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3045, '6103', '千阳县', '610328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3046, '6103', '麟游县', '610329', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3047, '6103', '凤县', '610330', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3048, '6103', '太白县', '610331', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3049, '61', '咸阳市', '6104', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3050, '6104', '秦都区', '610402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3051, '6104', '杨陵区', '610403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3052, '6104', '渭城区', '610404', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3053, '6104', '三原县', '610422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3054, '6104', '泾阳县', '610423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3055, '6104', '乾县', '610424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3056, '6104', '礼泉县', '610425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3057, '6104', '永寿县', '610426', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3058, '6104', '长武县', '610428', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3059, '6104', '旬邑县', '610429', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3060, '6104', '淳化县', '610430', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3061, '6104', '武功县', '610431', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3062, '6104', '兴平市', '610481', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3063, '6104', '彬州市', '610482', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3064, '61', '渭南市', '6105', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3065, '6105', '临渭区', '610502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3066, '6105', '华州区', '610503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3067, '6105', '潼关县', '610522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3068, '6105', '大荔县', '610523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3069, '6105', '合阳县', '610524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3070, '6105', '澄城县', '610525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3071, '6105', '蒲城县', '610526', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3072, '6105', '白水县', '610527', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3073, '6105', '富平县', '610528', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3074, '6105', '韩城市', '610581', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3075, '6105', '华阴市', '610582', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3076, '61', '延安市', '6106', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3077, '6106', '宝塔区', '610602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3078, '6106', '安塞区', '610603', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3079, '6106', '延长县', '610621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3080, '6106', '延川县', '610622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3081, '6106', '志丹县', '610625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3082, '6106', '吴起县', '610626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3083, '6106', '甘泉县', '610627', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3084, '6106', '富县', '610628', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3085, '6106', '洛川县', '610629', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3086, '6106', '宜川县', '610630', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3087, '6106', '黄龙县', '610631', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3088, '6106', '黄陵县', '610632', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3089, '6106', '子长市', '610681', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3090, '61', '汉中市', '6107', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3091, '6107', '汉台区', '610702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3092, '6107', '南郑区', '610703', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3093, '6107', '城固县', '610722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3094, '6107', '洋县', '610723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3095, '6107', '西乡县', '610724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3096, '6107', '勉县', '610725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3097, '6107', '宁强县', '610726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3098, '6107', '略阳县', '610727', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3099, '6107', '镇巴县', '610728', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3100, '6107', '留坝县', '610729', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3101, '6107', '佛坪县', '610730', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3102, '61', '榆林市', '6108', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3103, '6108', '榆阳区', '610802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3104, '6108', '横山区', '610803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3105, '6108', '府谷县', '610822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3106, '6108', '靖边县', '610824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3107, '6108', '定边县', '610825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3108, '6108', '绥德县', '610826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3109, '6108', '米脂县', '610827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3110, '6108', '佳县', '610828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3111, '6108', '吴堡县', '610829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3112, '6108', '清涧县', '610830', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3113, '6108', '子洲县', '610831', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3114, '6108', '神木市', '610881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3115, '61', '安康市', '6109', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3116, '6109', '汉滨区', '610902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3117, '6109', '汉阴县', '610921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3118, '6109', '石泉县', '610922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3119, '6109', '宁陕县', '610923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3120, '6109', '紫阳县', '610924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3121, '6109', '岚皋县', '610925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3122, '6109', '平利县', '610926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3123, '6109', '镇坪县', '610927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3124, '6109', '旬阳县', '610928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3125, '6109', '白河县', '610929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3126, '61', '商洛市', '6110', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3127, '6110', '商州区', '611002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3128, '6110', '洛南县', '611021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3129, '6110', '丹凤县', '611022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3130, '6110', '商南县', '611023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3131, '6110', '山阳县', '611024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3132, '6110', '镇安县', '611025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3133, '6110', '柞水县', '611026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3134, '0', '甘肃省', '62', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3135, '62', '兰州市', '6201', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3136, '6201', '城关区', '620102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3137, '6201', '七里河区', '620103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3138, '6201', '西固区', '620104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3139, '6201', '安宁区', '620105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3140, '6201', '红古区', '620111', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3141, '6201', '永登县', '620121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3142, '6201', '皋兰县', '620122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3143, '6201', '榆中县', '620123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3144, '6201', '兰州新区', '620171', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3145, '62', '嘉峪关市', '6202', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3146, '6202', '雄关街道', '620201001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3147, '6202', '钢城街道', '620201002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3148, '6202', '新城镇', '620201100', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3149, '6202', '峪泉镇', '620201101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3150, '6202', '文殊镇', '620201102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3151, '62', '金昌市', '6203', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3152, '6203', '金川区', '620302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3153, '6203', '永昌县', '620321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3154, '62', '白银市', '6204', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3155, '6204', '白银区', '620402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3156, '6204', '平川区', '620403', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3157, '6204', '靖远县', '620421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3158, '6204', '会宁县', '620422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3159, '6204', '景泰县', '620423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3160, '62', '天水市', '6205', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3161, '6205', '秦州区', '620502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3162, '6205', '麦积区', '620503', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3163, '6205', '清水县', '620521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3164, '6205', '秦安县', '620522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3165, '6205', '甘谷县', '620523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3166, '6205', '武山县', '620524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3167, '6205', '张家川回族自治县', '620525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3168, '62', '武威市', '6206', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3169, '6206', '凉州区', '620602', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3170, '6206', '民勤县', '620621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3171, '6206', '古浪县', '620622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3172, '6206', '天祝藏族自治县', '620623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3173, '62', '张掖市', '6207', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3174, '6207', '甘州区', '620702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3175, '6207', '肃南裕固族自治县', '620721', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3176, '6207', '民乐县', '620722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3177, '6207', '临泽县', '620723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3178, '6207', '高台县', '620724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3179, '6207', '山丹县', '620725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3180, '62', '平凉市', '6208', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3181, '6208', '崆峒区', '620802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3182, '6208', '泾川县', '620821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3183, '6208', '灵台县', '620822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3184, '6208', '崇信县', '620823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3185, '6208', '庄浪县', '620825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3186, '6208', '静宁县', '620826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3187, '6208', '华亭市', '620881', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3188, '62', '酒泉市', '6209', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3189, '6209', '肃州区', '620902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3190, '6209', '金塔县', '620921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3191, '6209', '瓜州县', '620922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3192, '6209', '肃北蒙古族自治县', '620923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3193, '6209', '阿克塞哈萨克族自治县', '620924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3194, '6209', '玉门市', '620981', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3195, '6209', '敦煌市', '620982', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3196, '62', '庆阳市', '6210', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3197, '6210', '西峰区', '621002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3198, '6210', '庆城县', '621021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3199, '6210', '环县', '621022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3200, '6210', '华池县', '621023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3201, '6210', '合水县', '621024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3202, '6210', '正宁县', '621025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3203, '6210', '宁县', '621026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3204, '6210', '镇原县', '621027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3205, '62', '定西市', '6211', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3206, '6211', '安定区', '621102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3207, '6211', '通渭县', '621121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3208, '6211', '陇西县', '621122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3209, '6211', '渭源县', '621123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3210, '6211', '临洮县', '621124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3211, '6211', '漳县', '621125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3212, '6211', '岷县', '621126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3213, '62', '陇南市', '6212', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3214, '6212', '武都区', '621202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3215, '6212', '成县', '621221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3216, '6212', '文县', '621222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3217, '6212', '宕昌县', '621223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3218, '6212', '康县', '621224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3219, '6212', '西和县', '621225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3220, '6212', '礼县', '621226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3221, '6212', '徽县', '621227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3222, '6212', '两当县', '621228', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3223, '62', '临夏回族自治州', '6229', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3224, '6229', '临夏市', '622901', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3225, '6229', '临夏县', '622921', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3226, '6229', '康乐县', '622922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3227, '6229', '永靖县', '622923', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3228, '6229', '广河县', '622924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3229, '6229', '和政县', '622925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3230, '6229', '东乡族自治县', '622926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3231, '6229', '积石山保安族东乡族撒拉族自治县', '622927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3232, '62', '甘南藏族自治州', '6230', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3233, '6230', '合作市', '623001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3234, '6230', '临潭县', '623021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3235, '6230', '卓尼县', '623022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3236, '6230', '舟曲县', '623023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3237, '6230', '迭部县', '623024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3238, '6230', '玛曲县', '623025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3239, '6230', '碌曲县', '623026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3240, '6230', '夏河县', '623027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3241, '0', '青海省', '63', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3242, '63', '西宁市', '6301', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3243, '6301', '城东区', '630102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3244, '6301', '城中区', '630103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3245, '6301', '城西区', '630104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3246, '6301', '城北区', '630105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3247, '6301', '湟中区', '630106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3248, '6301', '大通回族土族自治县', '630121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3249, '6301', '湟源县', '630123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3250, '63', '海东市', '6302', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3251, '6302', '乐都区', '630202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3252, '6302', '平安区', '630203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3253, '6302', '民和回族土族自治县', '630222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3254, '6302', '互助土族自治县', '630223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3255, '6302', '化隆回族自治县', '630224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3256, '6302', '循化撒拉族自治县', '630225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3257, '63', '海北藏族自治州', '6322', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3258, '6322', '门源回族自治县', '632221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3259, '6322', '祁连县', '632222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3260, '6322', '海晏县', '632223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3261, '6322', '刚察县', '632224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3262, '63', '黄南藏族自治州', '6323', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3263, '6323', '同仁县', '632321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3264, '6323', '尖扎县', '632322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3265, '6323', '泽库县', '632323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3266, '6323', '河南蒙古族自治县', '632324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3267, '63', '海南藏族自治州', '6325', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3268, '6325', '共和县', '632521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3269, '6325', '同德县', '632522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3270, '6325', '贵德县', '632523', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3271, '6325', '兴海县', '632524', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3272, '6325', '贵南县', '632525', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3273, '63', '果洛藏族自治州', '6326', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3274, '6326', '玛沁县', '632621', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3275, '6326', '班玛县', '632622', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3276, '6326', '甘德县', '632623', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3277, '6326', '达日县', '632624', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3278, '6326', '久治县', '632625', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3279, '6326', '玛多县', '632626', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3280, '63', '玉树藏族自治州', '6327', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3281, '6327', '玉树市', '632701', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3282, '6327', '杂多县', '632722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3283, '6327', '称多县', '632723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3284, '6327', '治多县', '632724', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3285, '6327', '囊谦县', '632725', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3286, '6327', '曲麻莱县', '632726', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3287, '63', '海西蒙古族藏族自治州', '6328', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3288, '6328', '格尔木市', '632801', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3289, '6328', '德令哈市', '632802', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3290, '6328', '茫崖市', '632803', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3291, '6328', '乌兰县', '632821', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3292, '6328', '都兰县', '632822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3293, '6328', '天峻县', '632823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3294, '6328', '大柴旦行政委员会', '632857', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3295, '0', '宁夏回族自治区', '64', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3296, '64', '银川市', '6401', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3297, '6401', '兴庆区', '640104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3298, '6401', '西夏区', '640105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3299, '6401', '金凤区', '640106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3300, '6401', '永宁县', '640121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3301, '6401', '贺兰县', '640122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3302, '6401', '灵武市', '640181', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3303, '64', '石嘴山市', '6402', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3304, '6402', '大武口区', '640202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3305, '6402', '惠农区', '640205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3306, '6402', '平罗县', '640221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3307, '64', '吴忠市', '6403', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3308, '6403', '利通区', '640302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3309, '6403', '红寺堡区', '640303', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3310, '6403', '盐池县', '640323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3311, '6403', '同心县', '640324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3312, '6403', '青铜峡市', '640381', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3313, '64', '固原市', '6404', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3314, '6404', '原州区', '640402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3315, '6404', '西吉县', '640422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3316, '6404', '隆德县', '640423', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3317, '6404', '泾源县', '640424', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3318, '6404', '彭阳县', '640425', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3319, '64', '中卫市', '6405', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3320, '6405', '沙坡头区', '640502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3321, '6405', '中宁县', '640521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3322, '6405', '海原县', '640522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3323, '0', '新疆维吾尔自治区', '65', 0, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3324, '65', '乌鲁木齐市', '6501', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3325, '6501', '天山区', '650102', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3326, '6501', '沙依巴克区', '650103', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3327, '6501', '新市区', '650104', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3328, '6501', '水磨沟区', '650105', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3329, '6501', '头屯河区', '650106', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3330, '6501', '达坂城区', '650107', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3331, '6501', '米东区', '650109', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3332, '6501', '乌鲁木齐县', '650121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3333, '65', '克拉玛依市', '6502', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3334, '6502', '独山子区', '650202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3335, '6502', '克拉玛依区', '650203', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3336, '6502', '白碱滩区', '650204', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3337, '6502', '乌尔禾区', '650205', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3338, '65', '吐鲁番市', '6504', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3339, '6504', '高昌区', '650402', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3340, '6504', '鄯善县', '650421', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3341, '6504', '托克逊县', '650422', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3342, '65', '哈密市', '6505', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3343, '6505', '伊州区', '650502', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3344, '6505', '巴里坤哈萨克自治县', '650521', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3345, '6505', '伊吾县', '650522', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3346, '65', '昌吉回族自治州', '6523', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3347, '6523', '昌吉市', '652301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3348, '6523', '阜康市', '652302', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3349, '6523', '呼图壁县', '652323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3350, '6523', '玛纳斯县', '652324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3351, '6523', '奇台县', '652325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3352, '6523', '吉木萨尔县', '652327', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3353, '6523', '木垒哈萨克自治县', '652328', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3354, '65', '博尔塔拉蒙古自治州', '6527', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3355, '6527', '博乐市', '652701', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3356, '6527', '阿拉山口市', '652702', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3357, '6527', '精河县', '652722', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3358, '6527', '温泉县', '652723', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3359, '65', '巴音郭楞蒙古自治州', '6528', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3360, '6528', '库尔勒市', '652801', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3361, '6528', '轮台县', '652822', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3362, '6528', '尉犁县', '652823', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3363, '6528', '若羌县', '652824', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3364, '6528', '且末县', '652825', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3365, '6528', '焉耆回族自治县', '652826', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3366, '6528', '和静县', '652827', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3367, '6528', '和硕县', '652828', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3368, '6528', '博湖县', '652829', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3369, '6528', '库尔勒经济技术开发区', '652871', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3370, '65', '阿克苏地区', '6529', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3371, '6529', '阿克苏市', '652901', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3372, '6529', '库车市', '652902', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3373, '6529', '温宿县', '652922', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3374, '6529', '沙雅县', '652924', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3375, '6529', '新和县', '652925', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3376, '6529', '拜城县', '652926', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3377, '6529', '乌什县', '652927', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3378, '6529', '阿瓦提县', '652928', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3379, '6529', '柯坪县', '652929', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3380, '65', '克孜勒苏柯尔克孜自治州', '6530', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3381, '6530', '阿图什市', '653001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3382, '6530', '阿克陶县', '653022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3383, '6530', '阿合奇县', '653023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3384, '6530', '乌恰县', '653024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3385, '65', '喀什地区', '6531', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3386, '6531', '喀什市', '653101', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3387, '6531', '疏附县', '653121', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3388, '6531', '疏勒县', '653122', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3389, '6531', '英吉沙县', '653123', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3390, '6531', '泽普县', '653124', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3391, '6531', '莎车县', '653125', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3392, '6531', '叶城县', '653126', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3393, '6531', '麦盖提县', '653127', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3394, '6531', '岳普湖县', '653128', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3395, '6531', '伽师县', '653129', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3396, '6531', '巴楚县', '653130', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3397, '6531', '塔什库尔干塔吉克自治县', '653131', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3398, '65', '和田地区', '6532', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3399, '6532', '和田市', '653201', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3400, '6532', '和田县', '653221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3401, '6532', '墨玉县', '653222', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3402, '6532', '皮山县', '653223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3403, '6532', '洛浦县', '653224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3404, '6532', '策勒县', '653225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3405, '6532', '于田县', '653226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3406, '6532', '民丰县', '653227', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3407, '65', '伊犁哈萨克自治州', '6540', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3408, '6540', '伊宁市', '654002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3409, '6540', '奎屯市', '654003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3410, '6540', '霍尔果斯市', '654004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3411, '6540', '伊宁县', '654021', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3412, '6540', '察布查尔锡伯自治县', '654022', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3413, '6540', '霍城县', '654023', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3414, '6540', '巩留县', '654024', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3415, '6540', '新源县', '654025', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3416, '6540', '昭苏县', '654026', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3417, '6540', '特克斯县', '654027', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3418, '6540', '尼勒克县', '654028', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3419, '65', '塔城地区', '6542', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3420, '6542', '塔城市', '654201', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3421, '6542', '乌苏市', '654202', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3422, '6542', '额敏县', '654221', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3423, '6542', '沙湾县', '654223', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3424, '6542', '托里县', '654224', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3425, '6542', '裕民县', '654225', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3426, '6542', '和布克赛尔蒙古自治县', '654226', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3427, '65', '阿勒泰地区', '6543', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3428, '6543', '阿勒泰市', '654301', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3429, '6543', '布尔津县', '654321', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3430, '6543', '富蕴县', '654322', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3431, '6543', '福海县', '654323', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3432, '6543', '哈巴河县', '654324', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3433, '6543', '青河县', '654325', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3434, '6543', '吉木乃县', '654326', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3435, '65', '自治区直辖县级行政区划', '6590', 1, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3436, '6590', '石河子市', '659001', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3437, '6590', '阿拉尔市', '659002', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3438, '6590', '图木舒克市', '659003', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3439, '6590', '五家渠市', '659004', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3440, '6590', '北屯市', '659005', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3441, '6590', '铁门关市', '659006', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3442, '6590', '双河市', '659007', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3443, '6590', '可克达拉市', '659008', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3444, '6590', '昆玉市', '659009', 2, NULL, NULL, NULL);
INSERT INTO `areas` VALUES (3445, '6590', '胡杨河市', '659010', 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for article_menus
-- ----------------------------
DROP TABLE IF EXISTS `article_menus`;
CREATE TABLE `article_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `is_sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_menus
-- ----------------------------
INSERT INTO `article_menus` VALUES (3, 1, 0, '帮助中心', 99, '2022-01-11 13:27:25', '2022-01-11 13:27:25', NULL);

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (5, 1, 3, '帮助中心', '<p><span>sad</span></p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"sad\"}]}]', 5, '2022-01-11 13:32:27', '2022-01-11 17:48:36', NULL);
INSERT INTO `articles` VALUES (4, 1, 3, '其他合作', '<p><span>sad</span></p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"sad\"}]}]', 0, '2022-01-11 13:32:18', '2022-01-11 13:32:18', NULL);
INSERT INTO `articles` VALUES (3, 1, 3, '网站公告', '<p><span>dsad</span></p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"dsad\"}]}]', 0, '2022-01-11 13:30:16', '2022-01-11 13:30:16', NULL);
INSERT INTO `articles` VALUES (6, 1, 3, '关于我们', '<p><span>sad</span></p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"sad\"}]}]', 1, '2022-01-11 13:32:35', '2022-01-11 13:56:45', NULL);

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `sku_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Sku_ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `buy_num` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (2, 6, 1, 1, 1, 1, '2021-12-26 19:48:38', '2021-12-28 00:00:10', '2021-12-28 00:00:10');
INSERT INTO `carts` VALUES (3, 6, 1, 1, 1, 1, '2021-12-28 00:01:44', '2021-12-28 00:02:00', '2021-12-28 00:02:00');
INSERT INTO `carts` VALUES (4, 6, 1, 1, 1, 1, '2021-12-28 00:04:09', '2021-12-28 00:04:23', '2021-12-28 00:04:23');
INSERT INTO `carts` VALUES (5, 6, 1, 1, 1, 1, '2021-12-28 00:04:37', '2021-12-28 00:10:13', NULL);

-- ----------------------------
-- Table structure for cashes
-- ----------------------------
DROP TABLE IF EXISTS `cashes`;
CREATE TABLE `cashes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '金额',
  `cash_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态0 提现申请 1提现成功 2拒绝提现',
  `refuse_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '拒绝原因',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '提现人名',
  `card_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '银行卡号',
  `bank_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '银行名',
  `remark` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cashes
-- ----------------------------
INSERT INTO `cashes` VALUES (1, 6, 0, 10.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:25:27', '2021-12-26 15:25:27', NULL);
INSERT INTO `cashes` VALUES (2, 6, 0, 10.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:29:49', '2021-12-26 15:29:49', NULL);
INSERT INTO `cashes` VALUES (3, 6, 0, 10.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:31:20', '2021-12-26 15:31:20', NULL);
INSERT INTO `cashes` VALUES (4, 6, 0, 10.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:32:42', '2021-12-26 15:32:42', NULL);
INSERT INTO `cashes` VALUES (5, 6, 0, 10.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:35:16', '2021-12-26 15:35:16', NULL);
INSERT INTO `cashes` VALUES (6, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:47:13', '2021-12-26 15:47:13', NULL);
INSERT INTO `cashes` VALUES (7, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:49:31', '2021-12-26 15:49:31', NULL);
INSERT INTO `cashes` VALUES (8, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:53:43', '2021-12-26 15:53:43', NULL);
INSERT INTO `cashes` VALUES (9, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:55:05', '2021-12-26 15:55:05', NULL);
INSERT INTO `cashes` VALUES (10, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:55:41', '2021-12-26 15:55:41', NULL);
INSERT INTO `cashes` VALUES (11, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:56:25', '2021-12-26 15:56:25', NULL);
INSERT INTO `cashes` VALUES (12, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:58:07', '2021-12-26 15:58:07', NULL);
INSERT INTO `cashes` VALUES (13, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:58:33', '2021-12-26 15:58:33', NULL);
INSERT INTO `cashes` VALUES (14, 6, 0, 1.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 15:59:12', '2021-12-26 15:59:12', NULL);
INSERT INTO `cashes` VALUES (15, 6, 0, 5.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 16:00:40', '2021-12-26 16:00:40', NULL);
INSERT INTO `cashes` VALUES (16, 6, 0, 6.00, 0, '', 'asd', 'asd', 'asd', '', '2021-12-26 16:01:48', '2021-12-26 16:01:48', NULL);
INSERT INTO `cashes` VALUES (17, 0, 1, 1.00, 0, '', 'dasd', 'das', 'asd', '', '2022-01-01 19:38:01', '2022-01-01 19:38:01', NULL);
INSERT INTO `cashes` VALUES (18, 0, 1, 1.00, 0, '', 'sc', 'sad', 'sad', '', '2022-01-01 19:41:57', '2022-01-01 19:41:57', NULL);
INSERT INTO `cashes` VALUES (19, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:43:44', '2022-01-01 19:43:44', NULL);
INSERT INTO `cashes` VALUES (20, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:46:40', '2022-01-01 19:46:40', NULL);
INSERT INTO `cashes` VALUES (21, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:46:44', '2022-01-01 19:46:44', NULL);
INSERT INTO `cashes` VALUES (22, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:47:47', '2022-01-01 19:47:47', NULL);
INSERT INTO `cashes` VALUES (23, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:48:04', '2022-01-01 19:48:04', NULL);
INSERT INTO `cashes` VALUES (24, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:48:43', '2022-01-01 19:48:43', NULL);
INSERT INTO `cashes` VALUES (25, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:49:11', '2022-01-01 19:49:11', NULL);
INSERT INTO `cashes` VALUES (26, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:49:28', '2022-01-01 19:49:28', NULL);
INSERT INTO `cashes` VALUES (27, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:49:36', '2022-01-01 19:49:36', NULL);
INSERT INTO `cashes` VALUES (28, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:50:06', '2022-01-01 19:50:06', NULL);
INSERT INTO `cashes` VALUES (29, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:50:30', '2022-01-01 19:50:30', NULL);
INSERT INTO `cashes` VALUES (30, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:51:54', '2022-01-01 19:51:54', NULL);
INSERT INTO `cashes` VALUES (31, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:52:23', '2022-01-01 19:52:23', NULL);
INSERT INTO `cashes` VALUES (32, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:52:59', '2022-01-01 19:52:59', NULL);
INSERT INTO `cashes` VALUES (33, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:53:24', '2022-01-01 19:53:24', NULL);
INSERT INTO `cashes` VALUES (34, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:53:35', '2022-01-01 19:53:35', NULL);
INSERT INTO `cashes` VALUES (35, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:53:51', '2022-01-01 19:53:51', NULL);
INSERT INTO `cashes` VALUES (36, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:53:55', '2022-01-01 19:53:55', NULL);
INSERT INTO `cashes` VALUES (37, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:54:37', '2022-01-01 19:54:37', NULL);
INSERT INTO `cashes` VALUES (38, 0, 1, 1.00, 0, '', 'sad', 'asd', 'sad', '', '2022-01-01 19:58:05', '2022-01-01 19:58:05', NULL);

-- ----------------------------
-- Table structure for collective_logs
-- ----------------------------
DROP TABLE IF EXISTS `collective_logs`;
CREATE TABLE `collective_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `collective_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '团ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `discount` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '折扣',
  `need` tinyint(3) UNSIGNED NOT NULL DEFAULT 5 COMMENT '需要人数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT '状态 0取消 1完成  2 拼团中',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of collective_logs
-- ----------------------------
INSERT INTO `collective_logs` VALUES (1, 1, 6, 1, 1, 1.00, 213, 2, '2022-01-06 00:41:57', '2022-01-06 00:41:57', NULL);
INSERT INTO `collective_logs` VALUES (2, 1, 6, 1, 1, 1.00, 213, 2, '2022-01-06 00:42:37', '2022-01-06 00:42:37', NULL);
INSERT INTO `collective_logs` VALUES (3, 1, 6, 1, 1, 1.00, 213, 2, '2022-01-06 01:25:32', '2022-01-06 01:25:32', NULL);

-- ----------------------------
-- Table structure for collectives
-- ----------------------------
DROP TABLE IF EXISTS `collectives`;
CREATE TABLE `collectives`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `discount` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '折扣',
  `need` tinyint(3) UNSIGNED NOT NULL DEFAULT 5 COMMENT '需要人数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of collectives
-- ----------------------------
INSERT INTO `collectives` VALUES (1, 1, 1, 1.00, 213, '2022-01-03 20:49:08', '2022-01-03 20:53:01', NULL);

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '值',
  `description` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '序列化值',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES (1, 'web_name', '青梧商城2', '网站名称', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (2, 'index_name', '青梧系统', '首页标题', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (3, 'keyword', '关键词', '关键词', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (4, 'description', '网站描述', '网站描述', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (5, 'logo', '/storage/logo/2021-11-27/JjpNstvYcfS9SoKZ8L3v2BfhLpLfZIZiGVIOSsmI.png', '网站Logo', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (6, 'tel', '电话', '电话', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (7, 'mobile', '座机', '座机', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (8, 'email', '邮箱', '邮箱', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (9, 'icp', '备案信息', '备案信息', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (10, 'close_status', '1', '关闭网站', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (11, 'close_reason', '关闭原因', '关闭原因', 0, NULL, '2022-01-06 23:14:46', NULL);
INSERT INTO `configs` VALUES (12, 'upload', '{\"save_type\":false,\"key\":\"LTAI5tQYTWBuVjP2\",\"access\":\"03MewxrrTRlbit\",\"bucket\":\"qingwuit\",\"endpoint\":\"oss-cn-shenzhe2\",\"cdn\":\"\",\"ssl\":false}', '上传配置', 1, NULL, '2021-12-01 16:01:12', NULL);
INSERT INTO `configs` VALUES (13, 'sms', '{\"key\":null,\"secret\":null}', '短信配置', 1, NULL, '2021-11-26 17:52:28', NULL);
INSERT INTO `configs` VALUES (14, 'oauth', '{\"weixin\":{\"client_id\":\"asd\",\"key\":\"asd\",\"return_url\":\"sda\"},\"weixinweb\":{\"client_id\":\"ads\",\"key\":\"sad\",\"return_url\":\"dsa\"}}', '第三方登录', 1, NULL, '2022-01-12 15:42:37', NULL);
INSERT INTO `configs` VALUES (15, 'pay', '{\"wechatwap\":{\"app_id\":\"asd\",\"mach_id\":\"asd\",\"mch_secret_key\":\"asd\",\"mch_secret_cert\":\"\\/crt\\/2022-01-12\\/ecxGbUEqcBneDzh0k0b3Szkk57fwNYiwvbigHsQV.png\",\"mch_public_cert_path\":\"\\/crt\\/2022-01-12\\/sd4Y6cH63hgLfUtmla4MvafPK6dqmQlM7YnrBtgT.png\",\"notify_url\":\"dsa\"}}', '支付配置', 1, NULL, '2022-01-12 21:28:42', NULL);
INSERT INTO `configs` VALUES (16, 'amap', '{\"key\":\"79f3a628c93\",\"jsapi\":\"f7619d49a4aea5c\"}', '高德地图', 1, NULL, '2022-01-09 22:00:05', NULL);
INSERT INTO `configs` VALUES (17, 'store', '{\"goods_verify\":false,\"cash\":\"0\"}', '店铺配置', 1, NULL, '2022-01-11 12:48:09', NULL);
INSERT INTO `configs` VALUES (18, 'task', '{}', '定时任务', 1, NULL, '2022-01-11 12:48:09', NULL);
INSERT INTO `configs` VALUES (19, 'kuaibao', '{}', '物流配置', 1, NULL, '2022-01-11 12:48:09', NULL);

-- ----------------------------
-- Table structure for coupon_logs
-- ----------------------------
DROP TABLE IF EXISTS `coupon_logs`;
CREATE TABLE `coupon_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '优惠券' COMMENT '标题',
  `coupon_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '分销金额',
  `use_money` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '分佣率',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 0未使用 1使用',
  `start_time` timestamp NOT NULL DEFAULT '2021-12-30 14:08:36' COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT '2022-01-04 14:08:36' COMMENT '结束',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_logs
-- ----------------------------
INSERT INTO `coupon_logs` VALUES (2, '测试', 1, 6, 1, 24, 1.00, 10.00, 1, '2022-01-03 00:00:00', '2022-01-12 00:00:00', '2022-01-06 13:44:18', '2022-01-06 14:08:38', NULL);

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `money` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '优惠券金额',
  `use_money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '允许使用金额',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 10 COMMENT '优惠券数量',
  `content` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '优惠券描述',
  `start_time` timestamp NOT NULL DEFAULT '2021-12-30 14:08:36' COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT '2022-01-04 14:08:36' COMMENT '结束',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (1, 1, '测试', 1.00, 10.00, 998, '', '2022-01-03 00:00:00', '2022-01-12 00:00:00', '2022-01-03 19:40:53', '2022-01-06 13:44:18', NULL);

-- ----------------------------
-- Table structure for distribution_logs
-- ----------------------------
DROP TABLE IF EXISTS `distribution_logs`;
CREATE TABLE `distribution_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '分销' COMMENT '标题',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `distribution_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分销活动ID',
  `order_goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单商品ID',
  `money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '分销金额',
  `lev` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '分佣率',
  `commission` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '分佣金额',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '处理结果 0 等待分佣 1 分佣',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of distribution_logs
-- ----------------------------

-- ----------------------------
-- Table structure for distributions
-- ----------------------------
DROP TABLE IF EXISTS `distributions`;
CREATE TABLE `distributions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `lev_1` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '一级分销',
  `lev_2` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '二级分销',
  `lev_3` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '三级分销',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of distributions
-- ----------------------------

-- ----------------------------
-- Table structure for expresses
-- ----------------------------
DROP TABLE IF EXISTS `expresses`;
CREATE TABLE `expresses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司名',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递编码',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expresses
-- ----------------------------
INSERT INTO `expresses` VALUES (1, '韵达快递', 'yd', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (2, '申通快递', 'sto', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (3, '圆通快递', 'yt', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (4, '中通快递', 'zt', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (5, '极兔快递', 'jt', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (6, '百世快递', 'ht', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (7, '邮政小包', 'postx', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (8, 'EMS包裹', 'ems', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (9, '邮政包裹', 'post', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (10, '天天快递', 'tt', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (11, '百世快运', 'best', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (12, '优速快递', 'ys', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (13, '德邦', 'dp', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (14, '宅急送', 'zjs', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (15, '京东', 'jd', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (16, '中通快运', 'ztky', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (17, '顺丰速运', 'sf', NULL, NULL, NULL);
INSERT INTO `expresses` VALUES (18, '国通快递', 'gt', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `out_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '外部ID',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型 0 收藏商品 1关注店铺',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (4, 6, 1, 0, '2021-12-25 17:18:44', '2021-12-26 19:50:45', '2021-12-26 19:50:45');
INSERT INTO `favorites` VALUES (3, 6, 1, 0, '2021-12-25 17:14:54', '2021-12-25 17:18:21', '2021-12-25 17:18:21');

-- ----------------------------
-- Table structure for freights
-- ----------------------------
DROP TABLE IF EXISTS `freights`;
CREATE TABLE `freights`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '默认运费' COMMENT '标题',
  `f_weight` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '首重',
  `f_price` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '首重运费',
  `o_weight` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '超出重量每多少',
  `o_price` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '超出重量每次多少钱',
  `area_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容ID',
  `area_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容中文',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0默认运费 1 配置运费',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of freights
-- ----------------------------
INSERT INTO `freights` VALUES (1, 1, '默认运费', 1.00, 2.00, 3.00, 4.00, '', '', 1, '2022-01-01 21:13:35', '2022-01-01 21:28:44', '2022-01-01 21:28:44');
INSERT INTO `freights` VALUES (2, 1, '自定义运费模版', 3.00, 3.00, 4.00, 5.00, '', '', 1, '2022-01-01 21:13:35', '2022-01-01 21:29:07', '2022-01-01 21:29:07');
INSERT INTO `freights` VALUES (5, 1, '自定义运费模版', 123.00, 1.00, 1.00, 1.00, '', '', 1, '2022-01-01 21:29:16', '2022-01-01 21:29:16', NULL);
INSERT INTO `freights` VALUES (4, 1, '默认运费', 2.00, 3.00, 4.00, 5.00, '', '', 0, '2022-01-01 21:13:41', '2022-01-01 21:15:16', NULL);

-- ----------------------------
-- Table structure for full_reductions
-- ----------------------------
DROP TABLE IF EXISTS `full_reductions`;
CREATE TABLE `full_reductions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `money` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '满减金额',
  `use_money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '满足金额',
  `start_time` timestamp NOT NULL DEFAULT '2021-12-30 14:19:17' COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT '2022-01-04 14:19:17' COMMENT '结束',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of full_reductions
-- ----------------------------
INSERT INTO `full_reductions` VALUES (1, 1, 'ad', 12.00, 100.00, '2022-01-19 00:00:00', '2022-01-21 00:00:00', '2022-01-03 20:32:21', '2022-01-03 20:32:21', NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '品牌ID',
  `class_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商家ID',
  `goods_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_subname` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品副标题',
  `goods_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品编号',
  `goods_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片',
  `goods_master_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主图',
  `goods_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `goods_market_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价格',
  `goods_stock` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `goods_weight` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品重量',
  `goods_sale` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售量',
  `goods_collect` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏量',
  `goods_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上架状态',
  `goods_verify` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '审核状态',
  `refuse_info` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '暂无缘由' COMMENT '拒绝原因',
  `freight_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '运费模版 0默认',
  `goods_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详情',
  `goods_content_mobile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机端详情',
  `is_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐商家首页',
  `is_master` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐主站首页',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 0, 27, 1, 'as2', '111', '', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1.png', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1.png', 1.00, 2.00, 1, 3.00, 7, 0, 1, 1, '暂无缘由', 0, '<p><span>ss</span></p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"ss\"}]}]', '', 0, 0, '2021-12-18 08:04:42', '2022-01-10 00:47:13', NULL);
INSERT INTO `goods` VALUES (2, 2, 1, 1, 'Haier/海尔 KFR-33GW/10EBBAL13U1 1.5匹智能壁挂式家用空调挂机 智能操控 快速冷暖 送装一体', '智能操控 快速冷暖', '', '/storage/goods/3/2021-02-21/K2f0AKQqJgKu4trdQF2zytOMEdRQ0PM9yYRB2srj.jpg', '/storage/goods/3/2021-02-21/K2f0AKQqJgKu4trdQF2zytOMEdRQ0PM9yYRB2srj.jpg', 6819.00, 8999.00, 1000, 10.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 13:59:29', '2021-02-21 13:59:29', NULL);
INSERT INTO `goods` VALUES (3, 2, 1, 1, 'Xiaomi/小米 小米电视4A 55英寸 4k超高清智能网络电视机 50 60', '小米电视4A 55英寸', '', '/storage/goods/3/2021-02-21/P9H13dxYDx8oDm5QsiYlYlNoBcN1ROEnn8R8mlqE.jpg', '/storage/goods/3/2021-02-21/P9H13dxYDx8oDm5QsiYlYlNoBcN1ROEnn8R8mlqE.jpg', 2300.00, 4500.00, 1000, 5.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:01:35', '2021-02-21 14:01:35', NULL);
INSERT INTO `goods` VALUES (4, 2, 1, 1, 'Hisense/海信 LED49EC270W 49吋液晶平板电视机网络wifi彩电50', 'Hisense/海信 wifi彩电', '', '/storage/goods/3/2021-02-21/HUEYKEuHCAKTilIWWse4e9J6jNHy4CUSwbCOO63H.jpg', '/storage/goods/3/2021-02-21/HUEYKEuHCAKTilIWWse4e9J6jNHy4CUSwbCOO63H.jpg', 1800.00, 2999.00, 1000, 2.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:05:28', '2021-02-21 14:05:28', NULL);
INSERT INTO `goods` VALUES (5, 2, 1, 1, 'Konka/康佳 A48F 48英寸高清智能网络平板 LED液晶电视机 50 49 已累计爆售 1万台 大屏购物 镇店爆款', '大屏购物 镇店爆款', '', '/storage/goods/3/2021-02-21/ZtCEjPfDPzSF2OvdCY2mAKsTmFhhVcdIRo3VEX9g.jpg', '/storage/goods/3/2021-02-21/ZtCEjPfDPzSF2OvdCY2mAKsTmFhhVcdIRo3VEX9g.jpg', 4500.00, 6999.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:19:36', '2021-02-21 14:19:36', NULL);
INSERT INTO `goods` VALUES (6, 2, 1, 1, 'Haier/海尔 EG10014B39GU1 10公斤kg蓝晶变频滚筒全自动洗衣机', '自动洗衣机', '', '/storage/goods/3/2021-02-21/comnkzGxDkMgN1kD8VrZEWT9nUAjJyhSQ3O4FGlo.jpg', '/storage/goods/3/2021-02-21/comnkzGxDkMgN1kD8VrZEWT9nUAjJyhSQ3O4FGlo.jpg', 1200.00, 1399.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:20:39', '2021-02-21 14:20:39', NULL);
INSERT INTO `goods` VALUES (7, 2, 1, 1, 'Haier/海尔 EG7012B29W 7公斤 变频全自动 滚筒洗衣机 消毒洗', '变频全自动', '', '/storage/goods/3/2021-02-21/stEVhOj4E3nIggkoWMkA2VhV6lsNJ0gikrTGNgCF.jpg', '/storage/goods/3/2021-02-21/stEVhOj4E3nIggkoWMkA2VhV6lsNJ0gikrTGNgCF.jpg', 3999.00, 4500.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:21:50', '2021-02-21 14:21:50', NULL);
INSERT INTO `goods` VALUES (8, 2, 1, 1, 'Skyworth/创维 55V9E 55吋4K超高清智能网络平板LED液晶电视机 50 25核智能 4K超高清 人气爆款', '4K超高清 人气爆款', '', '/storage/goods/3/2021-02-21/v77vwbiZMOYCEPWRueUQ3B2tEIg5TBsgH886sxXH.jpg', '/storage/goods/3/2021-02-21/v77vwbiZMOYCEPWRueUQ3B2tEIg5TBsgH886sxXH.jpg', 2199.00, 3099.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:23:05', '2021-02-21 14:23:05', NULL);
INSERT INTO `goods` VALUES (9, 2, 1, 1, 'Changhong/长虹 55G6 55吋液晶电视机4k曲面平板电视智能网络wifi 曲面 4K超清 双64位 U-MAX', '曲面 4K超清', '', '/storage/goods/3/2021-02-21/SGTSO7aydUm1QQjvxSokwX8AeSbz4iu2WvQKENFg.jpg', '/storage/goods/3/2021-02-21/SGTSO7aydUm1QQjvxSokwX8AeSbz4iu2WvQKENFg.jpg', 2599.00, 3599.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:24:09', '2021-02-21 14:24:09', NULL);
INSERT INTO `goods` VALUES (10, 2, 29, 1, '你当像鸟飞往你的山（比尔·盖茨年度特别推荐，登顶《纽约时报》畅销榜80 周！多一个人读到这个真实故事，就多一个人勇敢做自己！）', '你当像鸟飞往你的山', '', '/storage/goods/3/2021-02-21/BZXdVMnA0hMMZQ0CcqMDROJViBjbC59S2Jjgj4xc.jpg', '/storage/goods/3/2021-02-21/BZXdVMnA0hMMZQ0CcqMDROJViBjbC59S2Jjgj4xc.jpg', 45.00, 65.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:01:43', '2021-02-21 14:01:43', NULL);
INSERT INTO `goods` VALUES (11, 2, 29, 1, '悲喜自渡：季羡林的孤独智慧', '生活态度 悲喜自渡', '', '/storage/goods/3/2021-02-21/w1C35C7d0nP8RHokoEHg1lgOCQnS9OTrHNSNTlrb.jpg', '/storage/goods/3/2021-02-21/w1C35C7d0nP8RHokoEHg1lgOCQnS9OTrHNSNTlrb.jpg', 25.00, 65.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:27:47', '2021-02-21 14:27:47', NULL);
INSERT INTO `goods` VALUES (12, 2, 29, 1, '凡心所向，素履所往：季羡林的生命智慧', '季羡林98载了悟生命', '', '/storage/goods/3/2021-02-21/22hwnlsgPzPrP2ffiI8KxzKv2GCU2gdBnc2cERkI.jpg', '/storage/goods/3/2021-02-21/22hwnlsgPzPrP2ffiI8KxzKv2GCU2gdBnc2cERkI.jpg', 55.00, 80.00, 100, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:28:56', '2021-02-21 14:29:03', NULL);
INSERT INTO `goods` VALUES (13, 2, 29, 1, '生活明朗 万物可爱：季羡林的豁达智慧', '生活明朗 万物可爱', '', '/storage/goods/3/2021-02-21/GtNWJazLkeBsTo4wdeSVV2errlp2iF9d7icLodaa.jpg', '/storage/goods/3/2021-02-21/GtNWJazLkeBsTo4wdeSVV2errlp2iF9d7icLodaa.jpg', 39.00, 69.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:30:27', '2021-02-21 14:30:27', NULL);
INSERT INTO `goods` VALUES (14, 2, 29, 1, '季羡林散文精选集：糊涂一点，潇洒一点', '糊涂潇洒', '', '/storage/goods/3/2021-02-21/ZwxKKcx6kiYh6JVEkM2jX28XncG6C3SGBvOqBv79.jpg', '/storage/goods/3/2021-02-21/ZwxKKcx6kiYh6JVEkM2jX28XncG6C3SGBvOqBv79.jpg', 55.00, 95.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:31:19', '2021-02-21 14:31:19', NULL);
INSERT INTO `goods` VALUES (15, 2, 29, 1, '一个人的世界史 解读20世纪', '郗士作序推荐', '', '/storage/goods/3/2021-02-21/86ho7T6wqOEOWR4dAo3i3qU39BZI3featTBH2AkL.jpg', '/storage/goods/3/2021-02-21/86ho7T6wqOEOWR4dAo3i3qU39BZI3featTBH2AkL.jpg', 1.00, 36.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:32:14', '2021-02-21 14:32:14', NULL);
INSERT INTO `goods` VALUES (16, 2, 29, 1, '人生海海 解密人性的荒唐与高尚', '图书榜虚构类连续六周TOP1', '', '/storage/goods/3/2021-02-21/RLCpxsuDuZrEK1R4VtpvS2p7pKdFFTnCeEWWIkAb.jpg', '/storage/goods/3/2021-02-21/RLCpxsuDuZrEK1R4VtpvS2p7pKdFFTnCeEWWIkAb.jpg', 89.00, 289.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:33:02', '2021-02-21 14:33:02', NULL);
INSERT INTO `goods` VALUES (17, 2, 29, 1, '直面人生的终极问题，刻在骨头里的故事', '皮囊人生', '', '/storage/goods/3/2021-02-21/zAMCR8ior1TYmBaFAm5F2fkNshiyUnn1oNIqBAuE.jpg', '/storage/goods/3/2021-02-21/zAMCR8ior1TYmBaFAm5F2fkNshiyUnn1oNIqBAuE.jpg', 18.00, 28.00, 1000, 1.00, 0, 0, 1, 1, '', 0, '', '', 0, 0, '2021-02-21 14:34:05', '2021-02-21 14:34:05', NULL);

-- ----------------------------
-- Table structure for goods_attrs
-- ----------------------------
DROP TABLE IF EXISTS `goods_attrs`;
CREATE TABLE `goods_attrs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属店铺',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '属性名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attrs
-- ----------------------------
INSERT INTO `goods_attrs` VALUES (1, 1, '颜色', NULL, NULL, NULL);
INSERT INTO `goods_attrs` VALUES (2, 1, '颜色', NULL, '2021-12-14 22:00:24', '2021-12-14 22:00:24');
INSERT INTO `goods_attrs` VALUES (3, 1, '颜色', NULL, '2021-12-14 22:00:24', '2021-12-14 22:00:24');
INSERT INTO `goods_attrs` VALUES (4, 1, '颜色', NULL, '2021-12-14 22:00:24', '2021-12-14 22:00:24');
INSERT INTO `goods_attrs` VALUES (5, 1, '颜色', NULL, '2021-12-14 22:00:24', '2021-12-14 22:00:24');
INSERT INTO `goods_attrs` VALUES (6, 1, '颜色', NULL, '2021-12-14 22:01:27', '2021-12-14 22:01:27');
INSERT INTO `goods_attrs` VALUES (7, 1, '颜色', NULL, '2021-12-19 02:09:03', '2021-12-19 02:09:03');
INSERT INTO `goods_attrs` VALUES (8, 1, '颜色', NULL, NULL, NULL);
INSERT INTO `goods_attrs` VALUES (9, 1, '颜色', NULL, '2021-12-19 02:09:03', '2021-12-19 02:09:03');
INSERT INTO `goods_attrs` VALUES (10, 1, '打算', '2021-12-14 21:35:56', '2021-12-14 22:08:01', NULL);

-- ----------------------------
-- Table structure for goods_brands
-- ----------------------------
DROP TABLE IF EXISTS `goods_brands`;
CREATE TABLE `goods_brands`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thumb` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '品牌名称',
  `is_sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_brands
-- ----------------------------
INSERT INTO `goods_brands` VALUES (1, '', '234', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_classes
-- ----------------------------
DROP TABLE IF EXISTS `goods_classes`;
CREATE TABLE `goods_classes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `is_sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_classes
-- ----------------------------
INSERT INTO `goods_classes` VALUES (2, 0, 'http://pc.qingwuit.com/storage/goods_class/2021-02-21/88bNEsWnX6H869zlH8eZbIlN2faQghXuoVqrNbmQ.png', '家用电器', 0, '2020-08-02 14:58:08', '2021-02-21 14:58:36', NULL);
INSERT INTO `goods_classes` VALUES (3, 0, 'http://pc.qingwuit.com/storage/goods_class/2021-02-21/OKMg3IThy9L1W5YYeN80uaUaIJPuT9ZIV6h4BQdK.png', '图书 & 音像 & 电子书', 1, '2020-08-02 14:58:15', '2021-02-21 14:58:43', NULL);
INSERT INTO `goods_classes` VALUES (4, 0, 'http://pc.qingwuit.com/storage/goods_class/2021-02-21/RTB3mZKANhwF85fQWggyegLWuR3PEF40E6nYpuWC.png', '手机 & 数码 & 通信', 2, '2020-08-02 14:58:22', '2021-02-21 14:58:50', NULL);
INSERT INTO `goods_classes` VALUES (5, 0, 'http://pc.qingwuit.com/storage/goods_class/2021-02-21/RCtZiAvIxaktEbCBPMGMUO9whF1eHZGbTzS9T9cg.png', '电脑 & 办公', 3, '2020-08-02 14:58:28', '2021-02-21 14:58:59', NULL);
INSERT INTO `goods_classes` VALUES (6, 0, 'http://pc.qingwuit.com/storage/goods_class/2021-02-21/DuO1K6Gk8kSiD5cCE5GPVaFWKnC6OlBpK1pCYvSO.png', '家居 & 家具 & 家装', 4, '2020-08-02 14:58:34', '2021-02-21 14:59:06', NULL);
INSERT INTO `goods_classes` VALUES (7, 0, '', '男装 & 女装 & 内衣', 5, '2020-08-02 14:58:42', '2020-08-02 14:59:25', NULL);
INSERT INTO `goods_classes` VALUES (8, 2, '', '大家电', 0, '2020-08-02 14:58:57', '2020-08-02 14:58:57', NULL);
INSERT INTO `goods_classes` VALUES (9, 2, '', '生活电器', 0, '2020-08-02 14:59:39', '2020-08-02 14:59:39', NULL);
INSERT INTO `goods_classes` VALUES (10, 2, '', '节能电器', 0, '2020-08-02 14:59:47', '2020-08-02 14:59:47', NULL);
INSERT INTO `goods_classes` VALUES (11, 3, '', '图书', 0, '2020-08-02 14:59:56', '2020-08-02 14:59:56', NULL);
INSERT INTO `goods_classes` VALUES (12, 3, '', '磁带', 0, '2020-08-02 15:00:10', '2020-08-02 15:00:10', NULL);
INSERT INTO `goods_classes` VALUES (13, 3, '', '对讲机', 0, '2020-08-02 15:00:18', '2020-08-02 15:00:18', NULL);
INSERT INTO `goods_classes` VALUES (14, 4, '', '摄影机', 0, '2020-08-02 15:00:26', '2020-08-02 15:00:26', NULL);
INSERT INTO `goods_classes` VALUES (15, 4, '', '手机', 0, '2020-08-02 15:00:37', '2020-08-02 15:00:37', NULL);
INSERT INTO `goods_classes` VALUES (16, 4, '', '相机', 0, '2020-08-02 15:00:46', '2020-08-02 15:00:46', NULL);
INSERT INTO `goods_classes` VALUES (17, 5, '', '方舟子', 0, '2020-08-02 15:00:56', '2020-08-02 15:00:56', NULL);
INSERT INTO `goods_classes` VALUES (18, 5, '', '神州', 0, '2020-08-02 15:01:07', '2020-08-02 15:01:07', NULL);
INSERT INTO `goods_classes` VALUES (19, 5, '', '戴尔', 0, '2020-08-02 15:01:17', '2020-08-02 15:01:17', NULL);
INSERT INTO `goods_classes` VALUES (20, 6, '', '美的橱柜', 0, '2020-08-02 15:01:28', '2020-08-02 15:01:28', NULL);
INSERT INTO `goods_classes` VALUES (21, 6, '', '日本沙发', 0, '2020-08-02 15:01:38', '2020-08-02 15:01:38', NULL);
INSERT INTO `goods_classes` VALUES (22, 6, '', '真皮沙发', 0, '2020-08-02 15:01:47', '2020-08-02 15:01:47', NULL);
INSERT INTO `goods_classes` VALUES (23, 7, '', '披风大衣', 0, '2020-08-02 15:01:56', '2020-08-02 15:01:56', NULL);
INSERT INTO `goods_classes` VALUES (24, 7, '', '男装', 0, '2020-08-02 15:02:05', '2020-08-02 15:02:05', NULL);
INSERT INTO `goods_classes` VALUES (25, 7, '', '孕妇装', 0, '2020-08-02 15:02:13', '2020-08-02 15:02:13', NULL);
INSERT INTO `goods_classes` VALUES (26, 8, '', '空调', 0, '2020-08-02 17:19:23', '2020-08-02 18:17:04', NULL);
INSERT INTO `goods_classes` VALUES (27, 8, '', '平板电视', 0, '2020-08-02 17:19:41', '2020-08-02 18:17:23', NULL);
INSERT INTO `goods_classes` VALUES (28, 8, '', '洗衣机', 0, '2020-08-02 17:19:57', '2020-08-02 17:19:57', NULL);
INSERT INTO `goods_classes` VALUES (29, 11, '', '童话', 0, '2020-08-02 18:17:45', '2020-08-02 18:17:45', NULL);
INSERT INTO `goods_classes` VALUES (30, 16, '', '索尼', 0, '2020-08-02 18:27:30', '2020-08-02 18:27:30', NULL);
INSERT INTO `goods_classes` VALUES (31, 18, '', '台式', 0, '2020-08-02 18:27:42', '2020-08-02 18:27:42', NULL);
INSERT INTO `goods_classes` VALUES (32, 20, '', '双门', 0, '2020-08-02 18:28:04', '2020-08-02 18:28:04', NULL);
INSERT INTO `goods_classes` VALUES (33, 24, '', '美系', 0, '2020-08-02 18:28:18', '2020-08-02 18:28:18', NULL);
INSERT INTO `goods_classes` VALUES (34, 15, '', '智能手机', 0, '2021-02-21 13:53:32', '2021-02-21 13:53:32', NULL);

-- ----------------------------
-- Table structure for goods_skus
-- ----------------------------
DROP TABLE IF EXISTS `goods_skus`;
CREATE TABLE `goods_skus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `spec_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规格ID',
  `sku_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `goods_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主图',
  `goods_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `goods_market_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场价格',
  `goods_stock` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `goods_weight` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品重量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_skus
-- ----------------------------
INSERT INTO `goods_skus` VALUES (1, 1, '4', '打算', '', 2.00, 1.00, 976, 3.00, '2021-12-18 23:26:10', '2022-01-10 00:47:13', NULL);

-- ----------------------------
-- Table structure for goods_specs
-- ----------------------------
DROP TABLE IF EXISTS `goods_specs`;
CREATE TABLE `goods_specs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attr_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属属性',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规格名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_specs
-- ----------------------------
INSERT INTO `goods_specs` VALUES (1, 8, '红', NULL, NULL, NULL);
INSERT INTO `goods_specs` VALUES (2, 8, '白', NULL, NULL, NULL);
INSERT INTO `goods_specs` VALUES (3, 10, '打算', NULL, '2021-12-14 22:08:01', '2021-12-14 22:08:01');
INSERT INTO `goods_specs` VALUES (4, 10, '打算', NULL, NULL, NULL);
INSERT INTO `goods_specs` VALUES (5, 10, '1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for integral_goods
-- ----------------------------
DROP TABLE IF EXISTS `integral_goods`;
CREATE TABLE `integral_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目ID',
  `goods_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名',
  `goods_subname` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '副标题',
  `goods_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '积分',
  `goods_market_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '市场金额',
  `goods_stock` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `goods_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片',
  `goods_master_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主图',
  `goods_sale` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售量',
  `goods_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上下架',
  `is_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '推荐',
  `goods_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详情',
  `goods_content_mobile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机端详情',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_goods
-- ----------------------------
INSERT INTO `integral_goods` VALUES (1, 1, 'dsddds111', 'asd', 1.00, 22.00, 110, '/storage/goods/2022-01-04/2O0pDzJEjxe2pJ18Rn11f5dvakq5W3rAgNRMCvuh.png', '/storage/goods/2022-01-04/2O0pDzJEjxe2pJ18Rn11f5dvakq5W3rAgNRMCvuh.png', 0, 1, 1, '<p>2323</p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"2323\"}]}]', '', '2022-01-04 17:25:46', '2022-01-05 17:05:57', NULL);

-- ----------------------------
-- Table structure for integral_goods_classes
-- ----------------------------
DROP TABLE IF EXISTS `integral_goods_classes`;
CREATE TABLE `integral_goods_classes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '积分栏目',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_goods_classes
-- ----------------------------
INSERT INTO `integral_goods_classes` VALUES (1, '二次元', '2022-01-04 16:43:44', '2022-01-04 16:43:54', NULL);

-- ----------------------------
-- Table structure for integral_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `integral_order_goods`;
CREATE TABLE `integral_order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `goods_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片',
  `buy_num` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  `total_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总价格',
  `goods_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_order_goods
-- ----------------------------
INSERT INTO `integral_order_goods` VALUES (1, 1, 1, 6, 'dsddds111', '/storage/goods/2022-01-04/2O0pDzJEjxe2pJ18Rn11f5dvakq5W3rAgNRMCvuh_150.png', 1, 1.00, 1.00, '2022-01-05 17:05:57', '2022-01-05 17:05:57');

-- ----------------------------
-- Table structure for integral_orders
-- ----------------------------
DROP TABLE IF EXISTS `integral_orders`;
CREATE TABLE `integral_orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `order_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单标题',
  `order_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单图片',
  `total_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总支付金额',
  `order_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '订单计算金额',
  `order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单支付 0 取消 1 等待支付 2订单完成',
  `delivery_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递订单号',
  `delivery_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `receive_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人名',
  `receive_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人手机',
  `receive_area` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址信息',
  `receive_address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细地址信息',
  `pay_time` timestamp NOT NULL DEFAULT '2022-01-04 16:24:26' COMMENT '支付时间',
  `delivery_time` timestamp NOT NULL DEFAULT '2022-01-04 16:24:26' COMMENT '发货时间',
  `remark` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_orders
-- ----------------------------
INSERT INTO `integral_orders` VALUES (1, 6, '2022010517055763843', 'dsddds111', '/storage/goods/2022-01-04/2O0pDzJEjxe2pJ18Rn11f5dvakq5W3rAgNRMCvuh_150.png', 1.00, 1.00, 2, '111111', 'yd', '张三', '18888888888', '河北省 淄博市', '面馆', '2022-01-04 16:24:26', '2022-01-04 16:24:26', '', '2022-01-05 17:05:57', '2022-01-05 17:46:49', NULL);


-- ----------------------------
-- Table structure for money_logs
-- ----------------------------
DROP TABLE IF EXISTS `money_logs`;
CREATE TABLE `money_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未知变动' COMMENT '名称',
  `ename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'money' COMMENT '英文名称',
  `money` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '变动金额',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '变动类型 0 余额 1冻结 2积分',
  `is_belong` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户日志 0 用户 1 商家',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原因',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of money_logs
-- ----------------------------
INSERT INTO `money_logs` VALUES (1, 6, '未知变动', 'money', 0.00, 0, 0, '1', '2021-12-25 23:15:22', NULL, NULL);
INSERT INTO `money_logs` VALUES (2, 6, '资金提现', 'money', 10.00, 0, 0, '0', '2021-12-26 15:25:27', '2021-12-26 15:25:27', NULL);
INSERT INTO `money_logs` VALUES (3, 6, '资金提现', 'money', -10.00, 0, 0, '0', '2021-12-26 15:25:27', '2021-12-26 15:25:27', NULL);
INSERT INTO `money_logs` VALUES (4, 6, '资金提现', 'money', 10.00, 2, 0, '', '2021-12-26 15:29:49', '2021-12-26 15:29:49', NULL);
INSERT INTO `money_logs` VALUES (5, 6, '资金提现', 'money', -10.00, 0, 0, '', '2021-12-26 15:29:49', '2021-12-26 15:29:49', NULL);
INSERT INTO `money_logs` VALUES (6, 6, '资金提现', 'money', 10.00, 2, 0, '', '2021-12-26 15:31:20', '2021-12-26 15:31:20', NULL);
INSERT INTO `money_logs` VALUES (7, 6, '资金提现', 'money', -10.00, 0, 0, '', '2021-12-26 15:31:20', '2021-12-26 15:31:20', NULL);
INSERT INTO `money_logs` VALUES (8, 6, '资金提现', 'money', 10.00, 2, 0, '', '2021-12-26 15:32:42', '2021-12-26 15:32:42', NULL);
INSERT INTO `money_logs` VALUES (9, 6, '资金提现', 'money', -10.00, 0, 0, '', '2021-12-26 15:32:42', '2021-12-26 15:32:42', NULL);
INSERT INTO `money_logs` VALUES (10, 6, '资金提现', 'money', 10.00, 2, 0, '', '2021-12-26 15:35:16', '2021-12-26 15:35:16', NULL);
INSERT INTO `money_logs` VALUES (11, 6, '资金提现', 'money', -10.00, 0, 0, '', '2021-12-26 15:35:16', '2021-12-26 15:35:16', NULL);
INSERT INTO `money_logs` VALUES (12, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:47:13', '2021-12-26 15:47:13', NULL);
INSERT INTO `money_logs` VALUES (13, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:47:13', '2021-12-26 15:47:13', NULL);
INSERT INTO `money_logs` VALUES (14, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:49:31', '2021-12-26 15:49:31', NULL);
INSERT INTO `money_logs` VALUES (15, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:49:31', '2021-12-26 15:49:31', NULL);
INSERT INTO `money_logs` VALUES (16, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:53:43', '2021-12-26 15:53:43', NULL);
INSERT INTO `money_logs` VALUES (17, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:53:43', '2021-12-26 15:53:43', NULL);
INSERT INTO `money_logs` VALUES (18, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:55:05', '2021-12-26 15:55:05', NULL);
INSERT INTO `money_logs` VALUES (19, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:55:05', '2021-12-26 15:55:05', NULL);
INSERT INTO `money_logs` VALUES (20, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:55:41', '2021-12-26 15:55:41', NULL);
INSERT INTO `money_logs` VALUES (21, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:56:25', '2021-12-26 15:56:25', NULL);
INSERT INTO `money_logs` VALUES (22, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:58:07', '2021-12-26 15:58:07', NULL);
INSERT INTO `money_logs` VALUES (23, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:58:07', '2021-12-26 15:58:07', NULL);
INSERT INTO `money_logs` VALUES (24, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:58:33', '2021-12-26 15:58:33', NULL);
INSERT INTO `money_logs` VALUES (25, 6, '资金提现', 'money', -1.00, 0, 0, '', '2021-12-26 15:58:33', '2021-12-26 15:58:33', NULL);
INSERT INTO `money_logs` VALUES (26, 6, '资金提现', 'money', 1.00, 1, 0, '', '2021-12-26 15:59:12', '2021-12-26 15:59:12', NULL);
INSERT INTO `money_logs` VALUES (27, 6, '资金提现', 'money', 5.00, 1, 0, '', '2021-12-26 16:00:40', '2021-12-26 16:00:40', NULL);
INSERT INTO `money_logs` VALUES (28, 6, '资金提现', 'money', -5.00, 0, 0, '', '2021-12-26 16:00:40', '2021-12-26 16:00:40', NULL);
INSERT INTO `money_logs` VALUES (29, 6, '资金提现', 'money', 6.00, 1, 0, '', '2021-12-26 16:01:48', '2021-12-26 16:01:48', NULL);
INSERT INTO `money_logs` VALUES (30, 6, '资金提现', 'money', -6.00, 0, 0, '', '2021-12-26 16:01:48', '2021-12-26 16:01:48', NULL);
INSERT INTO `money_logs` VALUES (31, 6, '0', 'money', 0.00, 0, 0, '', '2021-12-27 17:34:39', '2021-12-27 17:34:39', NULL);
INSERT INTO `money_logs` VALUES (32, 6, '0', 'money', 0.00, 0, 0, '', '2021-12-27 17:44:06', '2021-12-27 17:44:06', NULL);
INSERT INTO `money_logs` VALUES (33, 6, '0', 'money', -2.00, 0, 0, '', '2021-12-27 18:08:11', '2021-12-27 18:08:11', NULL);
INSERT INTO `money_logs` VALUES (34, 6, '订单支付', 'money', -2.00, 0, 0, '', '2021-12-27 18:25:08', '2021-12-27 18:25:08', NULL);
INSERT INTO `money_logs` VALUES (35, 6, '订单支付', 'money', -2.00, 0, 0, '', '2021-12-30 14:56:16', '2021-12-30 14:56:16', NULL);
INSERT INTO `money_logs` VALUES (36, 6, '订单支付', 'money', -2.00, 0, 0, '', '2021-12-30 16:36:12', '2021-12-30 16:36:12', NULL);
INSERT INTO `money_logs` VALUES (37, 6, '售后退款', 'money', 0.00, 0, 0, '20211227181022673522', '2021-12-31 13:50:11', '2021-12-31 13:50:11', NULL);
INSERT INTO `money_logs` VALUES (38, 6, '售后退款', 'money', 2.00, 0, 0, '20211227181022673522', '2021-12-31 13:54:22', '2021-12-31 13:54:22', NULL);
INSERT INTO `money_logs` VALUES (39, 6, '订单支付', 'money', -2.00, 0, 0, '', '2021-12-31 14:33:18', '2021-12-31 14:33:18', NULL);
INSERT INTO `money_logs` VALUES (40, 6, '商家提现', 'money', -1.00, 0, 1, '', '2022-01-01 19:58:05', '2022-01-01 19:58:05', NULL);
INSERT INTO `money_logs` VALUES (41, 6, '商家提现', 'money', 1.00, 1, 1, '', '2022-01-01 19:58:05', '2022-01-01 19:58:05', NULL);
INSERT INTO `money_logs` VALUES (42, 6, '积分订单', 'money', -1.00, 2, 0, '', '2022-01-05 17:05:57', '2022-01-05 17:05:57', NULL);
INSERT INTO `money_logs` VALUES (43, 6, '订单支付', 'money', -2.00, 0, 0, '', '2022-01-06 00:42:05', '2022-01-06 00:42:05', NULL);
INSERT INTO `money_logs` VALUES (44, 6, '订单支付', 'money', -2.00, 0, 0, '', '2022-01-06 00:42:42', '2022-01-06 00:42:42', NULL);
INSERT INTO `money_logs` VALUES (45, 6, '订单支付', 'money', -1.98, 0, 0, '', '2022-01-06 13:46:48', '2022-01-06 13:46:48', NULL);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `tag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `is_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `is_send` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发送状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('879a05d6b9be77b7854f7f534c083c2748dc5c7e6b515e074767bba5639ce83c74477e58bdc4a982', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-10-01 11:03:06', '2021-10-01 11:03:06', '2021-10-08 11:03:06');
INSERT INTO `oauth_access_tokens` VALUES ('9f5ef2747a9bb07f8b930e05ea329a6ee58c215ba63b478f21520b18109455f01c28b8de47d82843', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-10-01 11:04:02', '2021-10-01 11:04:02', '2021-10-08 11:04:02');
INSERT INTO `oauth_access_tokens` VALUES ('25297e44e8470b9375016df44303e55293dff02b8de96c418d6feca3fa6e492d2c2470573102bc7a', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-10-01 11:06:39', '2021-10-01 11:06:39', '2021-10-08 11:06:39');
INSERT INTO `oauth_access_tokens` VALUES ('649ce4c2082402dca9d12043b0d08c36df15c88ad1681d833fdbef62c5060ebd3e73a38c63891eec', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-10-01 11:31:41', '2021-10-01 11:31:41', '2021-10-08 11:31:41');
INSERT INTO `oauth_access_tokens` VALUES ('6646541143e4c8a400e4dde052ffb9d1023a7db2a73250e7e3cf6f8d6c7116998e075a283d69e0ff', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-10-01 11:45:37', '2021-10-01 11:45:37', '2021-10-08 11:45:37');
INSERT INTO `oauth_access_tokens` VALUES ('70d17957633eb9464ba575e6080fb7e7574153fc82cfbb02992c960914fc1d9087e9bba495d4d29a', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-11-03 10:56:12', '2021-11-03 10:56:12', '2021-11-10 10:56:12');
INSERT INTO `oauth_access_tokens` VALUES ('8fba2b62222c73858428d7ca5591c23327742be0be0dbb089a6dbe89912307117b361dd938828099', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-11-03 11:03:19', '2021-11-03 11:03:19', '2021-11-10 11:03:19');
INSERT INTO `oauth_access_tokens` VALUES ('e7d679a2f0da6699451e2fb57e490152c4520c4314c1e3ee3ac1ba9a1f3b523c09881af4ba8cc8a9', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-11-03 11:12:43', '2021-11-03 11:12:43', '2021-11-10 11:12:43');
INSERT INTO `oauth_access_tokens` VALUES ('ecca06157daff6721b20a03bcf2b3ecc5ff3d70cfe5da5ec747c18967704e402d81080847f7d10dc', 1, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-11-03 16:38:00', '2021-11-03 16:38:00', '2021-11-10 16:38:00');
INSERT INTO `oauth_access_tokens` VALUES ('97362703de7940b39a08c9bbd27b6447aef20029fcfe7b6e871834ab0db152a6b51798685505d0c6', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-07 17:37:14', '2021-11-07 17:37:14', '2021-11-14 17:37:14');
INSERT INTO `oauth_access_tokens` VALUES ('ce775457228584c2b811803e522d92a1c5f519cebc2090e5b8d494843b23a99e102cb6c4dc29c2c7', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:41:35', '2021-11-17 14:41:35', '2021-11-24 14:41:35');
INSERT INTO `oauth_access_tokens` VALUES ('ff1af726aeebca446652d51b1b007885cf3775ccc0bdcbf04f4c7d3dccf3f1b288436edd8869d1e6', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:42:36', '2021-11-17 14:42:36', '2021-11-24 14:42:36');
INSERT INTO `oauth_access_tokens` VALUES ('bdba6a9d243dd4dc3a89a337189d713dd7954589524fd4fe8b6fcbe05651be6fa5404239bdb8fada', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:43:05', '2021-11-17 14:43:05', '2021-11-24 14:43:05');
INSERT INTO `oauth_access_tokens` VALUES ('72012a71dd37eafae5f1f0fd2022f06539657a7f0c7a091edd1f55e170601d26ff667fd53d5102e2', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:50:49', '2021-11-17 14:50:49', '2021-11-24 14:50:49');
INSERT INTO `oauth_access_tokens` VALUES ('3f018cde7f69678c2eed61ba8d0ab8d052a40461eafae01891291ca72ddfcd6b4d837e2e5c70a9fe', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:52:07', '2021-11-17 14:52:07', '2021-11-24 14:52:07');
INSERT INTO `oauth_access_tokens` VALUES ('7e1736845cc6ebcd3e937e673e43ee44c15711443f2e2567f5cc584365044752c6bac842d21cef8e', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:54:39', '2021-11-17 14:54:39', '2021-11-24 14:54:39');
INSERT INTO `oauth_access_tokens` VALUES ('da7bab4b096e5eb642701d73336ffea19027d49ea0bcf42fa676b97936e9672b4255790ac9d7decf', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:55:15', '2021-11-17 14:55:15', '2021-11-24 14:55:15');
INSERT INTO `oauth_access_tokens` VALUES ('b376c7a9ce8c7b0b8c0f74570abd9a2857cf604de21770d1b643b8d377b918157df4ca7e6d424d48', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:56:13', '2021-11-17 14:56:13', '2021-11-24 14:56:13');
INSERT INTO `oauth_access_tokens` VALUES ('92254db71e253e889fe13fc2621dfc20ec0bf149e72dba1f677803f453cc5dbe38f66f526246a0ff', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:58:00', '2021-11-17 14:58:00', '2021-11-24 14:58:00');
INSERT INTO `oauth_access_tokens` VALUES ('7a4bd0674beddadb1731f1d4e73c37b7027f5bc88214e8582b76543d0fe8c5c0a0ea6608d19d7fbf', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:58:52', '2021-11-17 14:58:52', '2021-11-24 14:58:52');
INSERT INTO `oauth_access_tokens` VALUES ('e650d375bd1c1f64417d6df00b4ab5af0dad9440e7630703b31a6595d4d63070a2726142d6eaf8ba', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:59:29', '2021-11-17 14:59:29', '2021-11-24 14:59:29');
INSERT INTO `oauth_access_tokens` VALUES ('c5ac4d34bbc3418e96d9da2ee0becd66245eff9d6b20d1edfa1a0e4aedc16e9b2453a7aac6963e68', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 14:59:45', '2021-11-17 14:59:45', '2021-11-24 14:59:45');
INSERT INTO `oauth_access_tokens` VALUES ('d4534813b0a8c86e406953967a63c6d83eb73b9314ebc6a44bb229753104328cc26e5a08aee01de2', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:01:40', '2021-11-17 15:01:40', '2021-11-24 15:01:40');
INSERT INTO `oauth_access_tokens` VALUES ('4ecc9793950b8e204461ad1db9559e3dca8ac191090cf4437bb94258f5f863fbff852048b2147c3e', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:07:11', '2021-11-17 15:07:11', '2021-11-24 15:07:11');
INSERT INTO `oauth_access_tokens` VALUES ('4b51d755e6d9d889998d7de850302164987a0ef317d014021267cc8fcfbbf639c96c54843b56a8b1', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:11:23', '2021-11-17 15:11:23', '2021-11-24 15:11:23');
INSERT INTO `oauth_access_tokens` VALUES ('f44d7d3d60a1f5bc97f6a01fa19770ed666a5a84b532f9d7ee447adb2efd3fed89b0a7a984121835', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:11:38', '2021-11-17 15:11:38', '2021-11-24 15:11:38');
INSERT INTO `oauth_access_tokens` VALUES ('816460d4def0934104f9a45abb90c865ec55721a19811e5ae70b834d02806c5d43544e7fc69e14d3', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:12:39', '2021-11-17 15:12:39', '2021-11-24 15:12:39');
INSERT INTO `oauth_access_tokens` VALUES ('978a0818e446d69c3b57581dee6d64e43af2ffbe7375652df953f4267560c8bfde280b255896281c', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:13:05', '2021-11-17 15:13:05', '2021-11-24 15:13:05');
INSERT INTO `oauth_access_tokens` VALUES ('ed609631ea51e47a3879a98ad6ecd2d73296f3d5a4f67005de4fbdf868a92f824f02e64f3ac3cea6', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:14:43', '2021-11-17 15:14:43', '2021-11-24 15:14:43');
INSERT INTO `oauth_access_tokens` VALUES ('2a470f15080072e1e3e5fd3daf73b5cdb1da0626f22c8c9a5418c77f181d2f14b65169fa1aa268f0', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:15:53', '2021-11-17 15:15:53', '2021-11-24 15:15:53');
INSERT INTO `oauth_access_tokens` VALUES ('0c66358c872118853f125926b2ab7d096afdb0f0e85be22772527ff214bf4b862eefa35c8398ea19', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:17:56', '2021-11-17 15:17:56', '2021-11-24 15:17:56');
INSERT INTO `oauth_access_tokens` VALUES ('04edc9614c3c7c7fdb3e1d55cee7d7aa61e252df2073f2e04d21a290e84b14023cdcea3572120451', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:20:35', '2021-11-17 15:20:35', '2021-11-24 15:20:35');
INSERT INTO `oauth_access_tokens` VALUES ('4839937519174fb1390c690da29e4b22bf8eabc0a14a9bd2ab169e7322e26d40bf02cdf1a38870d0', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:21:40', '2021-11-17 15:21:40', '2021-11-24 15:21:40');
INSERT INTO `oauth_access_tokens` VALUES ('6b61f47d4de368df94c16131cdbcffa984604413cb3d706980e4ae3a5dcb7d9f3881afe87378a304', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:27:21', '2021-11-17 15:27:21', '2021-11-24 15:27:21');
INSERT INTO `oauth_access_tokens` VALUES ('a10393ca9b76e23e34c0207031391bf53a70633e9a7f777b1b409489c6c4d84e3210ae694cedd016', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:28:17', '2021-11-17 15:28:17', '2021-11-24 15:28:17');
INSERT INTO `oauth_access_tokens` VALUES ('3c7bb8a2c176e5097ab5c30bfcb719e6ef203aa63f1bf859c278b747a6e82ec4c49515402abf1e99', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:29:04', '2021-11-17 15:29:04', '2021-11-24 15:29:04');
INSERT INTO `oauth_access_tokens` VALUES ('84417f87efad5de356935bd15efb36eb018d81519602b7c783d3e7cab7c1cb18194e8a493c733904', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:30:08', '2021-11-17 15:30:08', '2021-11-24 15:30:08');
INSERT INTO `oauth_access_tokens` VALUES ('02738a804e5021edf52a09e58009ee0e998fc657d38bafbf395c63f15bda803f1965de155ad1e14a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:30:25', '2021-11-17 15:30:25', '2021-11-24 15:30:25');
INSERT INTO `oauth_access_tokens` VALUES ('09065ada8975380164d8a5ac1ed687395d4eab0689edc37c5410d55a0ad06d2cad39904260b53880', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:30:36', '2021-11-17 15:30:36', '2021-11-24 15:30:36');
INSERT INTO `oauth_access_tokens` VALUES ('c1e9351748182036763ac393e15d073be2c7253c38fe801edf40ae186b71bef66cf9a6c82090120a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:32:40', '2021-11-17 15:32:40', '2021-11-24 15:32:40');
INSERT INTO `oauth_access_tokens` VALUES ('15c14b6e79ea50366350d339cad779038562dca09f47c207c30fc2d5749d2d7a650e04f01f2d5a47', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:34:06', '2021-11-17 15:34:06', '2021-11-24 15:34:06');
INSERT INTO `oauth_access_tokens` VALUES ('b1d1c12c7493f1734aa82140366e92539e11643dd2acf0ff8af7d7ebd5c36b4ea67276e92438a822', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:34:26', '2021-11-17 15:34:26', '2021-11-24 15:34:26');
INSERT INTO `oauth_access_tokens` VALUES ('966dc913cfd4195da5cab68f64b113da3d750b00fec5c38a0e99752b541d71a1e4e23391b31bc574', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:35:40', '2021-11-17 15:35:40', '2021-11-24 15:35:40');
INSERT INTO `oauth_access_tokens` VALUES ('8fc253338d6d5d086d245090c9bfb701a6f8b4e7dcc59fed8b6d8a07e888f67b30fb9dd3f94b942a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:36:07', '2021-11-17 15:36:07', '2021-11-24 15:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('858d9781b11bec17467db45ffa74e24be68af1c33c577b7d0390db65afd7b1b4c7c13cfe93176d55', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:36:24', '2021-11-17 15:36:24', '2021-11-24 15:36:24');
INSERT INTO `oauth_access_tokens` VALUES ('c85a966dd2fa6761062479391b8890a845679bd55ca013b68ddb394d7ce13d50beaa367890e0ce2d', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:36:51', '2021-11-17 15:36:51', '2021-11-24 15:36:51');
INSERT INTO `oauth_access_tokens` VALUES ('7853a2e7230ed678c644a197c599c7920b1184e90bbb7498b96cb9ecbd0f741982ae7438d25412ca', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:38:04', '2021-11-17 15:38:04', '2021-11-24 15:38:04');
INSERT INTO `oauth_access_tokens` VALUES ('de18282d6eaf100955643ab6cc627dc29df1aa09f2512708248c7c2a71c116d986eae30115512876', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:38:15', '2021-11-17 15:38:15', '2021-11-24 15:38:15');
INSERT INTO `oauth_access_tokens` VALUES ('5b6d45e5f72a3c344f4386f735433b33540aca52b5c04e73d2f2744199ca7df8369ca7e4a82595e4', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-17 15:38:48', '2021-11-17 15:38:48', '2021-11-24 15:38:48');
INSERT INTO `oauth_access_tokens` VALUES ('c32c87c802b5c4af978803fcda2cfb53c02539649372b4565f7cf88eb34cefcc84b501ea7ec22c04', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-18 11:02:48', '2021-11-18 11:02:48', '2021-11-25 11:02:48');
INSERT INTO `oauth_access_tokens` VALUES ('f2d22b1cd67913524f63e72b56b5eac8fd17142f8707366fbd38fdf7572f20b192a07e028f805794', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-25 15:46:31', '2021-11-25 15:46:31', '2021-12-02 15:46:31');
INSERT INTO `oauth_access_tokens` VALUES ('b1825a231c7bc8413e3a3f87fc493dbfe29a84a8a8a3ef853872e744d8155c8ea6d0311b4dbb1b86', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 17:34:32', '2021-11-28 17:34:32', '2021-12-05 17:34:32');
INSERT INTO `oauth_access_tokens` VALUES ('0a62221c0bb7d0726c24d422b6529034b87d25f7de1e28e21e6e8f46f486a14837bd146dd502c8aa', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 17:35:09', '2021-11-28 17:35:09', '2021-12-05 17:35:09');
INSERT INTO `oauth_access_tokens` VALUES ('4a7b6868495b663de1fabaa08e0d0dcf836d29cce63639536a96fdb1dac8092a0b65665ce71d10ee', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 17:35:47', '2021-11-28 17:35:47', '2021-12-05 17:35:47');
INSERT INTO `oauth_access_tokens` VALUES ('9aca570c03290064d19449ebf25520bf95cec2867d5191d7d145857b5662f53d5bd7080161ac2781', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 17:38:52', '2021-11-28 17:38:52', '2021-12-05 17:38:52');
INSERT INTO `oauth_access_tokens` VALUES ('e600a21361e01ee75be5c977ef311a54d6ff56947bec6609b8a45ac16a493db7485c638108408c7a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 17:39:13', '2021-11-28 17:39:13', '2021-12-05 17:39:13');
INSERT INTO `oauth_access_tokens` VALUES ('653832436f2f2e218444579c23f703367fcc3c9b3c89786505099b9a7c87c954e7ba2c4c5c9a6275', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 18:03:34', '2021-11-28 18:03:34', '2021-12-05 18:03:34');
INSERT INTO `oauth_access_tokens` VALUES ('1422e47990407d4a0ec83009b266fa04dd51f49971cf32bf1df1bc938c2a9dd89bb5d4ea71069148', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 18:57:03', '2021-11-28 18:57:03', '2021-12-05 18:57:03');
INSERT INTO `oauth_access_tokens` VALUES ('05677ff4178aadece3ea2f1fb79469d7fd19b8243a61c14b018bb1c7b864c913ff90c075f516c743', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 18:57:30', '2021-11-28 18:57:30', '2021-12-05 18:57:30');
INSERT INTO `oauth_access_tokens` VALUES ('1bf8ca4f9228ea9c20aba11c04416d5f9473bf21d7d5bebca7c54829bf7232bb422e44c6c7d67a51', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 18:58:41', '2021-11-28 18:58:41', '2021-12-05 18:58:41');
INSERT INTO `oauth_access_tokens` VALUES ('83dfe2590a04779b3ecb04f900c078e84b393cae9540717021096e6b0cb0ea3f85f9339e430cf4ee', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 18:59:06', '2021-11-28 18:59:06', '2021-12-05 18:59:06');
INSERT INTO `oauth_access_tokens` VALUES ('17cb89f0849f33f2ac36999e644075b28bdcbbdc1820b7a7d0fe930f08b7241678678ae3cd5d66a7', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 19:00:27', '2021-11-28 19:00:27', '2021-12-05 19:00:27');
INSERT INTO `oauth_access_tokens` VALUES ('34a416f95d0121e43c2131008dea5655addbbcf9cec6da26a42c30d6d065556697cb5d8852204eed', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 19:13:20', '2021-11-28 19:13:20', '2021-12-05 19:13:20');
INSERT INTO `oauth_access_tokens` VALUES ('0bf16fc9f03996307241c2c379cfed42cf37ad949eb9d5ae086720e1a0491a485371c87256c086b6', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 19:13:41', '2021-11-28 19:13:41', '2021-12-05 19:13:41');
INSERT INTO `oauth_access_tokens` VALUES ('e567ab948bbe151ad73a83601b83fc83d1468d83b942b4a4154f7e458bf0d1fddc3527fd285dc76a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 19:14:38', '2021-11-28 19:14:38', '2021-12-05 19:14:38');
INSERT INTO `oauth_access_tokens` VALUES ('5dd9e4abce8c9b7a62f24564ef94b633470596a89377a245764a322b748cd59a3f2f0af855699113', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-11-28 19:15:32', '2021-11-28 19:15:32', '2021-12-05 19:15:32');
INSERT INTO `oauth_access_tokens` VALUES ('05e4b376f02b3001a0671207a0322a37a72cc6f533d116c0ffb8b341bc01f0b1d1218673711a426e', 4, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-03 13:55:11', '2021-12-03 13:55:11', '2021-12-10 13:55:11');
INSERT INTO `oauth_access_tokens` VALUES ('46afb6d200168da9455d2ccea05bc7d2bad338a935e2acb0de86c04cf1479f7421c9693132852d71', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-03 13:55:26', '2021-12-03 13:55:26', '2021-12-10 13:55:26');
INSERT INTO `oauth_access_tokens` VALUES ('3693292d46e91aaf308600dcd7e8f02f6eed2d1766c0df3c4227687e4e8adef14b67cfa4dfa4c83e', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-03 14:42:10', '2021-12-03 14:42:10', '2021-12-10 14:42:10');
INSERT INTO `oauth_access_tokens` VALUES ('17666b4d21b7f207f3585dba454707b27341ace5c3631781b2e0c732ebb5f0836826bd4d282abaeb', 4, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 19:18:22', '2021-12-07 19:18:22', '2021-12-14 19:18:22');
INSERT INTO `oauth_access_tokens` VALUES ('4e966c869ceab624cea1f908ee4a6c1832ca849e2611580b98151c1759f2db1f1d8c8dff5feff127', 5, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 19:30:05', '2021-12-07 19:30:05', '2021-12-14 19:30:05');
INSERT INTO `oauth_access_tokens` VALUES ('1ff3538df2f3937db43024cbc55e74ca015eed0ad0c2bc9938a64d7c567352048b25dee0a037b99d', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 19:32:40', '2021-12-07 19:32:40', '2021-12-14 19:32:40');
INSERT INTO `oauth_access_tokens` VALUES ('e00ba74f959d3a588070b2471be5bb756d7c92e302050844fe1a3feefe19fb4a6f5594ab87dea2ed', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:34:39', '2021-12-07 21:34:39', '2021-12-14 21:34:39');
INSERT INTO `oauth_access_tokens` VALUES ('29a67de7ddd805718d92c833fbfc5b590136164179d440f3cf7c18b1fbdc6225dc17029302ed5739', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-07 21:36:42', '2021-12-07 21:36:42', '2021-12-14 21:36:42');
INSERT INTO `oauth_access_tokens` VALUES ('af133b1277f73c670d17668316c0ed84c3b04c5de996f8018f6028d4ec9bc3cea7efd1a10b5557ea', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:39:02', '2021-12-07 21:39:02', '2021-12-14 21:39:02');
INSERT INTO `oauth_access_tokens` VALUES ('0a71a2ddc33b9faa72d76762450839c5513eb4c61a3b994acb3b4194d1fe521d9d88a0cd7aa75d88', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:39:40', '2021-12-07 21:39:40', '2021-12-14 21:39:40');
INSERT INTO `oauth_access_tokens` VALUES ('03e68a9e5bf4ce374a9a32a11a870a8ea2b02cd0b04e0454accdd09abe86f0a3ddf166d41a10409f', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:41:10', '2021-12-07 21:41:10', '2021-12-14 21:41:10');
INSERT INTO `oauth_access_tokens` VALUES ('9c581c6d43e59c7dd549403ad5e07899cb108bc0db0f7ba68508f572b8c2ffdc8eb1b2047370ee70', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:43:15', '2021-12-07 21:43:15', '2021-12-14 21:43:15');
INSERT INTO `oauth_access_tokens` VALUES ('73758853199a01aaba8c5b036f1d30ba17f4d0da2fc9542042b8f79c422152ca2da197d9433db0d8', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:47:26', '2021-12-07 21:47:26', '2021-12-14 21:47:25');
INSERT INTO `oauth_access_tokens` VALUES ('a3659c224e95cfb9b3a0f0ff9dbd2a5a6195452721009e63fd1e1802dbb20bcd27db58e7997144ff', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:48:41', '2021-12-07 21:48:41', '2021-12-14 21:48:41');
INSERT INTO `oauth_access_tokens` VALUES ('5a7d584f2c96998f8a5afd14b8aa972d89bb63c8be853fd112362813c987a860beae099d3a96c0d2', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:50:03', '2021-12-07 21:50:03', '2021-12-14 21:50:03');
INSERT INTO `oauth_access_tokens` VALUES ('3fd438e519dabc89df16abe2e2ed4ddc76328404b777821f70e06188951e79f626a08bdec1c51253', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:52:36', '2021-12-07 21:52:36', '2021-12-14 21:52:36');
INSERT INTO `oauth_access_tokens` VALUES ('70ba7f770a5a6b80a2c28ccd3a32fce23c1f4fe027280237f03921c7cb30dae3f0c2bf801797bf5b', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 21:59:07', '2021-12-07 21:59:07', '2021-12-14 21:59:07');
INSERT INTO `oauth_access_tokens` VALUES ('c2349b7f1e3fb757708f5d501ff7d492052344449b9499b76f323cdcf3be808362bffd40b3e8c37b', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-07 22:20:38', '2021-12-07 22:20:38', '2021-12-14 22:20:38');
INSERT INTO `oauth_access_tokens` VALUES ('27a5bd552dfff9ddb4dae2531729171c2352238eb269515632c81f6c8b5ccea5bb0325b9a3bf16dc', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:03:48', '2021-12-07 22:03:48', '2021-12-14 22:03:48');
INSERT INTO `oauth_access_tokens` VALUES ('4d21855105cb64301eb0e029629d9c4c16132f0364384f32fa734a03f6760407be140cb2f77254bc', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:05:28', '2021-12-07 22:05:28', '2021-12-14 22:05:28');
INSERT INTO `oauth_access_tokens` VALUES ('891176bf32f1e308d7e09bb2a7e4189c7ea74987e9f091d3352f42092fd05b8ff1961ee7d2500199', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:07:52', '2021-12-07 22:07:52', '2021-12-14 22:07:52');
INSERT INTO `oauth_access_tokens` VALUES ('8df165291966d3b98bb567619d4ee11c6c7358cca074f656137ba2cd35ece3ee72c64492d5ece0ec', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:10:54', '2021-12-07 22:10:54', '2021-12-14 22:10:54');
INSERT INTO `oauth_access_tokens` VALUES ('593421debe240e0bc5876eabc314b5321f57a60347749f78f4b78f5fb953671f59c789e8e709830c', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:15:56', '2021-12-07 22:15:56', '2021-12-14 22:15:56');
INSERT INTO `oauth_access_tokens` VALUES ('20fa4e1f842ad2ffefab7832722ccb544a497813992a038ba1e971a5d4e3f3f5e357dc24ac248227', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:17:10', '2021-12-07 22:17:10', '2021-12-14 22:17:10');
INSERT INTO `oauth_access_tokens` VALUES ('b0eeaeacfe316f40b48b036619bca2d48a2ad22c4bcaba5d9ae99a7a9b2dfa57f31475646da67ed0', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:17:25', '2021-12-07 22:17:25', '2021-12-14 22:17:25');
INSERT INTO `oauth_access_tokens` VALUES ('863bf36f6e33a82b19a80a6a36b53edc6a34f1dbd46553eab44d2be846392d17932e79ad088b60b5', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:19:23', '2021-12-07 22:19:23', '2021-12-14 22:19:23');
INSERT INTO `oauth_access_tokens` VALUES ('067b1b627bd330d6203b113c2ba9973061d86822ad49ea7cac89d98243b9b7709a96a40d33c5d843', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:19:36', '2021-12-07 22:19:36', '2021-12-14 22:19:36');
INSERT INTO `oauth_access_tokens` VALUES ('79276357f48723e2c3e5a2d3db7dacb939f4856e146889aeeec9bee9ed84430e92c0c7af24d827b3', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-07 22:20:08', '2021-12-07 22:20:08', '2021-12-14 22:20:08');
INSERT INTO `oauth_access_tokens` VALUES ('c812ae29c980f5b12905cb7c95e864da8f42ca1e8f04210a81f19b8fb6438b7697c075f32ea8d6ff', 8, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 17:53:40', '2021-12-09 17:53:40', '2021-12-16 17:53:40');
INSERT INTO `oauth_access_tokens` VALUES ('6a4fe754167981e5c5542bc3a56838727112d68f7b39fd1df765ec3abd994f9372e6b2bc46b2430b', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-08 19:38:58', '2021-12-08 19:38:58', '2021-12-15 19:38:58');
INSERT INTO `oauth_access_tokens` VALUES ('2194186fe79d532ce66cef8b35738cdc8c7cf0d9ea54971cb36479fbd5c2d5a48dd21bd9ed8eb97a', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 13:53:45', '2021-12-09 13:53:45', '2021-12-16 13:53:45');
INSERT INTO `oauth_access_tokens` VALUES ('ed149e800e0995a5392949ceed68207dde40840fdc874039dbbc1196ca2c9af0c0b332cb6136aedd', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 13:55:52', '2021-12-09 13:55:52', '2021-12-16 13:55:52');
INSERT INTO `oauth_access_tokens` VALUES ('cd14977b33d6f82adaf10ec69671d8b4932c3ccd9937abe3c6c6cd27da5842652591a2c43ff3417d', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 13:57:53', '2021-12-09 13:57:53', '2021-12-16 13:57:53');
INSERT INTO `oauth_access_tokens` VALUES ('2e6079fcb172a3afbbf3e82cfec7f3d873e26a5f8488c9faaaf23389b4160e3dacdb4fb7b2ff2354', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 14:05:14', '2021-12-09 14:05:14', '2021-12-16 14:05:14');
INSERT INTO `oauth_access_tokens` VALUES ('10e461015ca5d6c7314ba10cdd29c4511cf9b90c1bdd85e3fae3aac1c9413f7d534d426d17333248', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-09 17:53:56', '2021-12-09 17:53:56', '2021-12-16 17:53:56');
INSERT INTO `oauth_access_tokens` VALUES ('dafcd8cbe956ed3a3a1a70cdf7fc5b4ff291f885b736120790d104478bacae8a4f30d063975717f7', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-10 15:51:27', '2021-12-10 15:51:27', '2021-12-17 15:51:27');
INSERT INTO `oauth_access_tokens` VALUES ('5b3c77a2fa608e139ba2cb45e95d0a8eca70e655f65c1d1c4baf1393b1883d7d0e8f7d4315b64d13', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-17 19:47:31', '2021-12-17 19:47:31', '2021-12-24 19:47:31');
INSERT INTO `oauth_access_tokens` VALUES ('164bc199f9bb12905f9d744540a3f40b941be411ca451f1c139eb4444b6d41a9f9e8970fa9976b2f', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-19 15:47:08', '2021-12-19 15:47:08', '2021-12-26 15:47:08');
INSERT INTO `oauth_access_tokens` VALUES ('a1cee3a3172656863d7d36cd431e138d916fa04a53cdd6d383db0caf7607b2f44edc68c67dcd22f4', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-20 10:13:45', '2021-12-20 10:13:45', '2021-12-27 10:13:45');
INSERT INTO `oauth_access_tokens` VALUES ('de396cbb32b307c3c6d8b47c91d9e340bd4900431dfc8d2d6278123c1c74bfc49911eb2874d3b12b', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-20 20:16:40', '2021-12-20 20:16:40', '2021-12-27 20:16:39');
INSERT INTO `oauth_access_tokens` VALUES ('5d3226b700bd37bcf711c3fbec49d220a6f30b802d088ce0808dac678a5d249230f7d9f54d93b3d3', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-28 13:02:28', '2021-12-28 13:02:28', '2022-01-04 13:02:28');
INSERT INTO `oauth_access_tokens` VALUES ('992da1603a5b2923d8d5a33528a406fdb151f3a30a1537e0eb0b3438399b1d6d98506e1822a29b82', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-28 13:04:31', '2021-12-28 13:04:31', '2022-01-04 13:04:31');
INSERT INTO `oauth_access_tokens` VALUES ('9b3bc943fe579a351466026e3b043acad7ecf1d2fcc30e342c4fbced51797e69559aa2cbc0cbe320', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-28 21:59:05', '2021-12-28 21:59:05', '2022-01-04 21:59:05');
INSERT INTO `oauth_access_tokens` VALUES ('c605c7d06a20ca76aee7f9b4732c8322e01b9e9466521e9fc8c868914d4374c6973b071726f418d0', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:02:19', '2021-12-29 14:02:19', '2022-01-05 14:02:18');
INSERT INTO `oauth_access_tokens` VALUES ('827f68d2f05a39c203ee38b554440fdf4bcd90ebbb89459b2913bb1dc6456f46e9a07d25ae7a4396', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:02:53', '2021-12-29 14:02:53', '2022-01-05 14:02:53');
INSERT INTO `oauth_access_tokens` VALUES ('10398fba867523670fdae40697f64e2649d87c0f8b7e61e8db898f0b7453bc6878e269121266191a', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:10:45', '2021-12-29 14:10:45', '2022-01-05 14:10:45');
INSERT INTO `oauth_access_tokens` VALUES ('5d1cbc6aa11153beae8b7979c6789ae68bc89f63ed997b16d36e37aa7572a9d202c8ab25b60d643c', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:11:30', '2021-12-29 14:11:30', '2022-01-05 14:11:29');
INSERT INTO `oauth_access_tokens` VALUES ('e25febc3594f63310d12990de07c8fa6e0095a5b390f93a20a461d925bdb2e8d4ff3dd0111b84a3c', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:12:11', '2021-12-29 14:12:11', '2022-01-05 14:12:11');
INSERT INTO `oauth_access_tokens` VALUES ('269c626028bb6b8c03c429ff55a16610df83c0ce65bd48ea7dae98f2e0c137a163bc53d723baa904', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:12:35', '2021-12-29 14:12:35', '2022-01-05 14:12:35');
INSERT INTO `oauth_access_tokens` VALUES ('024cfa21b37aca9a242cbea303d7bba141268c82fc4fb5c42b4921c10785a3c7dd09fedbc4552a91', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:13:01', '2021-12-29 14:13:01', '2022-01-05 14:13:01');
INSERT INTO `oauth_access_tokens` VALUES ('745b0f7a6c70351125b5b67128d99a66ef2f06f987ad099175a6a93a339ab461fc700607c5caceb1', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:14:16', '2021-12-29 14:14:16', '2022-01-05 14:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('dc190422dc063e04d4e4f8c9765ee3fe4223528c554402c4470930c5f221747be80f8e3ee4f9f345', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:14:39', '2021-12-29 14:14:39', '2022-01-05 14:14:39');
INSERT INTO `oauth_access_tokens` VALUES ('9b31493274b6452ef00fee131d0c1b49edfc4c49f2c0d5df1a2e980a3224a5203720767e507f8083', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:17:21', '2021-12-29 14:17:21', '2022-01-05 14:17:21');
INSERT INTO `oauth_access_tokens` VALUES ('48dff95ce74b88efd778b722b4cbf5a99ac5a33411d5ee0503e01f2d1bf1c39635d24db1edff30aa', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2021-12-29 14:39:24', '2021-12-29 14:39:24', '2022-01-05 14:39:24');
INSERT INTO `oauth_access_tokens` VALUES ('68493843fd741bdc98460b0825e19a0b33676ffd5c41537a874575279f53aca1185c5bc944f4219c', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2022-01-04 23:11:58', '2022-01-04 23:11:58', '2022-01-11 23:11:58');
INSERT INTO `oauth_access_tokens` VALUES ('c0a5da28d73092c9bb3cedda7bb02210ad8e43e7a94a68104e73cdd18bf977edc43f73ec7ce4ea3b', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2021-12-29 18:02:46', '2021-12-29 18:02:46', '2022-01-05 18:02:46');
INSERT INTO `oauth_access_tokens` VALUES ('ee2971641ce3aa59789df40c403b1a006dd40a2d96fffa215b0a405a7aadc2119f898bad005c5865', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2022-01-03 13:46:57', '2022-01-03 13:46:57', '2022-01-10 13:46:56');
INSERT INTO `oauth_access_tokens` VALUES ('2ab22a3ae3c26d551a3334e425a72325a8d4eb346577a759ec0b5547ed62b7ab7d80764f5653f62f', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2022-01-05 20:33:52', '2022-01-05 20:33:52', '2022-01-12 20:33:52');
INSERT INTO `oauth_access_tokens` VALUES ('c8a466d215f25162280e2dff13afe828629438cb5a142d3d6da2e8fbc48016aad6bf08a9f5acd738', 1, '94730bab-af28-4fad-9a04-c840694cafe4', NULL, '[]', 0, '2022-01-10 23:06:55', '2022-01-10 23:06:55', '2022-01-17 23:06:55');
INSERT INTO `oauth_access_tokens` VALUES ('2d001d86223fe4876789e64f86df67ef4dd2671cae3c99cbe4da32fe1ddf2933a4c77f59dfa4ef5b', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2022-01-12 13:58:57', '2022-01-12 13:58:57', '2022-01-19 13:58:56');
INSERT INTO `oauth_access_tokens` VALUES ('64369acd371798a898f938e916b0b61f41e0bd3c2d4d30dbebc88695e7fa7c90b7bf9ae83fb967bb', 6, '94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, '[]', 0, '2022-01-12 17:32:22', '2022-01-12 17:32:22', '2022-01-19 17:32:22');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('94730b8b-eafa-4edb-aa17-cc5c49f82834', NULL, 'Laravel Personal Access Client', 'GrZjcBeoXbsthArT8gajl8ZDGuW1cNLfjhe3zfWT', NULL, 'http://localhost', 1, 0, 0, '2021-09-21 09:59:18', '2021-09-21 09:59:18');
INSERT INTO `oauth_clients` VALUES ('94730b8b-ecf3-4de6-b883-827bf0c1dccd', NULL, 'Laravel Password Grant Client', 's7eti8tzg2pE39yC9Wb5svejgj6CZ1BGr1DWwwLx', 'users', 'http://localhost', 0, 1, 0, '2021-09-21 09:59:18', '2021-09-21 09:59:18');
INSERT INTO `oauth_clients` VALUES ('94730bab-af28-4fad-9a04-c840694cafe4', NULL, 'admin cliennt', 'QX9vIM2cOZd5HpFcTAcQLWp4d8w44rBo4kNtswA2', 'admins', 'http://localhost', 0, 1, 0, '2021-09-21 09:59:39', '2021-09-21 09:59:39');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, '94730b8b-eafa-4edb-aa17-cc5c49f82834', '2021-09-21 09:59:18', '2021-09-21 09:59:18');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('91e74a5719e7786f3778595375b5aa65c5146fa475c49a907a9199163d8474ad2a499195d58acfe6', '879a05d6b9be77b7854f7f534c083c2748dc5c7e6b515e074767bba5639ce83c74477e58bdc4a982', 0, '2021-10-15 11:03:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('9287e02c1ee495ca6044bc4bcf52474b573b07788fdc61aa154ebd6aaa8e096cb30cc2da03582c57', '9f5ef2747a9bb07f8b930e05ea329a6ee58c215ba63b478f21520b18109455f01c28b8de47d82843', 0, '2021-10-15 11:04:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('44b807edc2b3f62bc362760fdb75fc50e54a6790b3b0a16e21a7126b855230ba83d3757ea5991609', '25297e44e8470b9375016df44303e55293dff02b8de96c418d6feca3fa6e492d2c2470573102bc7a', 0, '2021-10-15 11:06:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('eccfa0f74388442bfd74ab42736be6d8ef76bed4a64fe505c22bcfbfa44ecd9c1cae830ed0c922c2', '649ce4c2082402dca9d12043b0d08c36df15c88ad1681d833fdbef62c5060ebd3e73a38c63891eec', 0, '2021-10-15 11:31:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('5a28e2f9e83895100180bdae949855054e980abee8df7ee68edf73e6e0d04e66db0042138a004699', '6646541143e4c8a400e4dde052ffb9d1023a7db2a73250e7e3cf6f8d6c7116998e075a283d69e0ff', 0, '2021-10-15 11:45:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd925b8f13c0c12d713019796da6b94d91eacd9f00a36ac83a609c82135c01a7423b2180728f4508', '70d17957633eb9464ba575e6080fb7e7574153fc82cfbb02992c960914fc1d9087e9bba495d4d29a', 0, '2021-11-17 10:56:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('d4ebea62263c671377e97fcc913242be17b433e098e1ee780f9d4eb2893804be3efdd883812303fb', '8fba2b62222c73858428d7ca5591c23327742be0be0dbb089a6dbe89912307117b361dd938828099', 0, '2021-11-17 11:03:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('eb525b62557d03968ba3d334af48179dfa3795fb53746e2f4d6e451342e36a88d0df433c943bb943', 'e7d679a2f0da6699451e2fb57e490152c4520c4314c1e3ee3ac1ba9a1f3b523c09881af4ba8cc8a9', 0, '2021-11-17 11:12:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('7e77549e884635fd11d3e56ac07b1a47a0542b5f2aa102c0200bb18345fdbc7e81e729051cffd4f3', 'ecca06157daff6721b20a03bcf2b3ecc5ff3d70cfe5da5ec747c18967704e402d81080847f7d10dc', 0, '2021-11-17 16:38:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('d01bf68ff1dc134c5a134f443638c126f3c31bae1570ae21292ddcadacb1a97fa747dc681b037053', '97362703de7940b39a08c9bbd27b6447aef20029fcfe7b6e871834ab0db152a6b51798685505d0c6', 0, '2021-11-21 17:37:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('2977ee6ed09f05497cb5d71445b3aee7f73b5ac5970ce693e17adaccf7a612d3cb3cd97a24b791d8', 'ce775457228584c2b811803e522d92a1c5f519cebc2090e5b8d494843b23a99e102cb6c4dc29c2c7', 0, '2021-12-01 14:41:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('0a2df79156e668b42bbbfaa79b89cbd4c20d0beb10ccd8fa98fc250715b3a1b19b2ba24ea18415e1', 'ff1af726aeebca446652d51b1b007885cf3775ccc0bdcbf04f4c7d3dccf3f1b288436edd8869d1e6', 0, '2021-12-01 14:42:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2f5662c63c35f54687b6330fbce4040825803368598a8e02be52035c8e7d6ecebb9c2e17bbc2af0', 'bdba6a9d243dd4dc3a89a337189d713dd7954589524fd4fe8b6fcbe05651be6fa5404239bdb8fada', 0, '2021-12-01 14:43:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('37208a98997826a9e53076ca665efa71784624512ea2c013580a0e311db7ee1fc7451085d869dd7a', '72012a71dd37eafae5f1f0fd2022f06539657a7f0c7a091edd1f55e170601d26ff667fd53d5102e2', 0, '2021-12-01 14:50:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('aa80743e2c313b45939593b4cdd4159307053e901a0d3f007595c52ed6eeeaab4c26f1fc218c98a1', '3f018cde7f69678c2eed61ba8d0ab8d052a40461eafae01891291ca72ddfcd6b4d837e2e5c70a9fe', 0, '2021-12-01 14:52:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('d3835e431cd37d3710009cec9f3970d3f44722257a1ad9bdd029639a9da896b8df3dbcc8f643c62a', '7e1736845cc6ebcd3e937e673e43ee44c15711443f2e2567f5cc584365044752c6bac842d21cef8e', 0, '2021-12-01 14:54:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2892b7cccb7b17f160f6f617be5e05003dfc568e48cfd98deaba9a3f07322446a20a205cb360482', 'da7bab4b096e5eb642701d73336ffea19027d49ea0bcf42fa676b97936e9672b4255790ac9d7decf', 0, '2021-12-01 14:55:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('41aa10f564e3a796819c7d2db1f669e0abd4c01c433d52154d94949c18db2c59488af1af9cce7b1a', 'b376c7a9ce8c7b0b8c0f74570abd9a2857cf604de21770d1b643b8d377b918157df4ca7e6d424d48', 0, '2021-12-01 14:56:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('3863ffe9280c7076d6ffe53e43287e28d6ce1b7341e5e979e766f0a43e4fc284bdaa09d9d03c5d80', '92254db71e253e889fe13fc2621dfc20ec0bf149e72dba1f677803f453cc5dbe38f66f526246a0ff', 0, '2021-12-01 14:58:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('1ae07a08bcf4886804ba5ea662e7c82e0e2281d715321bfd178685f94533a0ff9fba01a803c7fa1c', '7a4bd0674beddadb1731f1d4e73c37b7027f5bc88214e8582b76543d0fe8c5c0a0ea6608d19d7fbf', 0, '2021-12-01 14:58:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('607fe4f4d90ae202a30ef241d1b29f71f0b8f9dc9701710d46f3b56ca2564e9adfcf010a9761d61a', 'e650d375bd1c1f64417d6df00b4ab5af0dad9440e7630703b31a6595d4d63070a2726142d6eaf8ba', 0, '2021-12-01 14:59:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('d30a39d2c90d47a736d33fc44f645859028e25af49778ba98f70efec1d410258fc3cc14f2aa6166e', 'c5ac4d34bbc3418e96d9da2ee0becd66245eff9d6b20d1edfa1a0e4aedc16e9b2453a7aac6963e68', 0, '2021-12-01 14:59:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('1bf0bf55b51507dd488e213864374b34c551b9240808a14c8a071b9a06b2381bd2d6d5136172ce63', 'd4534813b0a8c86e406953967a63c6d83eb73b9314ebc6a44bb229753104328cc26e5a08aee01de2', 0, '2021-12-01 15:01:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('f5b04d7b13a30db04b088716fb038424ba18bbd82be8aad01f702c6a938a4c8ebcdbf8d755e35698', '4ecc9793950b8e204461ad1db9559e3dca8ac191090cf4437bb94258f5f863fbff852048b2147c3e', 0, '2021-12-01 15:07:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('346129ba222814025122a153ee2edcf27f01f6385ed1f18e2f34e8f20d096ed4ff686c67ed103b25', '4b51d755e6d9d889998d7de850302164987a0ef317d014021267cc8fcfbbf639c96c54843b56a8b1', 0, '2021-12-01 15:11:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('dfa7416f9b562cc9a36be1f4a57d9de83456a7cfebe85b88f908bdf86fdd033f32d86b1c18430f95', 'f44d7d3d60a1f5bc97f6a01fa19770ed666a5a84b532f9d7ee447adb2efd3fed89b0a7a984121835', 0, '2021-12-01 15:11:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('433473c392939fd29b961f98515193552d7f032689addb90fd4aba6e2b3bc36194831566af39ba0c', '816460d4def0934104f9a45abb90c865ec55721a19811e5ae70b834d02806c5d43544e7fc69e14d3', 0, '2021-12-01 15:12:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc6fb5cd8cd06f6480280debbf71784cc5c9c6c550aa042c852681ab0f06a639d3b6d09113e38940', '978a0818e446d69c3b57581dee6d64e43af2ffbe7375652df953f4267560c8bfde280b255896281c', 0, '2021-12-01 15:13:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('7805cbb5c0d8ebf9a7214c54f3709f4d8313d16f2c9cd62d650fa28aae422991ed29da4f9098e085', 'ed609631ea51e47a3879a98ad6ecd2d73296f3d5a4f67005de4fbdf868a92f824f02e64f3ac3cea6', 0, '2021-12-01 15:14:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('b38f251e3ead0651625a35c9a89a3de7f583ed5ee71f8ad91285252e960da08ff2f899656aa09562', '2a470f15080072e1e3e5fd3daf73b5cdb1da0626f22c8c9a5418c77f181d2f14b65169fa1aa268f0', 0, '2021-12-01 15:15:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('26a05253572841636b86352229b60ecb3dd21929e20b97c4b96b65aac4f71b96b8ae44b43776fa1b', '0c66358c872118853f125926b2ab7d096afdb0f0e85be22772527ff214bf4b862eefa35c8398ea19', 0, '2021-12-01 15:17:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('c1d1db810de77ba1dd0bb0052aaf89d9922fc7a12de1a3032014733d29a26789f7ee8e368c369532', '04edc9614c3c7c7fdb3e1d55cee7d7aa61e252df2073f2e04d21a290e84b14023cdcea3572120451', 0, '2021-12-01 15:20:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('1db8afff4d0197b7f2205946a4c43a0353ec54e90b31a53a8b08671961908753338c6410f4acf454', '4839937519174fb1390c690da29e4b22bf8eabc0a14a9bd2ab169e7322e26d40bf02cdf1a38870d0', 0, '2021-12-01 15:21:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('bfc1f176707f668460241de53fde05c56d65c90b64c27e27136910ee73cafa3f70bede2f5883745f', '6b61f47d4de368df94c16131cdbcffa984604413cb3d706980e4ae3a5dcb7d9f3881afe87378a304', 0, '2021-12-01 15:27:21');
INSERT INTO `oauth_refresh_tokens` VALUES ('20e2e214e3bb2fe3b080fb042edd2eddfa7e1a5f1b8f48fda9ba2b9c0e2c354b5d8be39d84a6195a', 'a10393ca9b76e23e34c0207031391bf53a70633e9a7f777b1b409489c6c4d84e3210ae694cedd016', 0, '2021-12-01 15:28:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('f883f09af745503b693fe82f4b5626c365ac8541652574c3c18710f0e358ca0acf13fd4d06ae7b43', '3c7bb8a2c176e5097ab5c30bfcb719e6ef203aa63f1bf859c278b747a6e82ec4c49515402abf1e99', 0, '2021-12-01 15:29:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('b95079a920e89ece7fe238181a128a661c8a0335bc305fb2f68a608e155b11db4e631a0cff3eeee8', '84417f87efad5de356935bd15efb36eb018d81519602b7c783d3e7cab7c1cb18194e8a493c733904', 0, '2021-12-01 15:30:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('bbeb4bd564cc2ecc7d954c7161a77ebec44c0471798cf1271796dcd53d20bd0132fe09fdd409bf77', '02738a804e5021edf52a09e58009ee0e998fc657d38bafbf395c63f15bda803f1965de155ad1e14a', 0, '2021-12-01 15:30:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('0377d9cb233925d78530a696df96a607a9edc002acf9750fb277bbe72f508ef74021a87108298363', '09065ada8975380164d8a5ac1ed687395d4eab0689edc37c5410d55a0ad06d2cad39904260b53880', 0, '2021-12-01 15:30:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('c0896af2df4674ac1c8bb650353a44f5dc1d2ecb7c0d6b982c9052eac86d0aede49ce9c18fcd8195', 'c1e9351748182036763ac393e15d073be2c7253c38fe801edf40ae186b71bef66cf9a6c82090120a', 0, '2021-12-01 15:32:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('2e8537d02094af7c23057dd5bb51f753830f534989a45bde19c631f5b79b35647769af932ebd57d8', '15c14b6e79ea50366350d339cad779038562dca09f47c207c30fc2d5749d2d7a650e04f01f2d5a47', 0, '2021-12-01 15:34:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('01d56e61c23ae0e3c3167ade0987ede1ae620d10d2c1b7bffe53d99fd1691fea19030a6f6a00abce', 'b1d1c12c7493f1734aa82140366e92539e11643dd2acf0ff8af7d7ebd5c36b4ea67276e92438a822', 0, '2021-12-01 15:34:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('18ad111c378bacc7f41d52c26f3088cebefe0b34b0014213d4f8117d835aabf879d711ef1adb3516', '966dc913cfd4195da5cab68f64b113da3d750b00fec5c38a0e99752b541d71a1e4e23391b31bc574', 0, '2021-12-01 15:35:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('70062b044f93a0245e545e96b21f744e724c5f0e6deece87e39cf99a64d3f258a6613672b6f26fb4', '8fc253338d6d5d086d245090c9bfb701a6f8b4e7dcc59fed8b6d8a07e888f67b30fb9dd3f94b942a', 0, '2021-12-01 15:36:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('371ab8c7659e7058b0c216ec58b12b736a65b1dd1cc1f038fb78a1118cf620b2b4658bbd42fcbfd8', '858d9781b11bec17467db45ffa74e24be68af1c33c577b7d0390db65afd7b1b4c7c13cfe93176d55', 0, '2021-12-01 15:36:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('ff68aa63bdde0dbc7de983da4890417330c48cdd0e5ddd0ad9483d0ab8230433b45a9d9f9a9e6adb', 'c85a966dd2fa6761062479391b8890a845679bd55ca013b68ddb394d7ce13d50beaa367890e0ce2d', 0, '2021-12-01 15:36:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('a360077d29bba224303496ed7fed1a57c94aa91f0ba5b7956fcbd28e2beae5346c0e313d366576f1', '7853a2e7230ed678c644a197c599c7920b1184e90bbb7498b96cb9ecbd0f741982ae7438d25412ca', 0, '2021-12-01 15:38:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('df95194a8ea2b88981341abfbcb9353538ed0407b75da572139dcbed21d39e57e114cdbd5f9b1d3c', 'de18282d6eaf100955643ab6cc627dc29df1aa09f2512708248c7c2a71c116d986eae30115512876', 0, '2021-12-01 15:38:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('e6cb0252565c96a9b35bb6a4b32a0d416dd60f954a832fed8fce5429e78168643ceec24d3949f9a2', '5b6d45e5f72a3c344f4386f735433b33540aca52b5c04e73d2f2744199ca7df8369ca7e4a82595e4', 0, '2021-12-01 15:38:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('e78aabbb0e417bbeb77495eeb7ebbad012013f35848d6db2536535d5fd0ce18b6d361c07c23e34ab', 'c32c87c802b5c4af978803fcda2cfb53c02539649372b4565f7cf88eb34cefcc84b501ea7ec22c04', 0, '2021-12-02 11:02:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('106c66d87af1e206abeafcd804f6204b283ab3aea1530bdae85cd5d9d246c3d53395a17ce36dfb0f', 'f2d22b1cd67913524f63e72b56b5eac8fd17142f8707366fbd38fdf7572f20b192a07e028f805794', 0, '2021-12-09 15:46:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('82e50c10d9e53c385466237a0a2e8e10c816e106dae49ed2b92b2dc3877250c14b60062b897870d3', 'b1825a231c7bc8413e3a3f87fc493dbfe29a84a8a8a3ef853872e744d8155c8ea6d0311b4dbb1b86', 0, '2021-12-12 17:34:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('4a5f1e04cb6c5812c067de0d69f419d6cee8a0d7a857bdcc8ae91ead864b4ec61d4660e363284cac', '0a62221c0bb7d0726c24d422b6529034b87d25f7de1e28e21e6e8f46f486a14837bd146dd502c8aa', 0, '2021-12-12 17:35:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('0fbe39376001656a4fbd66b5b8cbab3a40fd09f6921d24a75f40ff88237b7f97f875bac11500f5bb', '4a7b6868495b663de1fabaa08e0d0dcf836d29cce63639536a96fdb1dac8092a0b65665ce71d10ee', 0, '2021-12-12 17:35:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('5e66174118fd26adcad4b3659ec0665964fe727e98de923b8c5fed10b31609fc617f313bbb8dd74b', '9aca570c03290064d19449ebf25520bf95cec2867d5191d7d145857b5662f53d5bd7080161ac2781', 0, '2021-12-12 17:38:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('264247649d5a2ba3dffd3265b6765b2f6e35c0b00539965d19e3940ad07982a4f84b6cfa7d393673', 'e600a21361e01ee75be5c977ef311a54d6ff56947bec6609b8a45ac16a493db7485c638108408c7a', 0, '2021-12-12 17:39:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('6128e59032b73d648d6c9e8dbabe94131f1ab7ea53a2b28499e2ea59ff0a2cafe128675292a6e0c6', '653832436f2f2e218444579c23f703367fcc3c9b3c89786505099b9a7c87c954e7ba2c4c5c9a6275', 0, '2021-12-12 18:03:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('833f04d1a0639b8940fd02572b2fe7c37c6a6f0a98150c3cccb7ce55e4e60ae0809164c8ce24d271', '1422e47990407d4a0ec83009b266fa04dd51f49971cf32bf1df1bc938c2a9dd89bb5d4ea71069148', 0, '2021-12-12 18:57:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('cb5bb5d2f77557763eccae0413d368a34f88d65d46f6105b6b1243a7eb68b275750b289429fee985', '05677ff4178aadece3ea2f1fb79469d7fd19b8243a61c14b018bb1c7b864c913ff90c075f516c743', 0, '2021-12-12 18:57:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('999ab94c7bfb409777777c1bcd7603006a5676b9bb11dc9e3fc923bf03adaf04aaa0aac2e9228102', '1bf8ca4f9228ea9c20aba11c04416d5f9473bf21d7d5bebca7c54829bf7232bb422e44c6c7d67a51', 0, '2021-12-12 18:58:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('f309b63782225382e9d14fd9bee25f0c160d7d9006f0c848cc373b47074af4bf1b840dd235860e75', '83dfe2590a04779b3ecb04f900c078e84b393cae9540717021096e6b0cb0ea3f85f9339e430cf4ee', 0, '2021-12-12 18:59:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('185e1acefa72c1be07e2f47d9a6b795147e302211207ab50cd6cbc8056f7308e9f6135c81fc0abd6', '17cb89f0849f33f2ac36999e644075b28bdcbbdc1820b7a7d0fe930f08b7241678678ae3cd5d66a7', 0, '2021-12-12 19:00:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('c5616ab90951d783f837dcfb36a9716df22e63d37bf602c0e4084ab4c59d5452bb51f19db08d4d89', '34a416f95d0121e43c2131008dea5655addbbcf9cec6da26a42c30d6d065556697cb5d8852204eed', 0, '2021-12-12 19:13:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5d96ff4e6eb6ea79ef053f72861b71298d3f4fe6394b82818541c54d990dc71b8d4ef898d8fcf5d', '0bf16fc9f03996307241c2c379cfed42cf37ad949eb9d5ae086720e1a0491a485371c87256c086b6', 0, '2021-12-12 19:13:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('5f6ac7bc8c0916fa790df083d8afc8a0be3ecd2e62d17ec4aa71644c1d840f35f15eadc6b53fc94b', 'e567ab948bbe151ad73a83601b83fc83d1468d83b942b4a4154f7e458bf0d1fddc3527fd285dc76a', 0, '2021-12-12 19:14:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('f87fb5c028613c97be42411307bd4bae9d3a42d1d6d68d6d3f470929d6e39bdab33e5855e49cfdcb', '5dd9e4abce8c9b7a62f24564ef94b633470596a89377a245764a322b748cd59a3f2f0af855699113', 0, '2021-12-12 19:15:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('fee73fd68456601d62a9b578a01ffbef75e3b5b376409c0114bac59c213bd9409f8adc169556552e', 'bf71d51bc9ae97ac0dd787a18812a92b2ff30746cf448beb9f002447e4c2509af4600fd96aeef00f', 0, '2021-12-12 19:17:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('d2669d449bad4367aaf591e1d3bb3598dd4b5d47d9091876edea03ea17227ff9adec209fc3975895', '133d35eacd130be4863b370233817c5107aac339900fb92fcac04d8159fe9939f965280d446f2c70', 0, '2021-12-12 19:35:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('cafec05bf72b45b88a36a1d6aa82830d2786ce48305d5789947f193dd91c43ce508f4c37614c4f1f', '535d7048056dc7e35d3ae0e7500c6378981499df927d6ef1cc6faf04b43417700121105ad9d1bcee', 0, '2021-12-12 19:37:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b58cea19c7a221506db1b1ad72f851b4c3e88109a1a70ef2e4e91cbc4c78c49acd2a55c96d23ad3', 'd5b4f1212267b3d3f85b6fbe5f96d1fcf36154f5e7c511484bf0683bce3c26f69a375642970dcf47', 0, '2021-12-12 20:04:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('485bf5508284064aa483c83b7c95f22262c18424b0bd8f0c4ae3af81bd8edb685cf656f273b5bfe9', 'f2827658f7c8c6db148fe34066b2a9e64ba52748950d72c2826a72756c45bef5300383fb97250325', 0, '2021-12-12 20:26:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('f427decbeddd16a052864593bafb6eb582075a89e2e47f34f0925f05ee0e2adae457900bd3d98d65', '7d471280595bf61c82f53ac19d476dd76bde6b44c8163ede95979c6730838bc604ce39c8793d3ca6', 0, '2021-12-17 13:54:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('54f66cef9658c17832e68285751c2c781f72886385aa1ad97c2bacb4b867602d24652aaba544ba49', '05e4b376f02b3001a0671207a0322a37a72cc6f533d116c0ffb8b341bc01f0b1d1218673711a426e', 0, '2021-12-17 13:55:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b6c6ca57f0271716f3b587a8003b321db625436f0cac97a72b6d9803c92af87c9313ac6f391e0f6', '46afb6d200168da9455d2ccea05bc7d2bad338a935e2acb0de86c04cf1479f7421c9693132852d71', 0, '2021-12-17 13:55:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('d39c14872498c9c5950f3da091536c4533c73e20e8d86d429b22d288cc67ab2b7b982886c3163c87', '3693292d46e91aaf308600dcd7e8f02f6eed2d1766c0df3c4227687e4e8adef14b67cfa4dfa4c83e', 0, '2021-12-17 14:42:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('f106cbab43c29a768954768080f54dbe2b7cc7b8e84e1fbc7cf7c4eaf62c6585d8de72b0d6b02cd7', '17666b4d21b7f207f3585dba454707b27341ace5c3631781b2e0c732ebb5f0836826bd4d282abaeb', 0, '2021-12-21 19:18:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('f4b8d008782aa9d54e7d4ee31db8503ea2b1df4119978cd7c013d627a9b41a4684631b1a5624efdc', '4e966c869ceab624cea1f908ee4a6c1832ca849e2611580b98151c1759f2db1f1d8c8dff5feff127', 0, '2021-12-21 19:30:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('2545c451d5386b03d9bf04a13510c1a575c02915eb64e5b12723433b06f1d9d688b7f1a1d8a10f79', '1ff3538df2f3937db43024cbc55e74ca015eed0ad0c2bc9938a64d7c567352048b25dee0a037b99d', 0, '2021-12-21 19:32:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('57f8ab207a4042cc1b9628566f5c6dce22147e3272ab62c800bf203fe11b8ec7ab8d98aa14458fb8', 'e00ba74f959d3a588070b2471be5bb756d7c92e302050844fe1a3feefe19fb4a6f5594ab87dea2ed', 0, '2021-12-21 21:34:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e249bd3d77c92908f1ed0547568ec1c3d09a9cd6fff9afed59b4d2cf061e038b8a5ef5054634810', '29a67de7ddd805718d92c833fbfc5b590136164179d440f3cf7c18b1fbdc6225dc17029302ed5739', 0, '2021-12-21 21:36:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('9ccb56b58e728fc1b7db71fa996bef21ee1674866ded043749bd5e01fca25771cbb90a3375946071', 'af133b1277f73c670d17668316c0ed84c3b04c5de996f8018f6028d4ec9bc3cea7efd1a10b5557ea', 0, '2021-12-21 21:39:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('ff2d36e522ce93db831533b320b003651891390e40f97676f23285fba450c87dffdccea117e9bf66', '0a71a2ddc33b9faa72d76762450839c5513eb4c61a3b994acb3b4194d1fe521d9d88a0cd7aa75d88', 0, '2021-12-21 21:39:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1bbc7fd259a3e997b067bb1d8dc6b271f01b8ab332e0a62d6691237179dd045f7f3f03bad8380cb', '03e68a9e5bf4ce374a9a32a11a870a8ea2b02cd0b04e0454accdd09abe86f0a3ddf166d41a10409f', 0, '2021-12-21 21:41:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('e9c2725783f165933ffb7fd01f59b14d23beb489696d3c4f0e6c9a75c06791e7da7a5f5bd6d64bd8', '9c581c6d43e59c7dd549403ad5e07899cb108bc0db0f7ba68508f572b8c2ffdc8eb1b2047370ee70', 0, '2021-12-21 21:43:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('fccc04d418e3ba860d1e07cca271bb270518a48f0825f12c7aa87ba905a291038a1807db3cba3efe', '73758853199a01aaba8c5b036f1d30ba17f4d0da2fc9542042b8f79c422152ca2da197d9433db0d8', 0, '2021-12-21 21:47:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('3509feb78d0da4b901a2e23226b9b7f28f84db43242f854b30a437c1546824d2c0c55154c92e504b', 'a3659c224e95cfb9b3a0f0ff9dbd2a5a6195452721009e63fd1e1802dbb20bcd27db58e7997144ff', 0, '2021-12-21 21:48:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('c3da1ad77364969b2509a3501f057aeed7d8bb5264b468db3b5cdb94e403d1a6c5d592abee6af62f', '5a7d584f2c96998f8a5afd14b8aa972d89bb63c8be853fd112362813c987a860beae099d3a96c0d2', 0, '2021-12-21 21:50:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('7203c976e0a594f32b536e194b205e43613129f3ab537073185d569f0a6fe03af81b68d333d16fcb', '3fd438e519dabc89df16abe2e2ed4ddc76328404b777821f70e06188951e79f626a08bdec1c51253', 0, '2021-12-21 21:52:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('67d1c4c3ce68f4aed1f506a571963886a93143107f236d0578ee145b2a0e3cad80b3820d1291fe9c', '70ba7f770a5a6b80a2c28ccd3a32fce23c1f4fe027280237f03921c7cb30dae3f0c2bf801797bf5b', 0, '2021-12-21 21:59:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('ebd617460d32a6d0f1863bcf63c8f16a4c81cf16d8e15f6ea12c465834ac7352b0dfa9d15bc103df', '994bab7d9008418c0f6b029ad0c76654e4bbdfbeb19c1a51c6f34785708be0e72e0e94c8b1d78810', 0, '2021-12-21 22:00:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('619326330a93294458a88e71ad4f7141cdc9117d894c992045fd55c1f321efc1d8f9e2186551806f', '27a5bd552dfff9ddb4dae2531729171c2352238eb269515632c81f6c8b5ccea5bb0325b9a3bf16dc', 0, '2021-12-21 22:03:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('c0ba54913ce0cdec9e795ac28ad6e67097526e7721719dc631c906ef595f23477be1f87ddc7732bf', '4d21855105cb64301eb0e029629d9c4c16132f0364384f32fa734a03f6760407be140cb2f77254bc', 0, '2021-12-21 22:05:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('e9d03a7959fca5444c14ed7eff4d7c56d5d83d335fd23529edc84d78028ad29ef4c6c89034c2b3f7', '891176bf32f1e308d7e09bb2a7e4189c7ea74987e9f091d3352f42092fd05b8ff1961ee7d2500199', 0, '2021-12-21 22:07:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('02c63336cb28860122eade8aa3fc408008b0b3be60628120d54829ebd0934fff23a92b33153a26ee', '8df165291966d3b98bb567619d4ee11c6c7358cca074f656137ba2cd35ece3ee72c64492d5ece0ec', 0, '2021-12-21 22:10:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('849f4e6ba8f4b1e215cd85f298c65ccb913d881042c08fa339500506f7940076712f894501772345', '593421debe240e0bc5876eabc314b5321f57a60347749f78f4b78f5fb953671f59c789e8e709830c', 0, '2021-12-21 22:15:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('a2ab87d1182cc7d39e1452c131242ea5359d9ed1f7cd540385828b7d5869c1d874b00d666e0b52fb', '20fa4e1f842ad2ffefab7832722ccb544a497813992a038ba1e971a5d4e3f3f5e357dc24ac248227', 0, '2021-12-21 22:17:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('90764b1c41595de803a54eaa377bf2ab908c514b03f461dd40f1b7b61328314d1c5d118e6478eead', 'b0eeaeacfe316f40b48b036619bca2d48a2ad22c4bcaba5d9ae99a7a9b2dfa57f31475646da67ed0', 0, '2021-12-21 22:17:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('cf9409cfb693d6c8fa1a950caf273442247b3f9a2dedb3772ad4dd1de63720ae3b504befb3052048', '863bf36f6e33a82b19a80a6a36b53edc6a34f1dbd46553eab44d2be846392d17932e79ad088b60b5', 0, '2021-12-21 22:19:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('2803ec1f88d5eee0f9b085616943e8d4d055cc2935d24247142b949be52eaf9014917956455070da', '067b1b627bd330d6203b113c2ba9973061d86822ad49ea7cac89d98243b9b7709a96a40d33c5d843', 0, '2021-12-21 22:19:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('e8d0bb42ba75fa74b20149f9eb61d9acab9124356a6435755f68dd8a764289cc2edb95c582b61d36', '79276357f48723e2c3e5a2d3db7dacb939f4856e146889aeeec9bee9ed84430e92c0c7af24d827b3', 0, '2021-12-21 22:20:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('9010fa2a82c131310c245b86f822597c22287893da5d25aeefe9c39aa6943a984d00fc4b6bf1cf77', 'c2349b7f1e3fb757708f5d501ff7d492052344449b9499b76f323cdcf3be808362bffd40b3e8c37b', 0, '2021-12-21 22:20:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('dd973a35d2737b08948cb59a87aca1784e1ca3a001701df138443e119bf185518be46d8cfab6a367', '55b477f18142d34ed9510cdcfa0e52293e73250a1272a8be2119c0eceaf77f65b0e0bd85ea0c1684', 0, '2021-12-22 06:42:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('73b0962d455aa24208d1338e4aec5b25e786cb03f3e58d9106a514400c37a8298c27a8bfd3186f9f', 'b7c7ec9d6ff063b0e45127b45c6bcb4471be63869a319d70a9278325b5019c33c647a7df4975d663', 0, '2021-12-22 08:10:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('299e44c8cbbe9864e648657d989666730360b6e87476b14af63a0a33fb8c5e74ccb9894eb1f33804', '29643117863645112910b07bf2e145a98c4988a9d08a4730330891536afd8ad9e09d0210766cddfe', 0, '2021-12-22 08:11:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('1652743a850741f1829e8f4be7676da439987be9ceb4043217f618e00e9bd3c902d1b0d6cc4ff9e5', '6a4fe754167981e5c5542bc3a56838727112d68f7b39fd1df765ec3abd994f9372e6b2bc46b2430b', 0, '2021-12-22 19:38:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('597f7e9f5bb0a7ee095da6774a485208660175ef5c4bf921e5e4a2651390f7611457ac5249c02e52', '2194186fe79d532ce66cef8b35738cdc8c7cf0d9ea54971cb36479fbd5c2d5a48dd21bd9ed8eb97a', 0, '2021-12-23 13:53:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('98f67fa293bc4edde56605c513c1dd2ec2a5d1eca9a603a4490d80780d57da7646d1cf4f9a72a407', 'ed149e800e0995a5392949ceed68207dde40840fdc874039dbbc1196ca2c9af0c0b332cb6136aedd', 0, '2021-12-23 13:55:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('dfa09c9158e46e75a29f16d236041cc2a9a5dd3f5f7f1dc8789d8e3030bdc5895279755aba9d344d', 'cd14977b33d6f82adaf10ec69671d8b4932c3ccd9937abe3c6c6cd27da5842652591a2c43ff3417d', 0, '2021-12-23 13:57:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('e258288947f9fe7fd8e154fe2cd91512862d0e8f0c29a85dee33be7cd47beb057cc96967f13917dc', '2e6079fcb172a3afbbf3e82cfec7f3d873e26a5f8488c9faaaf23389b4160e3dacdb4fb7b2ff2354', 0, '2021-12-23 14:05:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('93fc4ed5c33b6e49eb0db2698664ffe339111840814886df284b626d4b6ad4abd2fae6e4a3af39f3', 'c812ae29c980f5b12905cb7c95e864da8f42ca1e8f04210a81f19b8fb6438b7697c075f32ea8d6ff', 0, '2021-12-23 17:53:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('ea5fe99359b95ac5a9aeec296f62d4148e5a01852e7ec1ffdf8bf7e7ecf9774bd8576635e0006811', '10e461015ca5d6c7314ba10cdd29c4511cf9b90c1bdd85e3fae3aac1c9413f7d534d426d17333248', 0, '2021-12-23 17:53:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('741c689772f376b3c23e06f8d97f2fd3884fa785fb6636c2a3a0f9a3a7a80f527cc64cf67d17940a', 'dafcd8cbe956ed3a3a1a70cdf7fc5b4ff291f885b736120790d104478bacae8a4f30d063975717f7', 0, '2021-12-24 15:51:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('b240dc09c699bc13f8dbcdd498892917430f89744355c7b1759eebbaeffddfbdeaeda8cb0a4187f1', '5b3c77a2fa608e139ba2cb45e95d0a8eca70e655f65c1d1c4baf1393b1883d7d0e8f7d4315b64d13', 0, '2021-12-31 19:47:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('0d702b31822bab55ddee60863711e877a4b44dcbf66be761e88f64edf671227574488829d1c7c1f8', '164bc199f9bb12905f9d744540a3f40b941be411ca451f1c139eb4444b6d41a9f9e8970fa9976b2f', 0, '2022-01-02 15:47:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('3e6afa028b9651e7443def5d8ea8bd67fc11373c09925cbb9bffb286324c1a7cf961abd5ac8a4a42', 'a1cee3a3172656863d7d36cd431e138d916fa04a53cdd6d383db0caf7607b2f44edc68c67dcd22f4', 0, '2022-01-03 10:13:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('6f6a226ba3e22b1247144c07ad6fbd6e879586d6b96441a55c91918ae4e50a6510efa298d490da52', 'de396cbb32b307c3c6d8b47c91d9e340bd4900431dfc8d2d6278123c1c74bfc49911eb2874d3b12b', 0, '2022-01-03 20:16:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('e0d08e2ea22341ac0e9b0ad580ae65f6750fabe4fb2866eb9c87356d0cae62c1026f6f4e58ff7bf5', '956dff274fc4df470194b4c55e888d815ff4cb3e7178de7293cb9a74b19138ef049cd72c436c4df8', 0, '2022-01-10 21:46:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('1254d1ef469e92a768e55f342855c96cb66a0d403266040be2a0423a92a9522b22b644be5ee94280', '096908cdd83ab50cfe283b1d02b87e6d76c47a021223e79f5f27a1fa01cc2ffb3e664e918967ee0c', 0, '2022-01-11 12:35:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ff2c877d2cb9d21eacd407d111b37fdf348153454b66d958177af16973e56d4ceba6647ae7cdcbd', '5d3226b700bd37bcf711c3fbec49d220a6f30b802d088ce0808dac678a5d249230f7d9f54d93b3d3', 0, '2022-01-11 13:02:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('6c032a137324bda69415e33050746b111fd9c21a3e93373709f450cc8a52289f6a5446df0633d611', '992da1603a5b2923d8d5a33528a406fdb151f3a30a1537e0eb0b3438399b1d6d98506e1822a29b82', 0, '2022-01-11 13:04:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('e7d976cd2c2ef3c074f66b93d3e7953893821c2b4a139e15948cdb27871ab9ce2e6e7126158be6bd', 'c08671c4792b9621db9a7719b1511c8173d30bf6b07c4e234bcd8bcb9034ba12052b3b863969e3b9', 0, '2022-01-11 13:04:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('606aaa65ef6135d403a8fc7d479fcd0de327f6594967a8e97820f767b376615b51638ac1bb5955bf', '466b23a9ee2144c5909035c6bcb49c83361c630dc7204fc65ecfa981dc60ed83e72b48cfedb1c5b2', 0, '2022-01-11 13:49:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('2de336b95729f8db0aaa044b059a462a9b5b043a284b786392e942b2facf3e995bf69c131f02eded', 'b94d9e76c03811c9beb56fc363d34e2798df798930cf055b5e240a530bc9601f17aee3e9998b8447', 0, '2022-01-11 14:05:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('2348a2b72fd67853e79ca4c0887ebb4d2502ccf6ef9c1a19845501a8d17fe831c42b182c8bdeb1d9', 'f689a2bd95ca40d17ddb8f541c4068e0663924eda7ca5c951c58dac9ad8b8fa2e02ea3a98fb3c428', 0, '2022-01-11 14:05:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('b7f0953c696b4dcfa2c9faaedabc76f54508eb6c515d6930e1f2bbc6f3a5dbc0cafe24a0b4525605', 'a68eb069aab7d24ff6cd2835384e4e7ba3bedcc4a8a88869e93cd67b690741e7a4cf2393f3669c77', 0, '2022-01-11 14:31:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('0d316f5550ca8a4dcd1e9d950a461a36febc05c5a3d741274d21791b37f9be4d0ac4b9bcec9e6a90', '4f0df1ceb5f1c5c5c191f1e3cf730e1a578ab9c5022209c57e5eb23f00420cb0a8bf8314ebe1232a', 0, '2022-01-11 14:34:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('25234a0a88b6ee5538a945b4fcb746c0b81c227157417a45326a1968042c8984be4138da9c859dbe', '2ba4c318cb91cd0cbfea9e49aaf42ccf9f3bda6dbe47d1472f928761d749518cf1c5672f13d43c37', 0, '2022-01-11 14:40:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('192ae8b3cfd5fa185cdcf6af5f269495592e0cda5a7238983a5ace0b31869a7a509eed2ac0e03344', '3b57be2a541c77d5561d23f8ef8ca8ffc7ebcc8c191c5c89d0bf503a56742d562c708ef2ed155fe5', 0, '2022-01-11 14:41:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('b4ddc95e19b0b0291b042ca553e81951a68b243b6cf647148fb04016ebc5cd52adcb382796874214', '71b99749d5c93c03a9908453aa1aed852dc79e9dc050ebf3ad2c9591c762e2e8e59a6f5d9979cac5', 0, '2022-01-11 17:56:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('32c0d429a6ccac6a1256afec7269bf1964cc0a32a183468c0629b56f7ba6ba6b77ba9ab684859076', '9b3bc943fe579a351466026e3b043acad7ecf1d2fcc30e342c4fbced51797e69559aa2cbc0cbe320', 0, '2022-01-11 21:59:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('795429c113e7811506278e71f8f8ae3efad7bf9b197eefdee5d80ac654660e6c04e9482e0fed200d', 'c605c7d06a20ca76aee7f9b4732c8322e01b9e9466521e9fc8c868914d4374c6973b071726f418d0', 0, '2022-01-12 14:02:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('e46d46c53e5243d29a8203b77c9b082db374ab45572973a25318ec7db37f4e07a0c1e5a0d4962cc6', '827f68d2f05a39c203ee38b554440fdf4bcd90ebbb89459b2913bb1dc6456f46e9a07d25ae7a4396', 0, '2022-01-12 14:02:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('e83936214ae4f3cb250b06216e1146c4bbbb680b001dfd7c575b4b7de21513eb5cfaa663aadfa879', '10398fba867523670fdae40697f64e2649d87c0f8b7e61e8db898f0b7453bc6878e269121266191a', 0, '2022-01-12 14:10:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('1eb66e882416297f4a436b7604e49d24be3115c3af29a03cfce097a79f897dbb52ab5ceb1061d137', '5d1cbc6aa11153beae8b7979c6789ae68bc89f63ed997b16d36e37aa7572a9d202c8ab25b60d643c', 0, '2022-01-12 14:11:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('ef341708b42fe612583e6d0a779dfee7399387214bffca41d9450218164eff595caa5eaf3f6decbc', 'e25febc3594f63310d12990de07c8fa6e0095a5b390f93a20a461d925bdb2e8d4ff3dd0111b84a3c', 0, '2022-01-12 14:12:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('297c3bf00d0993c4e8933595fef0f4a1ac452cef1bee3fe09dc831d0bc687dff932423c32e014f60', '269c626028bb6b8c03c429ff55a16610df83c0ce65bd48ea7dae98f2e0c137a163bc53d723baa904', 0, '2022-01-12 14:12:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('742606c8d715aea14e275b68b26898a06a59685f2b8233c97600f82ae272686dabaecca27c5b1941', '024cfa21b37aca9a242cbea303d7bba141268c82fc4fb5c42b4921c10785a3c7dd09fedbc4552a91', 0, '2022-01-12 14:13:01');
INSERT INTO `oauth_refresh_tokens` VALUES ('a87ddfa3d4143aacb3eba5a72fccc0a9120144e9f5389b35427ceef4d29f3b59813534cff4fe9904', '745b0f7a6c70351125b5b67128d99a66ef2f06f987ad099175a6a93a339ab461fc700607c5caceb1', 0, '2022-01-12 14:14:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('9cb7abeada031f90bb1f770b2fa5f998787c3953d7d19b4d9ff6990deb81bafdda977d09636f3b91', 'dc190422dc063e04d4e4f8c9765ee3fe4223528c554402c4470930c5f221747be80f8e3ee4f9f345', 0, '2022-01-12 14:14:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('3586ef79c01a67c63edca18633c186723e6ddba58d1ac0922950c1e8e9041564389c3709480efe20', '9b31493274b6452ef00fee131d0c1b49edfc4c49f2c0d5df1a2e980a3224a5203720767e507f8083', 0, '2022-01-12 14:17:21');
INSERT INTO `oauth_refresh_tokens` VALUES ('b5c3de2d0c8951b8300fff3d148cb9afa236d857820de178b89678f8d1a29643fdaae3e592a096dc', '48dff95ce74b88efd778b722b4cbf5a99ac5a33411d5ee0503e01f2d1bf1c39635d24db1edff30aa', 0, '2022-01-12 14:39:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('6dc77e0d2a5587a029dc8a52c7764a08e184ed54f6290befeac9852aaf7152e8626b609393bffe22', '55ca6d5c37f53ccc7f137a5ed3697acbff3e2d2723f4149bdec0337eb506291495d4e03f08537b25', 0, '2022-01-12 14:41:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('ac30fa19f2647d7ae463c2db2267de4301088e77118ea473f89fd94d52ae6f951d9b6d445d6dbfdd', '060d57ed920de01e11b79bd49fcf2c83490c84ece590c1d5cbe7b5d6db826296fa6257deb0b63041', 0, '2022-01-12 16:56:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('752755a0b4c625020c2c04a3e8abb0ee71b9f2cdc3d6db3159cc176157b74c0303ea44df3a8f7a84', 'c0a5da28d73092c9bb3cedda7bb02210ad8e43e7a94a68104e73cdd18bf977edc43f73ec7ce4ea3b', 0, '2022-01-12 18:02:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('431b2b6b95dc8af5a4b46061f810bb0c17d22f02602ad711561ad41def945d7ea49172c9730e5b6f', 'ee2971641ce3aa59789df40c403b1a006dd40a2d96fffa215b0a405a7aadc2119f898bad005c5865', 0, '2022-01-17 13:46:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('f4b7a6a95d38f9eb74d6d6437dd256528960c9229135eb7a4f64aeb7696dab6b1b0308f01560d079', '68493843fd741bdc98460b0825e19a0b33676ffd5c41537a874575279f53aca1185c5bc944f4219c', 0, '2022-01-18 23:11:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('b6fe7b9898f902f93607b676c8aa5ed2afe3024d0e115ce21ad7a0e30fa8e2d90381fce9de464dc6', '2ab22a3ae3c26d551a3334e425a72325a8d4eb346577a759ec0b5547ed62b7ab7d80764f5653f62f', 0, '2022-01-19 20:33:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('0de7435f268d1ab0c32bf08b4813cdef9441ded7855820dc5c2369540df08c003bacf313d1d9fdd3', 'c8a466d215f25162280e2dff13afe828629438cb5a142d3d6da2e8fbc48016aad6bf08a9f5acd738', 0, '2022-01-24 23:06:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd085d3c54b4408ed9e25b3602e7174b29fa63c5a6fb8d9fd899b8639255eafe1210f57ada1d2832', '2d001d86223fe4876789e64f86df67ef4dd2671cae3c99cbe4da32fe1ddf2933a4c77f59dfa4ef5b', 0, '2022-01-26 13:58:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('ba5221403c8d6d34c7af8a85c00c949d21dc728e2a97770f9056efc37b6e4e74d6ebe545b1d44d72', '64369acd371798a898f938e916b0b61f41e0bd3c2d4d30dbebc88695e7fa7c90b7bf9ae83fb967bb', 0, '2022-01-26 17:32:22');

-- ----------------------------
-- Table structure for oauths
-- ----------------------------
DROP TABLE IF EXISTS `oauths`;
CREATE TABLE `oauths`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `model_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User' COMMENT '模型名称',
  `oauth_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User' COMMENT '第三方平台',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '第三方昵称',
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '普通用户性别，1 为男性，2 为女性',
  `headimgurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `openid` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信单一平台指定标识',
  `unionid` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信平台唯一标识',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauths
-- ----------------------------

-- ----------------------------
-- Table structure for order_comments
-- ----------------------------
DROP TABLE IF EXISTS `order_comments`;
CREATE TABLE `order_comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `score` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 5.00 COMMENT '综合评分',
  `agree` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 5.00 COMMENT '描述相符',
  `service` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 5.00 COMMENT '服务态度',
  `speed` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 5.00 COMMENT '发货速度',
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '回复内容',
  `reply_time` timestamp NOT NULL DEFAULT '2021-12-22 23:48:31' COMMENT '回复时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片逗号隔开',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_comments
-- ----------------------------
INSERT INTO `order_comments` VALUES (1, 6, 0, 1, 1, 5.00, 5.00, 5.00, 5.00, '1dsa', '2021-12-31 16:07:29', '1sdasdasdsadsad', '/storage/avatar/2021-12-24/9JpHKKkdPPfWnwgFa2dSh9rV9TvHokOVA9eW5z6x.jpg,/storage/avatar/2021-12-24/9JpHKKkdPPfWnwgFa2dSh9rV9TvHokOVA9eW5z6x.jpg', '2021-12-23 21:56:31', '2021-12-31 16:07:29', NULL);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `sku_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SKUID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `goods_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片',
  `sku_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SKU 名称',
  `buy_num` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  `total_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总价格',
  `goods_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `total_weight` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总重量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (1, 1, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2021-12-27 16:00:21', '2021-12-27 16:00:21', NULL);
INSERT INTO `order_goods` VALUES (2, 2, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2021-12-27 18:10:22', '2021-12-27 18:10:22', NULL);
INSERT INTO `order_goods` VALUES (3, 3, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2021-12-27 18:28:32', '2021-12-27 18:28:32', NULL);
INSERT INTO `order_goods` VALUES (4, 4, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2021-12-30 17:36:49', '2021-12-30 17:36:49', NULL);
INSERT INTO `order_goods` VALUES (5, 5, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:24:41', '2022-01-06 00:24:41', NULL);
INSERT INTO `order_goods` VALUES (6, 6, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:26:13', '2022-01-06 00:26:13', NULL);
INSERT INTO `order_goods` VALUES (7, 7, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:26:50', '2022-01-06 00:26:50', NULL);
INSERT INTO `order_goods` VALUES (8, 8, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:30:25', '2022-01-06 00:30:25', NULL);
INSERT INTO `order_goods` VALUES (9, 9, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:31:29', '2022-01-06 00:31:29', NULL);
INSERT INTO `order_goods` VALUES (10, 10, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:33:13', '2022-01-06 00:33:13', NULL);
INSERT INTO `order_goods` VALUES (11, 11, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:33:36', '2022-01-06 00:33:36', NULL);
INSERT INTO `order_goods` VALUES (12, 12, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:39:36', '2022-01-06 00:39:36', NULL);
INSERT INTO `order_goods` VALUES (13, 13, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:41:12', '2022-01-06 00:41:12', NULL);
INSERT INTO `order_goods` VALUES (14, 14, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:41:57', '2022-01-06 00:41:57', NULL);
INSERT INTO `order_goods` VALUES (15, 15, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 00:42:37', '2022-01-06 00:42:37', NULL);
INSERT INTO `order_goods` VALUES (16, 16, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 01:24:56', '2022-01-06 01:24:56', NULL);
INSERT INTO `order_goods` VALUES (17, 17, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 01:25:32', '2022-01-06 01:25:32', NULL);
INSERT INTO `order_goods` VALUES (18, 18, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 1, 2.00, 2.00, 3.00, '2022-01-06 13:46:00', '2022-01-06 13:46:00', NULL);
INSERT INTO `order_goods` VALUES (19, 19, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 5, 10.00, 2.00, 15.00, '2022-01-06 13:51:13', '2022-01-06 13:51:13', NULL);
INSERT INTO `order_goods` VALUES (20, 20, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 10, 20.00, 2.00, 30.00, '2022-01-06 13:58:01', '2022-01-06 13:58:01', NULL);
INSERT INTO `order_goods` VALUES (21, 21, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 5, 10.00, 2.00, 15.00, '2022-01-06 13:59:59', '2022-01-06 13:59:59', NULL);
INSERT INTO `order_goods` VALUES (22, 23, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 5, 10.00, 2.00, 15.00, '2022-01-06 14:06:50', '2022-01-06 14:06:50', NULL);
INSERT INTO `order_goods` VALUES (23, 24, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 5, 10.00, 2.00, 15.00, '2022-01-06 14:08:38', '2022-01-06 14:08:38', NULL);
INSERT INTO `order_goods` VALUES (24, 25, 1, 1, 6, 1, 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', '打算', 5, 10.00, 2.00, 15.00, '2022-01-06 14:11:05', '2022-01-06 14:11:05', NULL);

-- ----------------------------
-- Table structure for order_pays
-- ----------------------------
DROP TABLE IF EXISTS `order_pays`;
CREATE TABLE `order_pays`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属用户',
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单名称',
  `pay_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `order_ids` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单IDs',
  `trade_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方订单号',
  `payment_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付平台',
  `device` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备',
  `is_recharge` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '充值',
  `total` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '金额',
  `balance` decimal(9, 2) NOT NULL DEFAULT 0.00 COMMENT '支付余额',
  `pay_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付状态',
  `pay_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_pays
-- ----------------------------
INSERT INTO `order_pays` VALUES (1, 6, '', '20211227173054612082', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:30:54', '2021-12-27 17:30:54', '2021-12-27 17:30:54', NULL);
INSERT INTO `order_pays` VALUES (2, 6, '', '20211227173203654353', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:32:03', '2021-12-27 17:32:03', '2021-12-27 17:32:03', NULL);
INSERT INTO `order_pays` VALUES (3, 6, '', '20211227173209667341', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:32:09', '2021-12-27 17:32:09', '2021-12-27 17:32:09', NULL);
INSERT INTO `order_pays` VALUES (4, 6, '', '20211227173310681359', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:33:10', '2021-12-27 17:33:10', '2021-12-27 17:33:10', NULL);
INSERT INTO `order_pays` VALUES (5, 6, '', '20211227173330638649', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:33:30', '2021-12-27 17:33:30', '2021-12-27 17:33:30', NULL);
INSERT INTO `order_pays` VALUES (6, 6, '', '20211227173439644986', '1', '', 'balance', 'web', 0, 2.00, 0.00, 0, '2021-12-27 17:34:39', '2021-12-27 17:34:39', '2021-12-27 17:34:39', NULL);
INSERT INTO `order_pays` VALUES (7, 6, '', '20211227174406683282', '1', '', 'balance', 'web', 0, 2.00, 0.00, 1, '2021-12-27 17:44:06', '2021-12-27 17:44:06', '2021-12-27 17:44:06', NULL);
INSERT INTO `order_pays` VALUES (8, 6, '', '20211227180811678201', '1', '', 'balance', 'web', 0, 2.00, 0.00, 1, '2021-12-27 18:08:11', '2021-12-27 18:08:11', '2021-12-27 18:08:11', NULL);
INSERT INTO `order_pays` VALUES (9, 6, '', '20211227182508641877', '2', '', 'balance', 'web', 0, 2.00, 0.00, 1, '2021-12-27 18:25:08', '2021-12-27 18:25:08', '2021-12-27 18:25:08', NULL);
INSERT INTO `order_pays` VALUES (10, 6, '', '20211230145616656687', '2', '', 'balance', 'web', 0, 2.00, 2.00, 1, '2021-12-30 14:56:16', '2021-12-30 14:56:16', '2021-12-30 14:56:16', NULL);
INSERT INTO `order_pays` VALUES (11, 6, '', '20211230163612632458', '1', '', 'balance', 'web', 0, 2.00, 2.00, 1, '2021-12-30 16:36:12', '2021-12-30 16:36:12', '2021-12-30 16:36:12', NULL);
INSERT INTO `order_pays` VALUES (12, 6, '', '20211231143318627809', '4', '', 'balance', 'web', 0, 2.00, 2.00, 1, '2021-12-31 14:33:18', '2021-12-31 14:33:18', '2021-12-31 14:33:18', NULL);
INSERT INTO `order_pays` VALUES (13, 6, '', '20220106004205626881', '14', '', 'balance', 'web', 0, 2.00, 2.00, 1, '2022-01-06 00:42:05', '2022-01-06 00:42:05', '2022-01-06 00:42:05', NULL);
INSERT INTO `order_pays` VALUES (14, 6, '', '20220106004242693144', '15', '', 'balance', 'web', 0, 2.00, 2.00, 1, '2022-01-06 00:42:42', '2022-01-06 00:42:42', '2022-01-06 00:42:42', NULL);
INSERT INTO `order_pays` VALUES (15, 6, '', '20220106134648675631', '18', '', 'balance', 'web', 0, 1.98, 1.98, 1, '2022-01-06 13:46:48', '2022-01-06 13:46:48', '2022-01-06 13:46:48', NULL);
INSERT INTO `order_pays` VALUES (16, 6, '', '20220106141135626401', '25', '', 'wechat_scan', 'web', 0, 32.90, 0.00, 0, '2022-01-06 14:11:35', '2022-01-06 14:11:35', '2022-01-06 14:11:35', NULL);
INSERT INTO `order_pays` VALUES (17, 6, '', '20220106141143639302', '25', '', 'ali_scan', 'web', 0, 32.90, 0.00, 0, '2022-01-06 14:11:43', '2022-01-06 14:11:43', '2022-01-06 14:11:43', NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `coupon_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券日志ID',
  `collective_id` int(11) NOT NULL DEFAULT 0 COMMENT '拼团日志ID',
  `order_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `order_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单标题',
  `order_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单图片',
  `total_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总支付金额',
  `order_price` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '订单计算金额',
  `order_balance` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额支付金额',
  `freight_money` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '运费金额',
  `coupon_money` decimal(5, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '优惠金额',
  `order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单支付 0 取消 1 等待支付 2等待发货 3确认收货 4等待评论 5售后 6订单完成',
  `refund_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 退款 1退货 2 处理结束',
  `is_settlement` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否结算',
  `delivery_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递订单号',
  `delivery_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `receive_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人名',
  `receive_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收件人手机',
  `receive_area` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址信息',
  `receive_address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细地址信息',
  `payment_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方式',
  `pay_time` timestamp NOT NULL DEFAULT '2021-12-27 15:59:37' COMMENT '支付时间',
  `delivery_time` timestamp NOT NULL DEFAULT '2021-12-27 15:59:37' COMMENT '发货时间',
  `receipt_time` timestamp NOT NULL DEFAULT '2021-12-27 15:59:37' COMMENT '确认收货时间',
  `comment_time` timestamp NOT NULL DEFAULT '2021-12-27 15:59:37' COMMENT '评论时间',
  `remark` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 6, 1, 0, 0, '20211227160021678520', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '122222544', '张三', '18888888888', '河北省 淄博市', '面馆', 'balance', '2021-12-30 16:36:12', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '4444', '2021-12-27 16:00:21', '2021-12-31 13:55:39', NULL);
INSERT INTO `orders` VALUES (2, 6, 1, 0, 0, '20211227181022673522', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 6, 2, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', 'balance', '2021-12-30 14:56:16', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', 'dfsadas', '2021-12-27 18:10:22', '2021-12-31 13:54:22', NULL);
INSERT INTO `orders` VALUES (3, 6, 1, 0, 0, '20211227182832656049', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 0, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2021-12-27 18:28:32', '2021-12-30 14:08:39', NULL);
INSERT INTO `orders` VALUES (4, 6, 1, 0, 0, '20211230173649690847', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 6, 2, 0, '', '', '张三', '18888888887', '河北省 淄博市', '面馆', 'balance', '2021-12-31 14:33:18', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2021-12-30 17:36:49', '2021-12-31 15:22:54', NULL);
INSERT INTO `orders` VALUES (5, 6, 1, 1, 0, '20220106002441611533', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:24:41', '2022-01-06 00:24:41', NULL);
INSERT INTO `orders` VALUES (6, 6, 1, 1, 0, '20220106002613670342', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:26:13', '2022-01-06 00:26:13', NULL);
INSERT INTO `orders` VALUES (7, 6, 1, 1, 0, '20220106002650610854', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:26:50', '2022-01-06 00:26:50', NULL);
INSERT INTO `orders` VALUES (8, 6, 1, 1, 0, '20220106003025664222', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:30:25', '2022-01-06 00:30:25', NULL);
INSERT INTO `orders` VALUES (9, 6, 1, 1, 0, '20220106003129686598', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:31:29', '2022-01-06 00:31:29', NULL);
INSERT INTO `orders` VALUES (10, 6, 1, 1, 0, '20220106003313686080', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:33:13', '2022-01-06 00:33:13', NULL);
INSERT INTO `orders` VALUES (11, 6, 1, 1, 0, '20220106003336647643', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:33:36', '2022-01-06 00:33:36', NULL);
INSERT INTO `orders` VALUES (12, 6, 1, 1, 0, '20220106003936689729', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:39:36', '2022-01-06 00:39:36', NULL);
INSERT INTO `orders` VALUES (13, 6, 1, 1, 0, '20220106004112650140', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:41:12', '2022-01-06 00:41:12', NULL);
INSERT INTO `orders` VALUES (14, 6, 1, 0, 1, '20220106004157646276', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', 'balance', '2022-01-06 00:42:05', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:41:57', '2022-01-06 00:42:05', NULL);
INSERT INTO `orders` VALUES (15, 6, 1, 0, 2, '20220106004237663529', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', 'balance', '2022-01-06 00:42:42', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 00:42:37', '2022-01-06 00:42:42', NULL);
INSERT INTO `orders` VALUES (16, 6, 1, 0, 0, '20220106012456630403', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 01:24:56', '2022-01-06 01:24:56', NULL);
INSERT INTO `orders` VALUES (17, 6, 1, 0, 3, '20220106012532635478', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 2.00, 2.00, 0.00, 0.00, 0.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 01:25:32', '2022-01-06 01:25:32', NULL);
INSERT INTO `orders` VALUES (18, 6, 1, 0, 0, '20220106134600684097', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 1.98, 2.00, 0.00, 0.00, 0.02, 2, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', 'balance', '2022-01-06 13:46:48', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 13:46:00', '2022-01-06 13:46:48', NULL);
INSERT INTO `orders` VALUES (19, 6, 1, 2, 0, '20220106135113645086', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 9.00, 10.00, 0.00, 0.00, 1.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 13:51:13', '2022-01-06 13:51:13', NULL);
INSERT INTO `orders` VALUES (20, 6, 1, 2, 0, '20220106135801693486', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 19.00, 20.00, 0.00, 0.00, 1.00, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 13:58:01', '2022-01-06 13:58:01', NULL);
INSERT INTO `orders` VALUES (21, 6, 1, 2, 0, '20220106135959625662', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 9.00, 10.00, 0.00, 0.00, 1.00, 0, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 13:59:59', '2022-01-06 14:05:23', NULL);
INSERT INTO `orders` VALUES (22, 6, 1, 2, 0, '20220106140541669618', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 14:05:41', '2022-01-06 14:07:02', NULL);
INSERT INTO `orders` VALUES (23, 6, 1, 2, 0, '20220106140650657658', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 8.90, 10.00, 0.00, 0.00, 1.10, 0, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 14:06:50', '2022-01-06 14:07:09', NULL);
INSERT INTO `orders` VALUES (24, 6, 1, 2, 0, '20220106140838691161', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 31.90, 10.00, 0.00, 23.00, 1.10, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 14:08:38', '2022-01-06 14:08:38', NULL);
INSERT INTO `orders` VALUES (25, 6, 1, 0, 0, '20220106141105669403', 'as2', '/storage/goods/2021-12-22/nhWfKVZqi3AXV3hCWtk5GBxuYjuh8DADOuKBduR1_150.png', 32.90, 10.00, 0.00, 23.00, 0.10, 1, 0, 0, '', '', '张三', '18888888888', '河北省 淄博市', '面馆', '', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '2021-12-27 15:59:37', '', '2022-01-06 14:11:05', '2022-01-06 14:11:05', NULL);

-- ----------------------------
-- Table structure for refunds
-- ----------------------------
DROP TABLE IF EXISTS `refunds`;
CREATE TABLE `refunds`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `refund_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '售后类型 0 退款 1退货',
  `refund_verify` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '售后状态 0 处理中 1同意 2拒绝',
  `refund_step` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '售后步骤  0等待用户填写单号 1等待商家 2商家确定收货并发货 3用户确定收货订单成功',
  `delivery_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递订单号',
  `delivery_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `re_delivery_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商家快递订单号',
  `re_delivery_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商家快递公司编码',
  `refund_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '售后原因',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `refuse_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '拒绝原因',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refunds
-- ----------------------------
INSERT INTO `refunds` VALUES (1, 6, 1, 2, 0, 1, 3, '', '', '', '', '其他原因', '', '', '2021-12-30 16:08:39', '2021-12-31 13:54:22', NULL);
INSERT INTO `refunds` VALUES (2, 6, 1, 4, 1, 1, 3, '45646545664', '', '888888888', '', '物品破损', '', '', '2021-12-31 14:33:28', '2021-12-31 15:22:54', NULL);

-- ----------------------------
-- Table structure for seckills
-- ----------------------------
DROP TABLE IF EXISTS `seckills`;
CREATE TABLE `seckills`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `discount` decimal(6, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '折扣',
  `start_time` timestamp NOT NULL DEFAULT '2021-12-30 14:17:16' COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT '2022-01-04 14:17:16' COMMENT '结束',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of seckills
-- ----------------------------
INSERT INTO `seckills` VALUES (1, 1, 1, 1.00, '2022-01-01 00:00:00', '2022-01-06 21:04:35', '2022-01-03 21:04:35', '2022-01-03 21:04:35', NULL);

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '签名名称',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '签名模板',
  `content` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '签名内容',
  `description` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms
-- ----------------------------
INSERT INTO `sms` VALUES (1, 'register', 'SMS_135030478', '推流码', '', '2021-11-27 19:30:27', '2021-11-27 19:30:27', NULL);
INSERT INTO `sms` VALUES (2, 'sdf', 'dsf', 'sdf', '', '2021-11-27 19:31:54', '2021-11-27 19:33:11', NULL);
INSERT INTO `sms` VALUES (3, 'xxx', 'xxx', 'xx', '', '2021-11-27 19:33:20', '2021-11-27 19:33:20', NULL);
INSERT INTO `sms` VALUES (4, 'asd', 'asd', 'asd', '', '2021-11-27 19:35:38', '2021-11-27 19:35:41', NULL);

-- ----------------------------
-- Table structure for sms_logs
-- ----------------------------
DROP TABLE IF EXISTS `sms_logs`;
CREATE TABLE `sms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `content` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '发送内容',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发送状态',
  `error_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '错误信息',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0' COMMENT '操作IP',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_logs
-- ----------------------------
INSERT INTO `sms_logs` VALUES (1, '15073010917', 'register', '4064', 0, 'Client error: `GET http://dysmsapi.aliyuncs.com?RegionId=cn-hangzhou&Format=JSON&SignatureMethod=HMAC-SHA1&SignatureVersion=1.0&SignatureNonce=61a234a98c683&Timestamp=2021-11-27T13%3A37%3A45Z&Action=SendSms&Version=2017-05-25&PhoneNumbers=15073010917&SignName=%E6%8E%A8%E6%B5%81%E7%A0%81&TemplateCode=SMS_135030478&TemplateParam=%7B%22code%22%3A4064%7D&Signature=54OeuA41pw%2BvMl%2F8XTRs8SgRSU4%3D` resulted in a `400 Bad Request` response:\n{\"RequestId\":\"BCF392D1-7A8F-5D20-807D-1B3CF5FCC901\",\"Message\":\"AccessKeyId is mandatory for this action.\",\"Recommend\":\"h (truncated...)\n', '127.0.0.1', '2021-11-27 21:37:45', '2021-11-27 21:37:45', NULL);
INSERT INTO `sms_logs` VALUES (2, '15073010917', 'register', '4868', 0, 'Client error: `GET http://dysmsapi.aliyuncs.com?RegionId=cn-hangzhou&Format=JSON&SignatureMethod=HMAC-SHA1&SignatureVersion=1.0&SignatureNonce=61a234fa8140e&Timestamp=2021-11-27T13%3A39%3A06Z&Action=SendSms&Version=2017-05-25&PhoneNumbers=15073010917&SignName=%E6%8E%A8%E6%B5%81%E7%A0%81&TemplateCode=SMS_135030478&TemplateParam=%7B%22code%22%3A4868%7D&Signature=MsxNS6bZmI7TbadHVqqEfWotkHI%3D` resulted in a `400 Bad Request` response:\n{\"RequestId\":\"C2C6B1EF-A43C-56F2-B65E-A2BBCB456AE3\",\"Message\":\"AccessKeyId is mandatory for this action.\",\"Recommend\":\"h (truncated...)\n', '127.0.0.1', '2021-11-27 21:39:06', '2021-11-27 21:39:06', NULL);
INSERT INTO `sms_logs` VALUES (3, '15073010917', 'register', '9889', 0, 'Client error: `GET http://dysmsapi.aliyuncs.com?RegionId=cn-hangzhou&Format=JSON&SignatureMethod=HMAC-SHA1&SignatureVersion=1.0&SignatureNonce=61af40c0cb2e6&Timestamp=2021-12-07T11%3A08%3A48Z&Action=SendSms&Version=2017-05-25&PhoneNumbers=15073010917&SignName=%E6%8E%A8%E6%B5%81%E7%A0%81&TemplateCode=SMS_135030478&TemplateParam=%7B%22code%22%3A9889%7D&Signature=G%2BnPvovrKQAKa7Fanw9PJRPsC7I%3D` resulted in a `400 Bad Request` response:\n{\"RequestId\":\"432FD552-F808-5A52-92C0-94B05F200004\",\"Message\":\"AccessKeyId is mandatory for this action.\",\"Recommend\":\"h (truncated...)\n', '127.0.0.1', '2021-12-07 19:08:48', '2021-12-07 19:08:48', NULL);
INSERT INTO `sms_logs` VALUES (5, '15073010917', 'register', '7427', 1, 'Client error: `GET http://dysmsapi.aliyuncs.com?RegionId=cn-hangzhou&Format=JSON&SignatureMethod=HMAC-SHA1&SignatureVersion=1.0&SignatureNonce=61af464c70f42&Timestamp=2021-12-07T11%3A32%3A28Z&Action=SendSms&Version=2017-05-25&PhoneNumbers=15073010917&SignName=%E6%8E%A8%E6%B5%81%E7%A0%81&TemplateCode=SMS_135030478&TemplateParam=%7B%22code%22%3A7427%7D&Signature=ewrk6vBOa6lCXEPAIEUR1ZPvWvw%3D` resulted in a `400 Bad Request` response:\n{\"RequestId\":\"40B8A3CD-24DF-5FA0-AB33-3573CC0B3038\",\"Message\":\"AccessKeyId is mandatory for this action.\",\"Recommend\":\"h (truncated...)\n', '127.0.0.1', '2021-12-07 19:32:28', '2021-12-07 19:32:28', NULL);

-- ----------------------------
-- Table structure for store_classes
-- ----------------------------
DROP TABLE IF EXISTS `store_classes`;
CREATE TABLE `store_classes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `class_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目ID',
  `class_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_classes
-- ----------------------------
INSERT INTO `store_classes` VALUES (1, 1, '[[\"2\",\"8\",\"26\"],[\"2\",\"8\",\"27\"],[\"2\",\"8\",\"28\"]]', '', NULL, '2021-12-29 15:35:07', NULL);

-- ----------------------------
-- Table structure for stores
-- ----------------------------
DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `store_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '神秘商户' COMMENT '商户名称',
  `store_logo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺LOGO',
  `store_face_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺门面',
  `store_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺电话',
  `store_description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '该商户很懒，什么也没留下' COMMENT '店铺描述',
  `store_slide` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺幻灯片',
  `store_mobile_slide` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '店铺app幻灯片',
  `store_company_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '公司名称',
  `province_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '省ID',
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '市ID',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '区ID',
  `store_lat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '39.92' COMMENT '纬度',
  `store_lng` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '116.46' COMMENT '经度',
  `area_info` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地区信息',
  `store_address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `business_license` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '营业执照',
  `business_license_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '营业执照号码',
  `legal_person` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '法人',
  `store_phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '法人电话',
  `id_card_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '身份证号码',
  `id_card_t` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '身份证上',
  `id_card_b` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '身份证下',
  `emergency_contact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '紧急联系人',
  `emergency_contact_phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '紧急联系人电话',
  `store_money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '账号余额',
  `store_frozen_money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '账号冻结资金',
  `store_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '店铺状态',
  `store_verify` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '店铺审核状态',
  `store_refuse_info` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '拒绝原因',
  `after_sale_service` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '售后服务',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stores
-- ----------------------------
INSERT INTO `stores` VALUES (1, 6, '神秘商户', '/storage/store_logo/2021-12-08/qfhUXnFojC4VWYAO0laiOMAYppWbchfovO9X1DTR.png', '/storage/store_face/2021-12-19/vZug2Wh3P0cY4oB43Np0Hds1d7r5edo0tcx24Mfr.png', '18888888888', '该商户很懒，什么也没留下', '[\"\\/storage\\/store_slide\\/2021-12-19\\/gBdc8TcbznZlhi0fjAXz1KSAnByJAsLuwFSZXHwN.png\",\"\",\"\\/storage\\/store_slide\\/2021-12-19\\/E1F33oz2Mdk5R3NrrQkD0zh2eBtmink0uOZ3nxoI.png\"]', '', 'asd', 1, 2, 3, '39.853106', '116.344857', '北京市 市辖区 东城区', 'asd', '/storage/business_license/2021-12-08/D8Wwqf2oLsUONi1lrDTBhXhCEMHO7Sny3FzOu69G.png', 'ds', 'sd', 'sd', 'sd', '/storage/id_card_t/2021-12-08/V08LXAyh21eGE6xLp78q9qx6o4GTmtMQhL9wADZX.png', '/storage/id_card_b/2021-12-08/v5GeXw1wUJt7Q5id5T7kZOPatlYn0JSRRHkLWYfK.png', 'ad', 'asd', 0.00, 1.00, 1, 4, '暂无原因', '<p>打撒cc</p>##qingwuit##[{\"type\":\"paragraph\",\"children\":[{\"text\":\"打撒cc\"}]}]', '2021-12-08 00:21:10', '2022-01-09 23:14:24', NULL);

-- ----------------------------
-- Table structure for user_checks
-- ----------------------------
DROP TABLE IF EXISTS `user_checks`;
CREATE TABLE `user_checks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `card_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '身份证号',
  `card_t` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '身份证图片上',
  `card_b` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '身份证图片下',
  `bank_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '银行卡号',
  `bank_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '银行名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_checks
-- ----------------------------
INSERT INTO `user_checks` VALUES (1, 6, 'asd', 'asd', '/storage/card_t/2021-12-24/4PKTrUIewHEtLVnx8CH6aRkiU2h5HhJsgytm6zbw.png', '/storage/card_b/2021-12-24/yf6cBr8qoZ3B3mjTOCnYKsXPUuZyCkPDOcCB1YEF.png', 'asd', 'asd', '2021-12-24 22:12:29', '2021-12-24 22:12:29', NULL);

-- ----------------------------
-- Table structure for user_menus
-- ----------------------------
DROP TABLE IF EXISTS `user_menus`;
CREATE TABLE `user_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ename` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '图标',
  `apis` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单路由',
  `view` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '前端视图',
  `is_open` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '外链跳转',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单描述',
  `is_sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_menus
-- ----------------------------
INSERT INTO `user_menus` VALUES (1, 0, '工作台', '', 'fa-desktop', '', '', 0, '', 0, '2021-12-09 15:27:50', '2021-12-09 15:27:50', NULL);
INSERT INTO `user_menus` VALUES (3, 0, '商品中心', '', 'fa-shopping-bag', '', '', 0, '', 1, '2021-12-09 15:29:39', '2021-12-09 15:29:39', NULL);
INSERT INTO `user_menus` VALUES (4, 0, '店铺中心', '', 'fa-archive', '', '', 0, '', 1, '2021-12-09 15:29:58', '2021-12-09 15:29:58', NULL);
INSERT INTO `user_menus` VALUES (5, 0, '系统中心', '', 'fa-cogs', '', '', 0, '', 99, '2021-12-09 15:40:43', '2021-12-09 15:40:43', NULL);
INSERT INTO `user_menus` VALUES (6, 5, '用户管理', '', 'fa-user', '', '', 0, '', 0, '2021-12-09 15:41:22', '2021-12-09 15:41:22', NULL);
INSERT INTO `user_menus` VALUES (7, 6, '用户管理', '', '', '/Seller/users', 'Seller/users/index', 0, '', 0, '2021-12-09 15:42:10', '2021-12-09 15:42:10', NULL);
INSERT INTO `user_menus` VALUES (8, 6, '角色管理', '', '', '/Seller/roles', 'Seller/roles/index', 0, '', 2, '2021-12-09 15:42:42', '2021-12-09 15:42:42', NULL);
INSERT INTO `user_menus` VALUES (9, 3, '属性规格', '', 'fa-cubes', '/Seller/goods_attrs', 'Seller/goods_attrs/index', 0, '', 1, '2021-12-13 16:25:03', '2021-12-15 09:48:41', NULL);
INSERT INTO `user_menus` VALUES (10, 9, '属性管理', '', '', '/Seller/goods_attrs', 'Seller/goods_attrs/index', 0, '', 0, '2021-12-13 16:26:24', '2021-12-13 16:52:06', '2021-12-13 16:52:06');
INSERT INTO `user_menus` VALUES (11, 9, '规格管理', '', '', '/Seller/goods_specs', 'Seller/goods_specs/index', 0, '', 1, '2021-12-13 16:26:45', '2021-12-13 16:52:06', '2021-12-13 16:52:06');
INSERT INTO `user_menus` VALUES (12, 3, '商品管理', '', 'fa-shopping-bag', '/Seller/goods', 'Seller/goods/index', 0, '', 0, '2021-12-15 09:48:26', '2021-12-15 09:48:26', NULL);
INSERT INTO `user_menus` VALUES (13, 4, '店铺配置', '', 'fa-cogs', '/Seller/stores', 'Seller/stores/index', 0, '', 0, '2021-12-19 15:49:48', '2021-12-19 15:54:01', NULL);
INSERT INTO `user_menus` VALUES (14, 4, '店铺资金', '', 'fa-money', '/Seller/money_logs', 'Seller/money_logs/index', 0, '', 1, '2021-12-19 15:51:00', '2021-12-30 13:35:48', NULL);
INSERT INTO `user_menus` VALUES (15, 4, '订单结算', '', 'fa-calculator', '/Seller/stores', 'Seller/stores/index', 0, '', 3, '2021-12-19 15:52:49', '2021-12-19 15:52:49', NULL);
INSERT INTO `user_menus` VALUES (16, 4, '资金提现', '', 'fa-credit-card', '/Seller/cashes', 'Seller/cashes/index', 0, '', 4, '2021-12-19 15:53:34', '2022-01-01 18:53:28', NULL);
INSERT INTO `user_menus` VALUES (17, 0, '数据统计', '', 'fa-bar-chart-o', '', '', 0, '', 98, '2021-12-29 18:04:26', '2021-12-29 18:15:02', NULL);
INSERT INTO `user_menus` VALUES (18, 0, '营销中心', '', 'fa-share-alt-square', '', '', 0, '', 4, '2021-12-29 18:06:20', '2021-12-29 18:06:20', NULL);
INSERT INTO `user_menus` VALUES (19, 0, '订单中心', '', 'fa-first-order', '', '', 0, '', 3, '2021-12-29 18:06:39', '2021-12-29 18:06:39', NULL);
INSERT INTO `user_menus` VALUES (20, 19, '订单管理', '', 'fa-first-order', '', '', 0, '', 0, '2021-12-29 18:07:35', '2021-12-31 12:26:16', NULL);
INSERT INTO `user_menus` VALUES (21, 20, '退款订单', '', '', '/Seller/refunds', 'Seller/refunds/index', 0, '', 2, '2021-12-29 18:08:16', '2021-12-31 17:19:27', NULL);
INSERT INTO `user_menus` VALUES (22, 20, '退货订单', '', '', '/Seller/returns', 'Seller/refunds/return', 0, '', 3, '2021-12-29 18:08:31', '2021-12-31 17:19:13', NULL);
INSERT INTO `user_menus` VALUES (23, 19, '订单评论', '', 'fa-commenting', '/Seller/order_comments', 'Seller/order_comments/index', 0, '', 3, '2021-12-29 18:09:35', '2021-12-31 15:43:44', NULL);
INSERT INTO `user_menus` VALUES (24, 18, '分销管理', '', 'fa-sitemap', '', '', 0, '', 0, '2021-12-29 18:11:10', '2021-12-29 18:11:10', NULL);
INSERT INTO `user_menus` VALUES (25, 18, '优惠券管理', '', 'fa-money', '', '', 0, '', 1, '2021-12-29 18:11:45', '2021-12-29 18:11:45', NULL);
INSERT INTO `user_menus` VALUES (26, 18, '秒杀管理', '', 'fa-clock-o', '/Seller/seckills', 'Seller/seckills/index', 0, '', 2, '2021-12-29 18:12:29', '2022-01-03 20:59:53', NULL);
INSERT INTO `user_menus` VALUES (27, 18, '拼团管理', '', 'fa-users', '/Seller/collectives', 'Seller/collectives/index', 0, '', 3, '2021-12-29 18:13:03', '2022-01-03 20:41:11', NULL);
INSERT INTO `user_menus` VALUES (28, 18, '满减管理', '', 'fa-shopping-basket', '/Seller/full_reductions', 'Seller/full_reductions/index', 0, '', 4, '2021-12-29 18:13:56', '2022-01-03 20:29:40', NULL);
INSERT INTO `user_menus` VALUES (29, 17, '销量分析', '', 'fa-first-order', '/Seller/dashboard/order', 'Seller/dashboard/order', 0, '', 0, '2021-12-29 18:14:31', '2022-01-09 18:46:07', NULL);
INSERT INTO `user_menus` VALUES (30, 4, '运费配置', '', 'fa-truck', '/Seller/freights', 'Seller/freights/index', 0, '', 4, '2021-12-29 18:17:50', '2022-01-01 20:28:39', NULL);
INSERT INTO `user_menus` VALUES (31, 20, '全部订单', '', '', '/Seller/orders', 'Seller/orders/index', 0, '', 0, '2021-12-31 12:24:41', '2021-12-31 12:24:41', NULL);
INSERT INTO `user_menus` VALUES (32, 20, '待发订单', '', '', '/Seller/orders/wait', 'Seller/orders/wait', 0, '', 1, '2021-12-31 12:26:07', '2021-12-31 12:43:09', NULL);
INSERT INTO `user_menus` VALUES (33, 24, '分销管理', '', '', '/Seller/distributions', 'Seller/distributions/index', 0, '', 0, '2022-01-03 13:48:21', '2022-01-03 13:48:21', NULL);
INSERT INTO `user_menus` VALUES (34, 24, '分销日志', '', '', '/Seller/distribution_logs', 'Seller/distributions/log', 0, '', 1, '2022-01-03 13:48:39', '2022-01-03 17:29:01', NULL);
INSERT INTO `user_menus` VALUES (35, 25, '优惠劵管理', '', '', '/Seller/coupons', 'Seller/coupons/index', 0, '', 0, '2022-01-03 19:15:12', '2022-01-03 19:15:12', NULL);
INSERT INTO `user_menus` VALUES (36, 25, '优惠劵日志', '', '', '/Seller/coupon_logs', 'Seller/coupons/log', 0, '', 1, '2022-01-03 19:15:33', '2022-01-03 19:15:33', NULL);
INSERT INTO `user_menus` VALUES (37, 1, '仪表盘', '', 'fa-dashboard', '/Seller/dashboard', 'Seller/dashboard/index', 1, '', 0, '2022-01-08 18:29:38', '2022-01-08 18:41:44', NULL);

-- ----------------------------
-- Table structure for user_permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_permission_groups`;
CREATE TABLE `user_permission_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限分组名称',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口分组描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_permission_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权限分组ID',
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `apis` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口名称',
  `content` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接口描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '所属',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 6, '测试子账号', '2021-12-09 16:05:21', '2021-12-09 16:42:43', '2021-12-09 16:42:43');
INSERT INTO `user_roles` VALUES (2, 6, '测试子账号', '2021-12-09 16:06:27', '2021-12-09 16:06:27', NULL);

-- ----------------------------
-- Table structure for user_to_menus
-- ----------------------------
DROP TABLE IF EXISTS `user_to_menus`;
CREATE TABLE `user_to_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_to_menus
-- ----------------------------
INSERT INTO `user_to_menus` VALUES (1, 2, 5, NULL, NULL, NULL);
INSERT INTO `user_to_menus` VALUES (2, 2, 6, NULL, NULL, NULL);
INSERT INTO `user_to_menus` VALUES (3, 2, 7, NULL, NULL, NULL);
INSERT INTO `user_to_menus` VALUES (4, 2, 8, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_to_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_to_permissions`;
CREATE TABLE `user_to_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_to_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for user_to_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_to_roles`;
CREATE TABLE `user_to_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_to_roles
-- ----------------------------
INSERT INTO `user_to_roles` VALUES (1, 8, 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `belong_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属',
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `pay_password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付密码',
  `nickname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '性别',
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `frozen_money` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '冻结资金',
  `integral` decimal(9, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '积分',
  `inviter_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请人ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '账号状态',
  `invalid_time` timestamp NULL DEFAULT NULL COMMENT '失效时间',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0' COMMENT '登陆IP',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登陆时间',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最后一次登陆',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 0, 'demo', '$2y$10$N3KlG7rZMWAbt4nDg6BSYeLwMitvVady1JtXbf8NNtXI1TOVGzbH2', '$2y$10$WLrwQG.Mbf.S3wEn0LcFZugy/L8WcukTT7JA/axsi.7yAXTrRkMeO', 'demo', 1, '', 'demo', '', 0.00, 0.00, 0.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-10-01 11:00:48', '2021-10-01 11:00:48', NULL);
INSERT INTO `users` VALUES (2, 0, 'demo', '$2y$10$1csxEmvyjEEiIHd10QHsd.8GbtuLuuE.vvJwPGHOdBkESxcqQ0eAu', '$2y$10$.xc4w.1r5KazlbmoDY3InuWka3org3J1zXzmHJzmXWob/Jhw3ewl.', 'demo', 1, '', 'demo', '', 0.00, 0.00, 0.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-10-01 11:03:05', '2021-10-01 11:03:05', NULL);
INSERT INTO `users` VALUES (3, 0, 'demo', '$2y$10$WqUCMWwrebrPaWyU26NWHO8Y0Qd1/015dwe4WRcM/aN2Pte7R/YOm', '$2y$10$cXc6Zo665gC1x0p.IOVBDeOWTfvFllrcZG2fZ7067tvp5/BjP4H4y', 'demo', 1, '', 'demo', '', 0.00, 0.00, 0.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-10-01 11:04:02', '2021-10-01 11:04:02', NULL);
INSERT INTO `users` VALUES (6, 0, '15073010917', '$2y$10$rDdE/1CSF5D0xNykTsQdXOapPIblkGWpNmsjcssymSW2MCXuKP0Cm', '$2y$10$NaBTixd8YOw1B2oHv2xwtevE9bDKsV.tzbfbNqgDCZvV2W2sM6agC', '商家234', 1, '/storage/avatar/2021-12-24/9JpHKKkdPPfWnwgFa2dSh9rV9TvHokOVA9eW5z6x.jpg', '15073010917', '', 77.02, 11.00, 99.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-12-07 19:32:40', '2022-01-06 13:46:48', NULL);
INSERT INTO `users` VALUES (7, 6, 'seller', '$2y$10$uXNKD0KiINj6RXM8f7RXFu9OeEtTUGekWy9z9Q0RTt6.qLGdrcuyG', '', 'seller', 1, '', '', '', 0.00, 0.00, 0.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-12-09 17:33:28', '2021-12-09 17:34:23', '2021-12-09 17:34:23');
INSERT INTO `users` VALUES (8, 6, 'seller', '$2y$10$ccg/lk5R2mWecfaYxi2zlOEQFOZ4TgBtfS3o0ki8VekYFiB6/.Kfi', '', 'seller', 1, '', '', '', 100.00, 0.00, 0.00, 0, 1, NULL, '0.0.0.0', NULL, NULL, '2021-12-09 17:34:18', '2021-12-09 17:34:18', NULL);

SET FOREIGN_KEY_CHECKS = 1;
