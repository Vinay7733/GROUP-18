/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.24 : Database - ta
*********************************************************************
Server version : 5.5.24
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `ta`;

USE `ta`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `course_table` */

DROP TABLE IF EXISTS `course_table`;

CREATE TABLE `course_table` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course_table` */

insert  into `course_table`(`course_id`,`course_name`,`description`) values (371,'DSA','DSA stands for Digital Signature Algorithm. It is a cryptographic algorithm used to generate digital signatures'),(531,'Environment Must','referring to environmental must-haves, requirements, guidelines'),(562,'Python Programming','Python is a popular general-purpose programming language. It is used in machine learning, web development, desktop applications, and many other fields.');

/*Table structure for table `job_application` */

DROP TABLE IF EXISTS `job_application`;

CREATE TABLE `job_application` (
  `course_id` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `has_served_as_ta` varchar(250) DEFAULT NULL,
  `relevant_courses` varchar(250) DEFAULT NULL,
  `resume` varchar(300) DEFAULT NULL,
  `application_id` varchar(250) DEFAULT NULL,
  `date_added` varchar(250) DEFAULT NULL,
  `otherCourses` varchar(300) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `job_application` */

insert  into `job_application`(`course_id`,`username`,`has_served_as_ta`,`relevant_courses`,`resume`,`application_id`,`date_added`,`otherCourses`,`status`) values ('371','1','yes','sa,2023-12-01,2023-12-12;','C:/Users/Empow/OneDrive/Desktop/uploads/Keeping dogs at home can offer a variety of benefits.docx','TA1','01-12-2023','DSA,Environment Must','Accepted'),('562','1','yes','C language,2023-07-01,2023-10-05;','C:/Users/Empow/OneDrive/Desktop/uploads/PERSONAL DETAILS.docx','TA2','01-12-2023','DSA','Rejected'),('562','vinay','no','no','C:/Users/Empow/OneDrive/Desktop/uploads/Power-BI-Course.pdf','TA3','01-12-2023','DSA,Environment Must,Python Programming','Recommeded to Commitee');

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `date_uploaded` varchar(200) DEFAULT NULL,
  `course_id` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `report` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

insert  into `marks`(`date_uploaded`,`course_id`,`username`,`report`) values ('01-12-2023','371','1','C:/Users/Empow/OneDrive/Desktop/uploads/anushka.docx');

/*Table structure for table `tausers` */

DROP TABLE IF EXISTS `tausers`;

CREATE TABLE `tausers` (
  `full_name` varchar(250) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tausers` */

insert  into `tausers`(`full_name`,`mobile_number`,`username`,`password`,`email`,`address`,`qualification`) values ('aa','9856325698','1','1','aa@gmail.com','a','1'),('Akash','8407584600','akash2023','A2023','inform204@gmail.com','USA','Btech'),('praveen','9632569856','praveen','praveen123','p@gmail.com','USA','masters'),('vinay','9855544544','vinay','vinay@2023','vinay@gmail.com','usa','masters');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
