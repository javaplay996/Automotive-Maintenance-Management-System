/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qc-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qc-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qc-ssmj`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1z8hn/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1z8hn/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1z8hn/upload/picture3.jpg'),(4,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-01-25 11:41:54'),(2,'sex_types','性别',1,'女',NULL,'2021-01-25 11:41:54'),(3,'wx_types','维修等级',3,'等级3',NULL,'2021-01-25 11:41:54'),(4,'wx_types','维修等级',2,'等级2',NULL,'2021-01-25 11:41:54'),(5,'wx_types','维修等级',1,'等级1',NULL,'2021-01-25 11:41:54'),(6,'pj_types','配件信息',1,'配件1',NULL,'2021-01-25 11:41:54'),(7,'pj_types','配件信息',2,'配件2',NULL,'2021-01-25 11:41:54'),(8,'pj_types','配件信息',3,'配件3',NULL,'2021-01-25 11:41:54'),(9,'zc_types','技术职称',1,'技术职称1',NULL,'2021-01-25 11:41:54'),(10,'zc_types','技术职称',2,'技术职称2',NULL,'2021-01-25 11:41:54'),(11,'zc_types','技术职称',3,'技术职称3',NULL,'2021-01-25 11:41:54'),(12,'cq_types','出勤状况',1,'出勤',NULL,'2021-01-25 11:41:54'),(13,'cq_types','出勤状况',2,'未出勤',NULL,'2021-01-25 11:41:54');

/*Table structure for table `guanliyuan` */

DROP TABLE IF EXISTS `guanliyuan`;

CREATE TABLE `guanliyuan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '编号  Search',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search',
  `account` varchar(200) DEFAULT NULL COMMENT '账号  Search',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `age` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(200) DEFAULT NULL COMMENT '电话',
  `address` varchar(200) DEFAULT NULL COMMENT '住址',
  `role` varchar(200) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员表';

/*Data for the table `guanliyuan` */

insert  into `guanliyuan`(`id`,`serial`,`name`,`account`,`password`,`age`,`sex_types`,`mobile`,`address`,`role`) values (1,'编号1','姓名1','111','111',41,1,'1111111111','111111','管理员'),(2,'编号2','姓名2','222','222',42,2,'2222222222','222222','管理员'),(3,'编号3','姓名3','333','333',43,1,'3333333333','333333','管理员');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '客户编号  Search',
  `name` varchar(200) DEFAULT NULL COMMENT '客户姓名  Search',
  `account` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `age` tinyint(4) DEFAULT NULL COMMENT '客户年龄',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '客户性别',
  `mobile` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  `information` varchar(200) DEFAULT NULL COMMENT '车辆信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`serial`,`name`,`account`,`password`,`age`,`sex_types`,`mobile`,`role`,`information`) values (1,'客户编号1','客户姓名1','111','111',41,1,'11111111111','客户','111111111111'),(2,'客户编号2','客户姓名2','222','222',42,2,'22222222222','客户','222222222222'),(3,'客户编号3','客户姓名3','333','333',43,1,'33333333333','客户','333333333333');

/*Table structure for table `lingjainshebei` */

DROP TABLE IF EXISTS `lingjainshebei`;

CREATE TABLE `lingjainshebei` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '零件编号  Search',
  `name` varchar(200) DEFAULT NULL COMMENT '零件名称  Search',
  `lj_types` tinyint(4) DEFAULT NULL COMMENT '零件分类',
  `amount` tinyint(4) DEFAULT NULL COMMENT '零件数量',
  `production` tinyint(4) DEFAULT NULL COMMENT '生产单位',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '采购日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='零件设备表';

/*Data for the table `lingjainshebei` */

insert  into `lingjainshebei`(`id`,`serial`,`name`,`lj_types`,`amount`,`production`,`create_time`) values (1,'零件编号1','零件名称1',3,10,100,'2021-02-24 20:04:08'),(2,'零件编号2','零件名称2',2,20,30,'2021-02-24 20:49:41');

/*Table structure for table `lingjianfenlei` */

DROP TABLE IF EXISTS `lingjianfenlei`;

CREATE TABLE `lingjianfenlei` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '零件名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='零件分类表';

/*Data for the table `lingjianfenlei` */

insert  into `lingjianfenlei`(`id`,`name`) values (1,'零件1'),(2,'零件2'),(3,'零件3');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','somfv54g4ig14nai09v30bv5b9shek1l','2021-01-28 18:04:51','2021-02-24 21:50:14'),(2,1,'小札','users','用户','569iqscjgmga1xihldzb6mrobqijpdax','2021-02-02 16:10:08','2021-02-02 17:10:09'),(3,1,'小札','users','员工','2mmlqx16d8s2gl4i3iu1djp5y620zwqz','2021-02-02 16:20:10','2021-02-03 10:56:34'),(4,2,'小站','users','员工','abnya3h963wfqb2vluckg138z3pnwqnt','2021-02-02 16:48:23','2021-02-02 18:27:14'),(5,4,'小夏','users','员工','rgei89c1m1i5ndnws5r15tiaaw16phdx','2021-02-02 16:51:56','2021-02-03 10:57:10'),(6,12,'员工2','users','员工','62jmrjqq1zf319mq1d7021sudn93f4zs','2021-02-03 09:56:47','2021-02-03 10:56:48'),(7,1,'admin','users','vip管理员','qtyjlphg1uenoz397inhj22sk5ty6uhe','2021-02-24 19:20:15','2021-02-24 21:47:08'),(8,1,'客户姓名1','users','客户','c17uqph290tyje7zw11lmhhzvwel2b7a','2021-02-24 20:28:18','2021-02-24 21:50:29'),(9,2,'客户姓名2','users','客户','hpe19rsgsen9vwfvnp46bjjm70ik3ew4','2021-02-24 20:50:44','2021-02-24 21:50:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','vip管理员','2021-01-28 18:04:51');

/*Table structure for table `weixiu` */

DROP TABLE IF EXISTS `weixiu`;

CREATE TABLE `weixiu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_types` tinyint(4) DEFAULT NULL COMMENT '客户编号  Search',
  `maintenance` varchar(200) DEFAULT NULL COMMENT '维修项目Search',
  `ygdate` tinyint(4) DEFAULT NULL COMMENT '员工工时',
  `wx_types` tinyint(4) DEFAULT NULL COMMENT '维修等级',
  `pj_types` tinyint(4) DEFAULT NULL COMMENT '配件信息',
  `money` decimal(6,2) DEFAULT NULL COMMENT '维修收费',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '维修日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='维修信息表';

/*Data for the table `weixiu` */

insert  into `weixiu`(`id`,`serial_types`,`maintenance`,`ygdate`,`wx_types`,`pj_types`,`money`,`create_time`) values (1,1,'123',123,2,2,'100.00','2021-02-24 20:07:50'),(2,2,'维修项目2',20,2,2,'200.00','2021-02-24 20:35:52'),(3,3,'维修项目3',30,3,1,'300.00','2021-02-24 20:36:11'),(4,2,'维修项目4',40,1,2,'400.00','2021-02-24 20:50:06');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '员工编号  Search',
  `name` varchar(200) DEFAULT NULL COMMENT '员工姓名  Search',
  `age` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别',
  `zc_types` tinyint(4) DEFAULT NULL COMMENT '技术职称  Search',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='员工表';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`serial`,`name`,`age`,`sex_types`,`zc_types`,`create_time`) values (1,'员工编号1','员工姓名1',41,1,3,'2021-02-24 19:52:19'),(2,'员工编号2','员工姓名2',42,2,2,'2021-02-24 20:10:36'),(3,'员工编号3','员工姓名3',43,1,1,'2021-02-24 20:10:37');

/*Table structure for table `yuangongchuqin` */

DROP TABLE IF EXISTS `yuangongchuqin`;

CREATE TABLE `yuangongchuqin` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_types` tinyint(4) DEFAULT NULL COMMENT '员工编号  Search',
  `cq_types` tinyint(4) DEFAULT NULL COMMENT '出勤状况',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '考勤日期',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工出勤表';

/*Data for the table `yuangongchuqin` */

insert  into `yuangongchuqin`(`id`,`serial_types`,`cq_types`,`create_time`,`notice_content`) values (1,1,1,'2021-02-24 20:01:06','123123123\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
