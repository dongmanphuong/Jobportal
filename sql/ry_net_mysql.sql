/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.43-log : Database - backan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `gen_table` */

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Table ID',
  `table_name` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT 'Tên bảng',
  `table_comment` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT 'Mô tả bảng',
  `sub_table_name` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tên bảng của bảng con liên quan',
  `sub_table_fk_name` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tên khóa ngoại của liên kết bảng con',
  `class_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT 'Tên lớp thực thể',
  `tpl_category` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT 'crud' COMMENT 'Mẫu được sử dụng (hoạt động bảng đơn CRUD, hoạt động bảng cây)',
  `package_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tên package',
  `module_name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tạo tên mô-đun',
  `business_name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tạo tên doanh nghiệp',
  `function_name` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tạo tên hàm',
  `function_author` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Tạo tác giả hàm',
  `gen_type` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0' COMMENT 'Cách tạo mã (0 gói nén zip 1 đường dẫn tùy chỉnh)',
  `gen_path` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT '/' COMMENT 'Tạo đường dẫn (để trống cho đường dẫn dự án mặc định)',
  `options` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Các tùy chọn xây dựng khác',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT 'Người tạo',
  `create_time` datetime DEFAULT NULL COMMENT 'Thời gian tạo',
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT 'Người update',
  `update_time` datetime DEFAULT NULL COMMENT 'Thời gian update',
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT 'Ghi chú',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'sys_menu','菜单权限表',NULL,NULL,'SysMenu','crud','RuoYi.System','System','menu','菜单权限表','ruoyi.net','0',NULL,NULL,'admin','2025-02-09 21:25:19',NULL,'2025-02-06 15:58:41',NULL);

/*Table structure for table `gen_table_column` */

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) DEFAULT NULL,
  `column_name` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `column_comment` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `column_type` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `net_type` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `net_field` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_pk` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_increment` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_required` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_insert` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_edit` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_list` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_query` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `query_type` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT 'EQ',
  `html_type` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `dict_type` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (1,1,'menu_id','','bigint(20)','long','MenuId','1','1','0','1',NULL,NULL,NULL,'EQ','input',NULL,1,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (2,1,'menu_name','','varchar(50)','string','MenuName','0','0','1','1','1','1','1','LIKE',NULL,NULL,2,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (3,1,'parent_id','','bigint(20)','long?','ParentId','0','0','0','1','1','1','1','EQ','input',NULL,3,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (4,1,'order_num','','int(4)','int?','OrderNum','0','0','0','1','1','1','1','EQ','input',NULL,4,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (5,1,'path','','varchar(200)','string?','Path','0','0','0','1','1','1','1','input',NULL,NULL,5,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (6,1,'component','','varchar(255)','string?','Component','0','0','0','1','1','1','1','input',NULL,NULL,6,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (7,1,'query','','varchar(255)','string?','Query','0','0','0','1','1','1','1','input',NULL,NULL,7,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (8,1,'is_frame','','int(1)','int?','IsFrame','0','0','0','1','1','1','1','EQ','input',NULL,8,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (9,1,'is_cache','','int(1)','int?','IsCache','0','0','0','1','1','1','1','EQ','input',NULL,9,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (10,1,'menu_type','','char(1)','string?','MenuType','0','0','0','1','1','1','1','input','select',NULL,10,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (11,1,'visible','','char(1)','string?','Visible','0','0','0','1','1','1','1','input',NULL,NULL,11,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (12,1,'status','','char(1)','string?','Status','0','0','0','1','1','1','1','input','radio',NULL,12,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (13,1,'perms','','varchar(100)','string?','Perms','0','0','0','1','1','1','1','input',NULL,NULL,13,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (14,1,'icon','','varchar(100)','string?','Icon','0','0','0','1','1','1','1','input',NULL,NULL,14,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (15,1,'create_by','','varchar(64)','string?','CreateBy','0','0','0','1',NULL,NULL,NULL,'input',NULL,NULL,15,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (16,1,'create_time','','datetime','DateTime?','CreateTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime',NULL,16,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (17,1,'update_by','','varchar(64)','string?','UpdateBy','0','0','0','1','1',NULL,NULL,'input',NULL,NULL,17,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (18,1,'update_time','','datetime','DateTime?','UpdateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime',NULL,18,'admin','2025-02-09 21:44:07',NULL,NULL);
insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`net_type`,`net_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (19,1,'remark','','varchar(500)','string?','Remark','0','0','0','1','1','1',NULL,'textarea',NULL,NULL,19,'admin','2025-02-09 21:44:07',NULL,NULL);

/*Table structure for table `sys_config` */

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `config_key` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `config_value` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `config_type` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT 'N',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'Default skin','sys.index.skinName','skin-blue','Y','admin','2025-02-06 12:02:21','admin','2025-02-06 17:32:42','Blue skin-blue, green skin-green, purple skin-purple, red skin-red, yellow skin-yellow');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'Khởi tạo mật khẩu','sys.user.initPassword','123456','Y','admin','2025-02-06 12:02:21','admin','2025-02-06 16:02:21','Initialization password 123456');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'Main frame page-sidebar theme','sys.index.sideTheme','theme-dark','Y','admin','2025-02-06 12:02:21','',NULL,'dark theme theme-dark, light theme theme-light');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'Captcha','sys.account.captchaEnabled','true','Y','admin','2025-02-06 12:02:21','admin','2025-02-06 17:32:17','Whether to enable the verification code function (true to enable, false to disable)');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,'Chế độ đăng ký ','sys.account.registerUser','true','Y','admin','2025-02-06 12:02:21','admin','2025-02-06 17:09:00','Whether to enable the registration user function (true to enable, false to disable)');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,'User login-blacklist list','sys.login.blackIPList','','Y','admin','2025-02-06 12:02:21','',NULL,'Set login IP blacklist restrictions, multiple matching items are separated by ;, and support matching (* wildcard, network segment)');

/*Table structure for table `sys_dept` */

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0',
  `ancestors` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `dept_name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `order_num` int(4) DEFAULT '0',
  `leader` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `del_flag` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','Ruoyi Technology',0,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (101,100,'0,100','Shenzhen Head Office',1,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (102,100,'0,100','Changsha Branch',2,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (103,101,'0,100,101','R&D department',1,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (104,101,'0,100,101','Marketing department',2,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (105,101,'0,100,101','Testing Department',3,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (106,101,'0,100,101','Finance Department',4,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (108,102,'0,100,102','Marketing Department',1,'Ruoyi','15888888888','ry@qq.com','0','0','admin','2025-02-05 11:36:02','',NULL);

/*Table structure for table `sys_dict_data` */

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_sort` int(4) DEFAULT '0',
  `dict_label` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `dict_value` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `dict_type` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `css_class` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `list_class` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_default` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT 'N',
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'Nam','0','sys_user_sex','','','Y','0','admin','2025-02-06 12:01:43','admin','2025-02-08 22:48:41','sex male');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,2,'Nữ','1','sys_user_sex','','','N','0','admin','2025-02-06 12:01:43','admin','2025-02-08 22:48:46','sex female');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,3,'Không xác định','2','sys_user_sex','','','N','0','admin','2025-02-06 12:01:43','admin','2025-02-08 22:48:59','Gender unknown');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,1,'Hiển thị','0','sys_show_hide','','primary','Y','0','admin','2025-02-06 12:01:43','admin','2025-02-08 16:38:17','Show menu');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,2,'Ẩn','1','sys_show_hide','','danger','N','0','admin','2025-02-06 12:01:43','admin','2025-02-08 16:38:25','Hide menu');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,1,'Normal','0','sys_normal_disable','','primary','Y','0','admin','2025-02-06 12:01:43','',NULL,'Normal status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,2,'Disable','1','sys_normal_disable','','danger','N','0','admin','2025-02-06 12:01:43','',NULL,'Disable status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,1,'Normal','0','sys_job_status','','primary','Y','0','admin','2025-02-06 12:01:43','',NULL,'Normal status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,2,'Suspended','1','sys_job_status','','danger','N','0','admin','2025-02-06 12:01:43','',NULL,'disabled');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,1,'default','DEFAULT','sys_job_group','','','Y','0','admin','2025-02-06 12:01:43','',NULL,'default group');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (11,2,'system','SYSTEM','sys_job_group','','','N','0','admin','2025-02-06 12:01:43','',NULL,'system group');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (12,1,'yes','Y','sys_yes_no','','primary','Y','0','admin','2025-02-06 12:01:43','',NULL,'The system default is yes');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (13,2,'No','N','sys_yes_no','','danger','N','0','admin','2025-02-06 12:01:43','',NULL,'The system default is no');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (14,1,'Notification','1','sys_notice_type','','warning','Y','0','admin','2025-02-06 12:01:43','',NULL,'Notification');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (15,2,'notice','2','sys_notice_type','','success','N','0','admin','2025-02-06 12:01:43','',NULL,'notice');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (16,1,'normal','0','sys_notice_status','','primary','Y','0','admin','2025-02-06 12:01:43','',NULL,'normal status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (17,2,'closed','1','sys_notice_status','','danger','N','0','admin','2025-02-06 12:01:43','',NULL,'closed status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (18,99,'Other','0','sys_oper_type','','info','N','0','admin','2025-02-06 12:01:44','',NULL,'Other operations');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (19,1,'Add','1','sys_oper_type','','info','N','0','admin','2025-02-06 12:01:44','',NULL,'Add operations');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (20,2,'Modify','2','sys_oper_type','','info','N','0','admin','2025-02-06 12:01:44','',NULL,'Modify operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (21,3,'Delete','3','sys_oper_type','','danger','N','0','admin','2025-02-06 12:01:44','',NULL,'Delete operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (22,4,'Authorize','4','sys_oper_type','','primary','N','0','admin','2025-02-06 12:01:44','',NULL,'Authorize operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (23,5,'Export','5','sys_oper_type','','warning','N','0','admin','2025-02-06 12:01:44','',NULL,'Export operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (24,6,'Import','6','sys_oper_type','','warning','N','0','admin','2025-02-06 12:01:44','',NULL,'Import operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (25,7,'Forced exit','7','sys_oper_type','','danger','N','0','admin','2025-02-06 12:01:44','',NULL,'Forced exit operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (26,8,'Generate code','8','sys_oper_type','','warning','N','0','admin','2025-02-06 12:01:44','',NULL,'Generate operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (27,9,'Clear data','9','sys_oper_type','','danger','N','0','admin','2025-02-06 12:01:44','',NULL,'Clear operation');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (28,1,'Success','0','sys_common_status','','primary','N','0','admin','2025-02-06 12:01:44','',NULL,'Normal status');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (29,2,'Failure','1','sys_common_status','','danger','N','0','admin','2025-02-06 12:01:44','',NULL,'Disabled');

/*Table structure for table `sys_dict_type` */

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'Giới tính','sys_user_sex','0','admin','2025-02-05 16:16:17','admin','2025-02-06 15:46:57','User gender list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'Trạng thái menu','sys_show_hide','0','admin','2025-02-05 16:16:17','admin','2025-02-06 15:47:25','Menu status list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'Chuyển đổi hệ thống','sys_normal_disable','0','admin','2025-02-05 16:16:17','admin','2025-02-06 15:47:49','System switch list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'Trạng thái công việc','sys_job_status','0','admin','2025-02-05 16:16:17','admin','2025-02-06 15:48:09','Task status list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,'Nhóm nhiệm vụ','sys_job_group','0','admin','2025-02-05 16:16:17','admin','2025-02-06 15:48:24','Task group list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,'System whether','sys_yes_no','0','admin','2025-02-05 16:16:17','',NULL,'System whether list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,'Notification type','sys_notice_type','0','admin','2025-02-05 16:16:17','',NULL,'Notification type list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,'Notification status','sys_notice_status','0','admin','2025-02-05 16:16:17','',NULL,'Notification status list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,'Operation type','sys_oper_type','0','admin','2025-02-05 16:16:17','',NULL,'Operation type list');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,'System status','sys_common_status','0','admin','2025-02-05 16:16:17','',NULL,'Login status list');

/*Table structure for table `sys_job` */

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT '',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'DEFAULT',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '3',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '1',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'System default (no parameters)','DEFAULT','ryTask.RyNoParams','0/10 * * * * ?','3','1','1','admin','2025-02-06 12:04:15','',NULL,'');
insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'System default (with parameters)','DEFAULT','ryTask.RyParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2025-02-06 12:04:15','',NULL,'');
insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'System default (multiple parameters)','DEFAULT','ryTask.RyMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2025-02-06 12:04:15','',NULL,'');

/*Table structure for table `sys_job_log` */

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (100,'admin','127.0.0.1','X.X.X.X','Chrome 133.0.0','Windows','0','登录成功','2025-02-09 21:36:12');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (101,'admin','192.168.1.2','内网IP','Chrome 133.0.0','Windows','0','登录成功','2025-02-09 21:50:49');

/*Table structure for table `sys_menu` */

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `parent_id` bigint(20) DEFAULT '0',
  `order_num` int(4) DEFAULT '0',
  `path` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `component` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `query` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `is_frame` int(1) DEFAULT '1',
  `is_cache` int(1) DEFAULT '0',
  `menu_type` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `visible` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `perms` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '#',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'Quản lý hệ thống',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2025-02-06 12:12:43','admin','2025-02-06 15:21:37','System Management Directory');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'System Monitoring',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2025-02-06 12:12:43','',NULL,'System Monitoring Directory');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'System Tools',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2025-02-06 12:12:43','',NULL,'System tool directory');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,'Quản lý người dùng',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2025-02-06 12:12:43','admin','2025-02-06 15:22:12','User management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (101,'Quản lý quyền',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2025-02-06 12:12:43','admin','2025-02-06 15:25:27','Role management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (102,'Quản lý menu',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2025-02-06 12:12:43','admin','2025-02-06 15:25:56','Menu management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (103,'Quản lý phòng ban',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2025-02-06 12:12:43','admin','2025-02-06 15:26:43','Department management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (104,'Quản lý chức vụ',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2025-02-06 12:12:43','admin','2025-02-06 15:26:57','Post management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (105,'Quản lý dữ liệu hệ thống',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2025-02-06 12:12:43','admin','2025-02-06 15:34:01','Dictionary management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (106,'Cài đặt hệ thống',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2025-02-06 12:12:43','admin','2025-02-06 15:34:33','Parameter setting menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (107,'Thông báo',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2025-02-06 12:12:43','admin','2025-02-06 15:35:39','Notice menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (108,'Quản lý log hệ thống',1,9,'log','','',1,0,'M','0','0','','log','admin','2025-02-06 12:12:43','admin','2025-02-06 15:37:31','Log management menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (109,'Online users',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2025-02-06 12:12:43','',NULL,'Online user menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (110,'Scheduled tasks',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2025-02-06 12:12:43','',NULL,'Scheduled tasks menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (111,'Data monitoring',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2025-02-06 12:12:43','',NULL,'Data monitoring menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (112,'Service monitoring',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2025-02-06 12:12:43','',NULL,'Service monitoring menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (113,'cache monitoring',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2025-02-06 12:12:43','',NULL,'cache monitoring menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (114,'cache list',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2025-02-06 12:12:43','',NULL,'cache list menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (115,'Form build',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2025-02-06 12:12:43','',NULL,'Form build menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (116,'Code generation',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2025-02-06 12:12:43','',NULL,'Code generation menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (117,'System interface',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2025-02-06 12:12:43','',NULL,'System interface menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (500,'Operation log',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2025-02-06 12:12:43','',NULL,'Operation log menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (501,'Login log',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2025-02-06 12:12:43','',NULL,'Login log menu');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1000,'Danh sách',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2025-02-06 12:12:43','admin','2025-02-06 15:22:25','');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1001,'Thêm người dùng',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2025-02-05 16:12:33','admin','2025-02-06 15:22:36','');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1002,'Sửa',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2025-02-05 16:12:33','admin','2025-02-06 15:23:44','');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1003,'Xóa',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2025-02-05 16:12:33','admin','2025-02-06 15:23:54','');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1004,'User export',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1005,'User import',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1006,'Reset password',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1007,'Role query',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1008,'Add role',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1009,'Modify role',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1010,'Role deletion',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1011,'Role export',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1012,'Menu query',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1013,'Menu add',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1014,'Menu modification',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1015,'Menu deletion',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1016,'Department query',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1017,'Department addition',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1018,'Department modification',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1019,'Department deletion',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2025-02-05 16:12:33','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1020,'Position query',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1021,'Add new position',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1022,'Modify position',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1023,'Position deletion',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1024,'Position export',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1025,'Dictionary query',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1026,'Dictionary add',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1027,'Dictionary modification',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1028,'Dictionary deletion',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1029,'Dictionary export',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1030,'Parameter query',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2025-02-05 16:12:34','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1031,'Add parameter',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1032,'Modify parameter',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1033,'Parameter deletion',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1034,'Parameter export',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1035,'Announcement query',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1036,'New announcement',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1037,'Modified announcement',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1038,'Notice deletion',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1039,'Operation query',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1040,'Operation deletion',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1041,'Log export',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1042,'Login query',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1043,'Login delete',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1044,'Log export',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1045,'Account unlock',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1046,'Online query',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1047,'Batch forced exit',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1048,'Single forced exit',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1049,'Task query',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1050,'Add task',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1051,'Modify task',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1052,'Delete task',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1053,'Status modification',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1054,'Task export',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1055,'Generate query',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1056,'Generate modification',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1057,'Generate delete',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1058,'Import code',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1059,'Preview code',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2025-02-05 16:15:30','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1060,'Generate code',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2025-02-05 16:15:30','',NULL,'');

/*Table structure for table `sys_notice` */

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `notice_type` char(1) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `notice_content` longblob,
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `business_type` int(2) DEFAULT '0',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `operator_type` int(1) DEFAULT '0',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 DEFAULT '',
  `status` int(1) DEFAULT '0',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `oper_time` datetime DEFAULT NULL,
  `cost_time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values (1,'字典类型',9,'RuoYi.System.Controllers.SysDictTypeController.RefreshCache','DELETE',1,'admin',NULL,'http://localhost:58595/system/dict/type/refreshCache','192.168.1.2','内网IP','{}','{\"msg\":\"\\u64CD\\u4F5C\\u6210\\u529F.\",\"code\":200}',0,NULL,'2025-02-09 21:52:33',97);

/*Table structure for table `sys_post` */

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_code` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_sort` int(4) NOT NULL,
  `status` char(1) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','Chairman',1,'0','admin','2025-02-05 12:00:11','',NULL,'');
insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'se','Project Manager',2,'0','admin','2025-02-05 12:00:11','',NULL,'');
insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'hr','Human Resources',3,'0','admin','2025-02-05 12:00:11','',NULL,'');
insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'user','Ordinary Employee',4,'0','admin','2025-02-05 12:00:11','',NULL,'');

/*Table structure for table `sys_role` */

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role_key` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role_sort` int(4) NOT NULL,
  `data_scope` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '1',
  `menu_check_strictly` tinyint(1) DEFAULT '1',
  `dept_check_strictly` tinyint(1) DEFAULT '1',
  `status` char(1) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `del_flag` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'Super Admin','admin',1,'1',1,1,'0','0','admin','2025-02-05 16:09:27','',NULL,'Super Admin');
insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'Common Role','common',2,'2',1,1,'0','0','admin','2025-02-05 16:09:27','admin','2025-02-08 16:24:55','Common Role');

/*Table structure for table `sys_role_dept` */

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,100);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,101);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,102);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,103);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,104);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,105);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,106);
insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,108);

/*Table structure for table `sys_role_menu` */

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,2);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,100);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,101);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,102);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,103);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,104);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,105);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,106);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,107);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,108);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,109);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,110);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,111);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,112);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,113);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,114);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,500);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,501);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1000);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1001);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1002);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1003);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1004);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1005);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1006);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1007);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1008);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1009);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1010);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1011);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1012);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1013);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1014);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1015);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1016);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1017);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1018);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1019);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1020);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1021);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1022);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1023);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1024);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1025);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1026);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1027);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1028);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1029);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1030);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1031);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1032);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1033);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1034);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1035);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1036);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1037);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1038);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1039);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1040);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1041);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1042);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1043);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1044);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1045);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1046);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1047);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1048);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1049);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1050);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1051);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1052);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1053);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1054);

/*Table structure for table `sys_user` */

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nick_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_type` varchar(2) COLLATE utf8mb4_vietnamese_ci DEFAULT '00',
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `phonenumber` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `avatar` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `status` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `del_flag` char(1) COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `login_ip` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `login_date` datetime DEFAULT NULL,
  `create_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','admin','00','ry@163.com','15888888888','1','','0192023a7bbd73250516f069df18b500','0','0','192.168.1.2','2025-02-09 21:50:50','admin','2025-02-05 11:59:23','',NULL,'admin');
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,105,'ry','ry','00','ry@qq.com','15666666666','1','','0192023a7bbd73250516f069df18b500','0','0','127.0.0.1','2025-02-05 11:59:23','admin','2025-02-05 11:59:23','',NULL,'admin');
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,NULL,'dong','dong','00',NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,'1900-01-01 00:00:00',NULL,'2025-02-06 17:09:20',NULL,NULL,NULL);

/*Table structure for table `sys_user_post` */

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1);
insert  into `sys_user_post`(`user_id`,`post_id`) values (2,2);

/*Table structure for table `sys_user_role` */

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1);
insert  into `sys_user_role`(`user_id`,`role_id`) values (2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
