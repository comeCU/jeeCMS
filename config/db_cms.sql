CREATE DATABASE  IF NOT EXISTS `db_cms`;
  
USE `db_cms`;
  
  
/*Table structure for table  `t_arctype` */
  
  
DROP TABLE IF EXISTS `t_arctype`;
  
  
CREATE TABLE `t_arctype` (
  
   `id` int(11) NOT NULL AUTO_INCREMENT,
  
   `typeName` varchar(100) DEFAULT NULL,
  
   `sortNo` int(11) DEFAULT NULL,
  
   `keywords` varchar(400) DEFAULT NULL,
  
   `description` varchar(1000) DEFAULT NULL,
  
   PRIMARY KEY (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=8  DEFAULT CHARSET=utf8;


/*Data for the table `t_arctype`  */
  
  
insert  into  `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`) values  (1,'Java基础',1,NULL,NULL);
  
insert  into  `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`) values (2,'网页基础',2,'121','s ');
  
insert  into `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`)  values (4,'Java建站',3,NULL,NULL);
  
insert  into  `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`) values  (5,'Java爬虫',4,NULL,NULL);
  
insert  into  `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`) values (6,'网站SEO',5,NULL,NULL);
  
insert  into  `t_arctype`(`id`,`typeName`,`sortNo`,`keywords`,`description`) values (7,'广告联盟',6,NULL,NULL);


/*Table structure for table  `t_article` */
  
  
DROP TABLE IF EXISTS `t_article`;
  
  
CREATE TABLE `t_article` (
  
   `id` int(11) NOT NULL AUTO_INCREMENT,
  
   `title` varchar(100) DEFAULT NULL,
  
   `publishDate` datetime DEFAULT NULL,
  
   `content` text,
  
   `summary` varchar(500) DEFAULT NULL,
  
   `titleColor` varchar(100) DEFAULT NULL,
  
   `click` int(11) DEFAULT NULL,
  
   `isRecommend` tinyint(4) DEFAULT NULL,
  
   `isSlide` int(11) DEFAULT NULL,
  
   `slideImage` varchar(100) DEFAULT NULL,
  
   `typeId` int(11) DEFAULT NULL,
  
   `keyWords` varchar(100) DEFAULT NULL,
  
   PRIMARY KEY (`id`),
  
   KEY `typeId` (`typeId`),
  
   CONSTRAINT `t_article_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES  `t_arctype` (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=60  DEFAULT CHARSET=utf8;


/*Data for the table `t_article`  */
  
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (1,'测试java基础1','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',11,1,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (2,'测试java基础1','2016-01-04 00:00:00','测试java基础 内容','测试摘要','black',15,0,1,'1.jpg',1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (3,'测试java基础2','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,0,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (4,'测试java基础3','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,0,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (5,'测试java基础4','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,0,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (6,'测试java基础5','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,1,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (7,'测试java基础6','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,0,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (8,'测试java基础7','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,0,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (9,'测试java基础8','2016-01-02 00:00:00','测试java基础 内容','测试摘要','black',10,1,0,NULL,1,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (10,'测试网页基础1','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',12,0,0,NULL,2,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (11,'测试网页基础2','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',12,0,0,NULL,2,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (12,'测试网页基础3','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',11,1,0,NULL,2,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (13,'测试网页基础4','2016-03-02  02:01:30','测试网页基础 内容','测试摘要','black',49,0,1,'2.jpg',2,'1  s是');
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (14,'测试网页基础5','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',10,1,0,NULL,2,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (15,'测试网页基础6','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',10,0,0,NULL,2,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (16,'测试网页基础是内容啊是滴死读书是滴是滴是滴啊1111','2016-08-02  00:00:00','测试网页基础 内容 s是滴死读书是滴是滴是滴11111','测试摘要','red',15,1,0,NULL,2,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (17,'测试网页基础8','2016-01-02  00:00:00','测试网页基础 内容','测试摘要','black',10,0,0,NULL,2,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (18,'网页Java建站基础1','2016-04-02 00:00:00','网页Java建站基础 内容','测试摘要','black',16,1,0,NULL,4,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (19,'网页Java建站基础4','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',10,0,0,NULL,4,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (20,'网页Java建站基础3','2016-01-04 00:00:00','网页Java建站基础 内容','测试摘要','black',10,1,0,NULL,4,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (21,'网页Java建站基础4','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',11,0,1,'4.jpg',4,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (22,'网页Java建站基础5','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',10,1,0,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (23,'网页Java建站基础6','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',10,0,0,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (24,'网页Java建站基础7','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',10,1,0,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (25,'网页Java建站基础8','2016-01-02 00:00:00','网页Java建站基础 内容','测试摘要','black',10,0,0,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (26,'Java爬虫基础1','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',10,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (27,'Java爬虫基础5','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (28,'Java爬虫基础3','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (29,'Java爬虫基础5','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',12,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (30,'Java爬虫基础5','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (31,'Java爬虫基础6','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (32,'Java爬虫基础7','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,1,'3.jpg',5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (33,'Java爬虫基础8','2016-01-02  00:00:00','Java爬虫基础 内容','测试摘要','black',11,0,0,NULL,5,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (34,'网站SEO1','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (35,'网站SEO6','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (36,'网站SEO3','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (37,'网站SEO6','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,1,'5.jpg',6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (38,'网站SEO6','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (39,'网站SEO6','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (40,'网站SEO7','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (41,'网站SEO8','2016-01-02  00:00:00','网站SEO 内容','测试摘要','black',11,0,0,NULL,6,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (42,'广告联盟1','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',11,0,0,NULL,7,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (43,'广告联盟7','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (44,'广告联盟3','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (45,'广告联盟7','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (46,'广告联盟7','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (47,'广告联盟7','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (48,'广告联盟7','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (49,'广告联盟8','2016-01-02  00:00:00','广告联盟 内容','测试摘要','black',10,0,0,NULL,7,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (50,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (58,'11',NULL,'<p>21321<br/></p>','21','',0,0,0,NULL,1,'');
  
insert  into  `t_article`(`id`,`title`,`publishDate`,`content`,`summary`,`titleColor`,`click`,`isRecommend`,`isSlide`,`slideImage`,`typeId`,`keyWords`)  values (59,'32',NULL,'<p>21321<br/></p>','dsafda','#FF0000',0,1,1,'20161029085937.jpg',1,'ha  ha');


/*Table structure for table  `t_link` */
  
  
DROP TABLE IF EXISTS `t_link`;
  
  
CREATE TABLE `t_link` (
  
   `id` int(11) NOT NULL AUTO_INCREMENT,
  
   `name` varchar(100) DEFAULT NULL,
  
   `url` varchar(100) DEFAULT NULL,
  
   `sortNo` int(11) DEFAULT NULL,
  
   PRIMARY KEY (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=9  DEFAULT CHARSET=utf8;


/*Data for the table `t_link` */
  
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (1,'测试1','https://free-ss.site',1);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (2,'测试2','https://free-ss.site',2);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (3,'测试2','https://free-ss.site',3);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (4,'测试2','https://free-ss.site',4);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (5,'测试2',NULL,5);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (6,'测试2',NULL,6);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (7,'测试2',NULL,7);
  
insert  into `t_link`(`id`,`name`,`url`,`sortNo`)  values (8,'测试2',NULL,8);


/*Table structure for table  `t_manager` */
  
  
DROP TABLE IF EXISTS `t_manager`;
  
  
CREATE TABLE `t_manager` (
  
   `id` int(11) NOT NULL AUTO_INCREMENT,
  
   `userName` varchar(50) DEFAULT NULL,
  
   `password` varchar(100) DEFAULT NULL,
  
   PRIMARY KEY (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=2  DEFAULT CHARSET=utf8;


/*Data for the table `t_manager`  */
  
  
insert  into  `t_manager`(`id`,`userName`,`password`) values  (1,'admin','fd09857cf8e1f02cfab6cbe40a08774a');




