-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.25-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cheque_management_system
--

CREATE DATABASE IF NOT EXISTS cheque_management_system;
USE cheque_management_system;

--
-- Definition of table `cheque_detail`
--

DROP TABLE IF EXISTS `cheque_detail`;
CREATE TABLE `cheque_detail` (
  `cheque_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cheque_detail_current_date` date DEFAULT NULL,
  `cheque_detail_cheque_number` varchar(50) DEFAULT NULL,
  `cheque_detail_bank` varchar(50) DEFAULT NULL,
  `cheque_detail_amount` decimal(10,2) DEFAULT NULL,
  `cheque_detail_effective_date` date DEFAULT NULL,
  `cheque_detail_account_pay_only` tinyint(1) DEFAULT NULL,
  `cheque_detail_client_name` varchar(450) DEFAULT NULL,
  `cheque_detail_user_id` int(10) unsigned NOT NULL,
  `cheque_detail_status` tinyint(1) unsigned DEFAULT '1',
  `cheque_detail_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`cheque_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_detail`
--

/*!40000 ALTER TABLE `cheque_detail` DISABLE KEYS */;
INSERT INTO `cheque_detail` (`cheque_detail_id`,`cheque_detail_current_date`,`cheque_detail_cheque_number`,`cheque_detail_bank`,`cheque_detail_amount`,`cheque_detail_effective_date`,`cheque_detail_account_pay_only`,`cheque_detail_client_name`,`cheque_detail_user_id`,`cheque_detail_status`,`cheque_detail_detail`) VALUES 
 (1,'2020-05-07','321585','Bank Of Ceylon','15000.00','2020-05-07',0,'0',0,1,'Received'),
 (2,'2020-05-17','321456','Bank Of Ceylon','250000.00','2020-08-12',0,'chamalki',0,1,'Issued'),
 (3,'2020-05-17','987888','Commercial Bank','37999.00','2020-06-12',0,'chamalki',0,1,'Received'),
 (4,'2020-05-17','666631','Hatton National Bank','200000.00','2020-01-15',0,'gachamalki',0,1,'Issued'),
 (5,'2020-05-21','321585','People\'s Bank','15000.00','2020-05-21',0,'malki',0,1,'Received'),
 (6,'2020-05-21','964875','Nations Trust','20000.00','2020-12-09',0,'gachamalki',0,1,'Received');
/*!40000 ALTER TABLE `cheque_detail` ENABLE KEYS */;


--
-- Definition of table `client_detail`
--

DROP TABLE IF EXISTS `client_detail`;
CREATE TABLE `client_detail` (
  `client_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_detail_name` varchar(200) DEFAULT NULL,
  `client_detail_contact_no` varchar(10) DEFAULT NULL,
  `client_detail_status` tinyint(1) unsigned DEFAULT '1',
  `client_detail_detail` varchar(450) DEFAULT NULL,
  `client_detail_nic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_detail`
--

/*!40000 ALTER TABLE `client_detail` DISABLE KEYS */;
INSERT INTO `client_detail` (`client_detail_id`,`client_detail_name`,`client_detail_contact_no`,`client_detail_status`,`client_detail_detail`,`client_detail_nic`) VALUES 
 (1,'amal','0117100100',0,'note','23342852v'),
 (2,'chamalki','0117100100',0,'note','23342852v'),
 (3,'gachamalki','32135465',1,'test note','32165489'),
 (4,'malki','32165498',0,'test note','23342852v'),
 (5,'amal','0117100100',1,'test note','23342852v');
/*!40000 ALTER TABLE `client_detail` ENABLE KEYS */;


--
-- Definition of table `login_detail`
--

DROP TABLE IF EXISTS `login_detail`;
CREATE TABLE `login_detail` (
  `login_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_detail_login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_detail_user_id` int(10) unsigned NOT NULL,
  `login_detail_logout_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_detail_status` tinyint(1) unsigned DEFAULT NULL,
  `login_detail_detail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`login_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_detail`
--

/*!40000 ALTER TABLE `login_detail` DISABLE KEYS */;
INSERT INTO `login_detail` (`login_detail_id`,`login_detail_login_date`,`login_detail_user_id`,`login_detail_logout_date`,`login_detail_status`,`login_detail_detail`) VALUES 
 (64,'2020-05-18 20:25:46',2,'2020-05-18 20:25:46',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (65,'2020-05-18 20:27:10',2,'2020-05-18 20:27:10',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (66,'2020-05-18 20:29:41',2,'2020-05-18 20:29:41',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (67,'2020-05-18 20:42:58',2,'2020-05-18 20:42:58',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (68,'2020-05-18 20:44:23',2,'2020-05-18 20:44:23',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (69,'2020-05-18 20:47:15',2,'2020-05-18 20:47:15',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (70,'2020-05-18 20:48:24',2,'2020-05-18 20:48:24',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (71,'2020-05-18 20:50:11',2,'2020-05-18 20:50:11',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (72,'2020-05-18 20:51:17',2,'2020-05-18 20:51:17',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (73,'2020-05-19 02:04:29',2,'2020-05-19 02:04:29',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (74,'2020-05-19 02:10:19',2,'2020-05-19 02:10:19',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (75,'2020-05-19 02:12:03',2,'2020-05-19 02:12:03',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (76,'2020-05-19 02:13:20',2,'2020-05-19 02:13:20',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (77,'2020-05-19 02:14:22',2,'2020-05-19 02:14:22',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (78,'2020-05-19 02:16:18',2,'2020-05-19 02:16:18',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (79,'2020-05-19 02:20:27',2,'2020-05-19 02:20:27',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (80,'2020-05-19 12:44:36',2,'2020-05-19 12:44:36',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (81,'2020-05-19 12:44:47',2,'2020-05-19 12:44:47',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (82,'2020-05-19 12:57:43',2,'2020-05-19 12:57:43',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (83,'2020-05-19 14:28:04',2,'2020-05-19 14:28:04',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (84,'2020-05-19 14:29:32',2,'2020-05-19 14:29:32',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (85,'2020-05-19 14:31:12',2,'2020-05-19 14:31:12',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (86,'2020-05-19 14:33:07',2,'2020-05-19 14:33:07',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (87,'2020-05-19 14:35:34',2,'2020-05-19 14:35:34',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (88,'2020-05-19 14:37:14',2,'2020-05-19 14:37:14',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (89,'2020-05-19 14:40:54',2,'2020-05-19 14:40:54',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (90,'2020-05-19 14:42:12',2,'2020-05-19 14:42:12',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (91,'2020-05-19 14:58:26',2,'2020-05-19 14:58:26',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (92,'2020-05-21 15:52:25',2,'2020-05-21 15:52:25',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (93,'2020-05-21 15:53:29',2,'2020-05-21 15:53:29',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (94,'2020-05-21 15:59:54',2,'2020-05-21 15:59:54',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (95,'2020-05-21 16:00:08',2,'2020-05-21 16:00:08',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (96,'2020-05-21 16:00:09',2,'2020-05-21 16:00:09',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (97,'2020-05-21 16:00:10',2,'2020-05-21 16:00:10',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (98,'2020-05-21 16:00:11',2,'2020-05-21 16:00:11',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (99,'2020-05-21 17:19:24',2,'2020-05-21 17:19:24',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (100,'2020-05-21 17:22:32',2,'2020-05-21 17:22:32',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (101,'2020-05-21 17:25:48',2,'2020-05-21 17:25:48',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (102,'2020-05-21 17:40:20',2,'2020-05-21 17:40:20',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (103,'2020-05-21 17:43:29',2,'2020-05-21 17:43:29',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (104,'2020-05-21 17:49:05',2,'2020-05-21 17:49:05',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (105,'2020-05-21 17:49:55',2,'2020-05-21 17:49:55',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (106,'2020-05-25 08:53:29',2,'2020-05-25 08:53:29',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows'),
 (107,'2020-05-25 08:56:37',2,'2020-05-25 08:56:37',1,' User chamalki -  browser Chrome-81.0.4044.138 -  os Windows');
/*!40000 ALTER TABLE `login_detail` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(450) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_status` tinyint(1) unsigned DEFAULT '1',
  `user_detail` varchar(450) DEFAULT NULL,
  `user_type` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`,`user_name`,`user_email`,`user_password`,`user_status`,`user_detail`,`user_type`) VALUES 
 (2,'chamalki','gachamalki@gmail.com','chamalki123',1,'Test',1),
 (3,'newUser123','rusirunirantha@gmail.com','321654987',0,'',1),
 (4,'test user ','test@gmail.com','123',0,'',1),
 (5,'vimansa','vima@gmail.com','123',1,'',1),
 (6,'drogo','drogo@email.com','123',1,'',1),
 (7,'amal111',NULL,NULL,1,NULL,1),
 (8,'amal111',NULL,NULL,0,NULL,1),
 (9,'bawaa','bawantha@gmail.com','123',1,'',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
