-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl97142251
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
-- Current Database: `cl97142251`
--

/*!40000 DROP DATABASE IF EXISTS `cl97142251`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl97142251` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl97142251`;

--
-- Table structure for table `chapterxiaoshuoxinxi`
--

DROP TABLE IF EXISTS `chapterxiaoshuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapterxiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `chapternum` int(11) NOT NULL COMMENT '章节数',
  `chaptertitle` varchar(200) NOT NULL COMMENT '章节标题',
  `content` longtext NOT NULL COMMENT '章节内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='小说信息章节表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapterxiaoshuoxinxi`
--

LOCK TABLES `chapterxiaoshuoxinxi` WRITE;
/*!40000 ALTER TABLE `chapterxiaoshuoxinxi` DISABLE KEYS */;
INSERT INTO `chapterxiaoshuoxinxi` VALUES (131,'2024-03-18 14:00:28',81,1,'第一章标题','第一章内容'),(132,'2024-03-18 14:00:28',81,2,'第二章标题','第二章内容'),(133,'2024-03-18 14:00:28',81,3,'第三章标题','第四章内容'),(134,'2024-03-18 14:00:28',81,4,'第四章标题','第四章内容'),(135,'2024-03-18 14:00:28',81,5,'第五章标题','第五章内容'),(136,'2024-03-18 14:00:28',81,6,'第六章标题','第六章内容'),(137,'2024-03-18 14:04:45',87,1,'发帖如果以后','<p>地方如图银行卡胡杨炯非官方户籍111</p>'),(138,'2024-03-18 14:04:58',87,2,'归于好几块哦','<p>的染头发工业户籍染头发人工湖123</p>');
/*!40000 ALTER TABLE `chapterxiaoshuoxinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/7fabdfb2a47eb6a7d4ba6a567c82d8fa-1710770873215.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiaoshuoxinxi`
--

DROP TABLE IF EXISTS `discussxiaoshuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小说信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiaoshuoxinxi`
--

LOCK TABLES `discussxiaoshuoxinxi` WRITE;
/*!40000 ALTER TABLE `discussxiaoshuoxinxi` DISABLE KEYS */;
INSERT INTO `discussxiaoshuoxinxi` VALUES (1,'2024-03-18 14:06:07',87,57,'file/2017081810481957448-1710770560955.jpg','11','消防车GV编号123123','的人发帖如果有和112');
/*!40000 ALTER TABLE `discussxiaoshuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszuojia`
--

DROP TABLE IF EXISTS `discusszuojia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszuojia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='作家评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszuojia`
--

LOCK TABLES `discusszuojia` WRITE;
/*!40000 ALTER TABLE `discusszuojia` DISABLE KEYS */;
INSERT INTO `discusszuojia` VALUES (1,'2024-03-18 14:05:42',67,57,'file/2017081810481957448-1710770560955.jpg','11','打算让他飞规划局123','大学城风格VB和就发货111');
/*!40000 ALTER TABLE `discusszuojia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duzhe`
--

DROP TABLE IF EXISTS `duzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='读者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duzhe`
--

LOCK TABLES `duzhe` WRITE;
/*!40000 ALTER TABLE `duzhe` DISABLE KEYS */;
INSERT INTO `duzhe` VALUES (51,'2024-03-18 14:00:28','账号1','姓名1','123456','file/duzheTouxiang1.jpg','男','19819881111'),(52,'2024-03-18 14:00:28','账号2','姓名2','123456','file/duzheTouxiang2.jpg','男','19819881112'),(53,'2024-03-18 14:00:28','账号3','姓名3','123456','file/duzheTouxiang3.jpg','男','19819881113'),(54,'2024-03-18 14:00:28','账号4','姓名4','123456','file/duzheTouxiang4.jpg','男','19819881114'),(55,'2024-03-18 14:00:28','账号5','姓名5','123456','file/duzheTouxiang5.jpg','男','19819881115'),(56,'2024-03-18 14:00:28','账号6','姓名6','123456','file/duzheTouxiang6.jpg','男','19819881116'),(57,'2024-03-18 14:02:47','11','依依','111','file/2017081810481957448-1710770560955.jpg','女','13823813811');
/*!40000 ALTER TABLE `duzhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-18 14:00:28','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"回复\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"fontClass\":\"icon-common41\",\"menu\":\"留言板管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"小说分类\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuofenlei\"}],\"fontClass\":\"icon-common17\",\"menu\":\"小说分类管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common45\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"读者\",\"menuJump\":\"列表\",\"tableName\":\"duzhe\"}],\"fontClass\":\"icon-user4\",\"menu\":\"读者管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"作家\",\"menuJump\":\"列表\",\"tableName\":\"zuojia\"}],\"fontClass\":\"icon-user6\",\"menu\":\"作家管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"小说分类统计\",\"查看评论\"],\"menu\":\"小说信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuoxinxi\"}],\"fontClass\":\"icon-common1\",\"menu\":\"小说作品管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"小说资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common42\",\"menu\":\"小说资讯管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"作家\",\"menuJump\":\"列表\",\"tableName\":\"zuojia\"}],\"menu\":\"作家管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\"],\"menu\":\"小说资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"小说资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"查看评论\",\"章节管理\"],\"menu\":\"小说信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuoxinxi\"}],\"menu\":\"小说作品管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common20\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的关注\",\"menuJump\":\"41\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common30\",\"menu\":\"我的关注管理\",\"unicode\":\"&#xee30;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"作家\",\"menuJump\":\"列表\",\"tableName\":\"zuojia\"}],\"menu\":\"作家管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\"],\"menu\":\"小说资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"小说资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"查看评论\",\"章节管理\"],\"menu\":\"小说信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuoxinxi\"}],\"menu\":\"小说作品管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"读者\",\"tableName\":\"duzhe\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"作家\",\"menuJump\":\"列表\",\"tableName\":\"zuojia\"}],\"fontClass\":\"icon-user6\",\"menu\":\"作家管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"回复\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"fontClass\":\"icon-common41\",\"menu\":\"留言板管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"小说资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common42\",\"menu\":\"小说资讯管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"章节管理\"],\"menu\":\"小说信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuoxinxi\"}],\"fontClass\":\"icon-common1\",\"menu\":\"小说作品管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"作家\",\"menuJump\":\"列表\",\"tableName\":\"zuojia\"}],\"menu\":\"作家管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\"],\"menu\":\"小说资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"小说资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"查看评论\",\"章节管理\"],\"menu\":\"小说信息\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshuoxinxi\"}],\"menu\":\"小说作品管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"作家\",\"tableName\":\"zuojia\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (41,'2024-03-18 14:00:28',1,'用户名1','file/messagesAvatarurl1.jpg','留言内容1','file/messagesCpicture1.jpg','回复内容1','file/messagesRpicture1.jpg'),(42,'2024-03-18 14:00:28',2,'用户名2','file/messagesAvatarurl2.jpg','留言内容2','file/messagesCpicture2.jpg','回复内容2','file/messagesRpicture2.jpg'),(43,'2024-03-18 14:00:28',3,'用户名3','file/messagesAvatarurl3.jpg','留言内容3','file/messagesCpicture3.jpg','回复内容3','file/messagesRpicture3.jpg'),(44,'2024-03-18 14:00:28',4,'用户名4','file/messagesAvatarurl4.jpg','留言内容4','file/messagesCpicture4.jpg','回复内容4','file/messagesRpicture4.jpg'),(45,'2024-03-18 14:00:28',5,'用户名5','file/messagesAvatarurl5.jpg','留言内容5','file/messagesCpicture5.jpg','回复内容5','file/messagesRpicture5.jpg'),(46,'2024-03-18 14:00:28',6,'用户名6','file/messagesAvatarurl6.jpg','留言内容6','file/messagesCpicture6.jpg','回复内容6','file/messagesRpicture6.jpg'),(47,'2024-03-18 14:05:25',57,'11','file/2017081810481957448-1710770560955.jpg','<p>大润发太过于户籍看111</p>','','<p>生长的染头发工业户籍123</p>','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='小说资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-18 14:00:28','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-18 14:00:28','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(35,'2024-03-18 14:00:28','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-18 14:00:28','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2024-03-18 14:05:36',67,'zuojia','杨洋','file/202011172233050891-1710770595265.png','41','','',57),(2,'2024-03-18 14:05:57',87,'xiaoshuoxinxi','儿童与汇金','file/7fabdfb2a47eb6a7d4ba6a567c82d8fa-1710770645999.jpg','1','小说分类3','',57);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-18 14:00:28','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshuofenlei`
--

DROP TABLE IF EXISTS `xiaoshuofenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshuofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuofenlei` varchar(200) DEFAULT NULL COMMENT '小说分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshuofenlei` (`xiaoshuofenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='小说分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshuofenlei`
--

LOCK TABLES `xiaoshuofenlei` WRITE;
/*!40000 ALTER TABLE `xiaoshuofenlei` DISABLE KEYS */;
INSERT INTO `xiaoshuofenlei` VALUES (71,'2024-03-18 14:00:28','小说分类1'),(72,'2024-03-18 14:00:28','小说分类2'),(73,'2024-03-18 14:00:28','小说分类3'),(74,'2024-03-18 14:00:28','小说分类4'),(75,'2024-03-18 14:00:28','小说分类5'),(76,'2024-03-18 14:00:28','小说分类6'),(77,'2024-03-18 14:07:39','言情');
/*!40000 ALTER TABLE `xiaoshuofenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshuoxinxi`
--

DROP TABLE IF EXISTS `xiaoshuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuomingcheng` varchar(200) DEFAULT NULL COMMENT '小说名称',
  `xiaoshuofenlei` varchar(200) DEFAULT NULL COMMENT '小说分类',
  `fengmian` longtext COMMENT '封面',
  `xiaoshuojianjie` longtext COMMENT '小说简介',
  `zuojiazhanghao` varchar(200) DEFAULT NULL COMMENT '作家账号',
  `zuojiaxingming` varchar(200) DEFAULT NULL COMMENT '作家姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='小说信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshuoxinxi`
--

LOCK TABLES `xiaoshuoxinxi` WRITE;
/*!40000 ALTER TABLE `xiaoshuoxinxi` DISABLE KEYS */;
INSERT INTO `xiaoshuoxinxi` VALUES (81,'2024-03-18 14:00:28','小说名称1','小说分类1','file/xiaoshuoxinxiFengmian1.jpg,file/xiaoshuoxinxiFengmian2.jpg,file/xiaoshuoxinxiFengmian3.jpg','小说简介1','作家账号1','作家姓名1',1,'2024-03-18 14:07:24',3),(82,'2024-03-18 14:00:28','小说名称2','小说分类2','file/xiaoshuoxinxiFengmian2.jpg,file/xiaoshuoxinxiFengmian3.jpg,file/xiaoshuoxinxiFengmian4.jpg','小说简介2','作家账号2','作家姓名2',2,'2024-03-18 22:00:28',2),(83,'2024-03-18 14:00:28','小说名称3','小说分类3','file/xiaoshuoxinxiFengmian3.jpg,file/xiaoshuoxinxiFengmian4.jpg,file/xiaoshuoxinxiFengmian5.jpg','小说简介3','作家账号3','作家姓名3',3,'2024-03-18 22:00:28',3),(84,'2024-03-18 14:00:28','小说名称4','小说分类4','file/xiaoshuoxinxiFengmian4.jpg,file/xiaoshuoxinxiFengmian5.jpg,file/xiaoshuoxinxiFengmian6.jpg','小说简介4','作家账号4','作家姓名4',4,'2024-03-18 22:00:28',4),(85,'2024-03-18 14:00:28','小说名称5','小说分类5','file/xiaoshuoxinxiFengmian5.jpg,file/xiaoshuoxinxiFengmian6.jpg,file/xiaoshuoxinxiFengmian7.jpg','小说简介5','作家账号5','作家姓名5',5,'2024-03-18 22:00:28',5),(86,'2024-03-18 14:00:28','小说名称6','小说分类6','file/xiaoshuoxinxiFengmian6.jpg,file/xiaoshuoxinxiFengmian7.jpg,file/xiaoshuoxinxiFengmian8.jpg','小说简介6','作家账号6','作家姓名6',6,'2024-03-18 22:00:28',6),(87,'2024-03-18 14:04:16','儿童与汇金','小说分类3','file/7fabdfb2a47eb6a7d4ba6a567c82d8fa-1710770645999.jpg','<p>色的热付通该用户即可123现代风格和那就色的热付通该用户即可123现代风格和那就色的热付通该用户即可123现代风格和那就</p>','88','杨洋',1,'2024-03-18 14:09:45',2);
/*!40000 ALTER TABLE `xiaoshuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuojia`
--

DROP TABLE IF EXISTS `zuojia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuojia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuojiazhanghao` varchar(200) NOT NULL COMMENT '作家账号',
  `zuojiaxingming` varchar(200) DEFAULT NULL COMMENT '作家姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhaopian` longtext COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zuojiajianjie` varchar(200) DEFAULT NULL COMMENT '作家简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuojiazhanghao` (`zuojiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='作家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuojia`
--

LOCK TABLES `zuojia` WRITE;
/*!40000 ALTER TABLE `zuojia` DISABLE KEYS */;
INSERT INTO `zuojia` VALUES (61,'2024-03-18 14:00:28','作家账号1','作家姓名1','123456','file/zuojiaZhaopian1.jpg','男','19819881111','作家简介1'),(62,'2024-03-18 14:00:28','作家账号2','作家姓名2','123456','file/zuojiaZhaopian2.jpg','男','19819881112','作家简介2'),(63,'2024-03-18 14:00:28','作家账号3','作家姓名3','123456','file/zuojiaZhaopian3.jpg','男','19819881113','作家简介3'),(64,'2024-03-18 14:00:28','作家账号4','作家姓名4','123456','file/zuojiaZhaopian4.jpg','男','19819881114','作家简介4'),(65,'2024-03-18 14:00:28','作家账号5','作家姓名5','123456','file/zuojiaZhaopian5.jpg','男','19819881115','作家简介5'),(66,'2024-03-18 14:00:28','作家账号6','作家姓名6','123456','file/zuojiaZhaopian6.jpg','男','19819881116','作家简介6'),(67,'2024-03-18 14:03:27','88','杨洋','88','file/202011172233050891-1710770595265.png','男','13823813888','色胆如天复印户口888');
/*!40000 ALTER TABLE `zuojia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 19:57:03
