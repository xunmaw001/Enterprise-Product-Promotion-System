-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: php5010m
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `php5010m`
--

/*!40000 DROP DATABASE IF EXISTS `php5010m`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `php5010m` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `php5010m`;

--
-- Table structure for table `chanpin`
--

DROP TABLE IF EXISTS `chanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpin`
--

LOCK TABLES `chanpin` WRITE;
/*!40000 ALTER TABLE `chanpin` DISABLE KEYS */;
INSERT INTO `chanpin` VALUES (51,'2022-04-02 06:42:51','1111111111','产品名称1','产品分类1','企业名称1','upload/chanpin_fengmian1.jpg','品牌1','2022-04-02','产品详情1','2022-04-02 14:42:51',1),(52,'2022-04-02 06:42:51','2222222222','产品名称2','产品分类2','企业名称2','upload/chanpin_fengmian2.jpg','品牌2','2022-04-02','产品详情2','2022-04-02 14:42:51',2),(53,'2022-04-02 06:42:51','3333333333','产品名称3','产品分类3','企业名称3','upload/chanpin_fengmian3.jpg','品牌3','2022-04-02','产品详情3','2022-04-02 14:42:51',3),(54,'2022-04-02 06:42:51','4444444444','产品名称4','产品分类4','企业名称4','upload/chanpin_fengmian4.jpg','品牌4','2022-04-02','产品详情4','2022-04-02 14:42:51',4),(55,'2022-04-02 06:42:51','5555555555','产品名称5','产品分类5','企业名称5','upload/chanpin_fengmian5.jpg','品牌5','2022-04-02','产品详情5','2022-04-02 14:42:51',5),(56,'2022-04-02 06:42:51','6666666666','产品名称6','产品分类6','企业名称6','upload/chanpin_fengmian6.jpg','品牌6','2022-04-02','产品详情6','2022-04-02 14:42:51',6);
/*!40000 ALTER TABLE `chanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinfenlei`
--

DROP TABLE IF EXISTS `chanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinfenlei` (`chanpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinfenlei`
--

LOCK TABLES `chanpinfenlei` WRITE;
/*!40000 ALTER TABLE `chanpinfenlei` DISABLE KEYS */;
INSERT INTO `chanpinfenlei` VALUES (41,'2022-04-02 06:42:51','产品分类1'),(42,'2022-04-02 06:42:51','产品分类2'),(43,'2022-04-02 06:42:51','产品分类3'),(44,'2022-04-02 06:42:51','产品分类4'),(45,'2022-04-02 06:42:51','产品分类5'),(46,'2022-04-02 06:42:51','产品分类6');
/*!40000 ALTER TABLE `chanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2022-04-02 06:42:51',1,1,'提问1','回复1',1),(72,'2022-04-02 06:42:51',2,2,'提问2','回复2',2),(73,'2022-04-02 06:42:51',3,3,'提问3','回复3',3),(74,'2022-04-02 06:42:51',4,4,'提问4','回复4',4),(75,'2022-04-02 06:42:51',5,5,'提问5','回复5',5),(76,'2022-04-02 06:42:51',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschanpin`
--

DROP TABLE IF EXISTS `discusschanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='产品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschanpin`
--

LOCK TABLES `discusschanpin` WRITE;
/*!40000 ALTER TABLE `discusschanpin` DISABLE KEYS */;
INSERT INTO `discusschanpin` VALUES (111,'2022-04-02 06:42:51',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-04-02 06:42:51',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-04-02 06:42:51',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-04-02 06:42:51',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-04-02 06:42:51',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-04-02 06:42:51',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongzixun`
--

DROP TABLE IF EXISTS `discusshuodongzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='活动资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongzixun`
--

LOCK TABLES `discusshuodongzixun` WRITE;
/*!40000 ALTER TABLE `discusshuodongzixun` DISABLE KEYS */;
INSERT INTO `discusshuodongzixun` VALUES (101,'2022-04-02 06:42:51',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-02 06:42:51',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-02 06:42:51',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-02 06:42:51',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-02 06:42:51',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-02 06:42:51',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstaolun`
--

DROP TABLE IF EXISTS `discusstaolun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstaolun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='讨论评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstaolun`
--

LOCK TABLES `discusstaolun` WRITE;
/*!40000 ALTER TABLE `discusstaolun` DISABLE KEYS */;
INSERT INTO `discusstaolun` VALUES (121,'2022-04-02 06:42:51',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-04-02 06:42:51',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-04-02 06:42:51',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-04-02 06:42:51',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-04-02 06:42:51',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-04-02 06:42:51',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstaolun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongzixun`
--

DROP TABLE IF EXISTS `huodongzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='活动资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongzixun`
--

LOCK TABLES `huodongzixun` WRITE;
/*!40000 ALTER TABLE `huodongzixun` DISABLE KEYS */;
INSERT INTO `huodongzixun` VALUES (31,'2022-04-02 06:42:51','标题1','简介1','2022-04-02','upload/huodongzixun_fengmian1.jpg','内容1'),(32,'2022-04-02 06:42:51','标题2','简介2','2022-04-02','upload/huodongzixun_fengmian2.jpg','内容2'),(33,'2022-04-02 06:42:51','标题3','简介3','2022-04-02','upload/huodongzixun_fengmian3.jpg','内容3'),(34,'2022-04-02 06:42:51','标题4','简介4','2022-04-02','upload/huodongzixun_fengmian4.jpg','内容4'),(35,'2022-04-02 06:42:51','标题5','简介5','2022-04-02','upload/huodongzixun_fengmian5.jpg','内容5'),(36,'2022-04-02 06:42:51','标题6','简介6','2022-04-02','upload/huodongzixun_fengmian6.jpg','内容6');
/*!40000 ALTER TABLE `huodongzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2022-04-02 06:42:51',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(92,'2022-04-02 06:42:51',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(93,'2022-04-02 06:42:51',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(94,'2022-04-02 06:42:51',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(95,'2022-04-02 06:42:51',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(96,'2022-04-02 06:42:51',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `youxiangdizhi` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `chenglishijian` date DEFAULT NULL COMMENT '成立时间',
  `qiyejianjie` longtext COMMENT '企业简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2022-04-02 06:42:51','企业名称1','负责人1','upload/qiye_fengmian1.jpg','邮箱地址1','企业地址1','企业规模1','2022-04-02','企业简介1','2022-04-02 14:42:51',1),(22,'2022-04-02 06:42:51','企业名称2','负责人2','upload/qiye_fengmian2.jpg','邮箱地址2','企业地址2','企业规模2','2022-04-02','企业简介2','2022-04-02 14:42:51',2),(23,'2022-04-02 06:42:51','企业名称3','负责人3','upload/qiye_fengmian3.jpg','邮箱地址3','企业地址3','企业规模3','2022-04-02','企业简介3','2022-04-02 14:42:51',3),(24,'2022-04-02 06:42:51','企业名称4','负责人4','upload/qiye_fengmian4.jpg','邮箱地址4','企业地址4','企业规模4','2022-04-02','企业简介4','2022-04-02 14:42:51',4),(25,'2022-04-02 06:42:51','企业名称5','负责人5','upload/qiye_fengmian5.jpg','邮箱地址5','企业地址5','企业规模5','2022-04-02','企业简介5','2022-04-02 14:42:51',5),(26,'2022-04-02 06:42:51','企业名称6','负责人6','upload/qiye_fengmian6.jpg','邮箱地址6','企业地址6','企业规模6','2022-04-02','企业简介6','2022-04-02 14:42:51',6);
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taolun`
--

DROP TABLE IF EXISTS `taolun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taolun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirongmiaoshu` longtext COMMENT '内容描述',
  `fenxianglianjie` varchar(200) DEFAULT NULL COMMENT '分享链接',
  `fenxiangshijian` datetime DEFAULT NULL COMMENT '分享时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='讨论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taolun`
--

LOCK TABLES `taolun` WRITE;
/*!40000 ALTER TABLE `taolun` DISABLE KEYS */;
INSERT INTO `taolun` VALUES (61,'2022-04-02 06:42:51','标题1','upload/taolun_fengmian1.jpg','内容描述1','分享链接1','2022-04-02 14:42:51','账号1','姓名1'),(62,'2022-04-02 06:42:51','标题2','upload/taolun_fengmian2.jpg','内容描述2','分享链接2','2022-04-02 14:42:51','账号2','姓名2'),(63,'2022-04-02 06:42:51','标题3','upload/taolun_fengmian3.jpg','内容描述3','分享链接3','2022-04-02 14:42:51','账号3','姓名3'),(64,'2022-04-02 06:42:51','标题4','upload/taolun_fengmian4.jpg','内容描述4','分享链接4','2022-04-02 14:42:51','账号4','姓名4'),(65,'2022-04-02 06:42:51','标题5','upload/taolun_fengmian5.jpg','内容描述5','分享链接5','2022-04-02 14:42:51','账号5','姓名5'),(66,'2022-04-02 06:42:51','标题6','upload/taolun_fengmian6.jpg','内容描述6','分享链接6','2022-04-02 14:42:51','账号6','姓名6');
/*!40000 ALTER TABLE `taolun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-02 06:42:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-02 06:42:51','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_zhaopian1.jpg'),(12,'2022-04-02 06:42:51','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_zhaopian2.jpg'),(13,'2022-04-02 06:42:51','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_zhaopian3.jpg'),(14,'2022-04-02 06:42:51','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_zhaopian4.jpg'),(15,'2022-04-02 06:42:51','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_zhaopian5.jpg'),(16,'2022-04-02 06:42:51','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-14 17:15:29
