
CREATE DATABASE /*!32312 IF NOT EXISTS*/`attendance` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `attendance`;

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`admin_id`,`admin_user_name`,`admin_password`) values 
(1,'admin','$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

/*Table structure for table `tbl_attendance` */

DROP TABLE IF EXISTS `tbl_attendance`;

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_attendance` */

insert  into `tbl_attendance`(`attendance_id`,`student_id`,`attendance_status`,`attendance_date`,`teacher_id`) values 
(1,7,'Present','2021-05-01',3),
(2,8,'Present','2021-05-01',3),
(3,9,'Absent','2021-05-01',3),
(4,10,'Present','2021-05-01',3),
(5,11,'Present','2021-05-01',3),
(6,7,'Absent','2021-05-02',3),
(7,8,'Present','2021-05-02',3),
(8,9,'Present','2021-05-02',3),
(9,10,'Present','2021-05-02',3),
(10,11,'Absent','2021-05-02',3),
(11,1,'Present','2021-05-01',2),
(12,3,'Present','2021-05-01',2),
(13,4,'Present','2021-05-01',2),
(14,5,'Present','2021-05-01',2),
(15,11,'Present','2021-05-14',3);

/*Table structure for table `tbl_grade` */

DROP TABLE IF EXISTS `tbl_grade`;

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(10) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_grade` */

insert  into `tbl_grade`(`grade_id`,`grade_name`) values 
(1,'11 - A'),
(2,'11 - B'),
(3,'12 - A'),
(4,'12 - B'),
(5,'11 - C');

/*Table structure for table `tbl_student` */

DROP TABLE IF EXISTS `tbl_student`;

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_student` */

insert  into `tbl_student`(`student_id`,`student_name`,`student_roll_number`,`student_dob`,`student_grade_id`) values 
(1,'az antor',1,'2021-03-04',1),
(3,'sajid bin yusuf',2,'2021-04-19',1),
(4,'Renee Crowe',3,'2021-01-15',1),
(5,'Lillian Williams',4,'2021-12-14',1),
(6,'Betty Mayer',5,'2003-07-12',1),
(7,'Sally Luna',1,'2003-12-19',2),
(8,'Richard Smith',2,'2002-12-19',2),
(9,'Phyllis Shoop',3,'2003-04-01',2),
(10,'Earl Perry',4,'2003-08-15',2),
(11,'Minnie Morris',5,'2003-06-18',2),
(12,'Lisa Ochoa',1,'2002-05-01',3),
(13,'Marcus Holmes',2,'2002-04-12',3),
(14,'Ernesto Arnold',3,'2002-10-12',3),
(15,'Lillian Harris',4,'2002-02-27',3),
(16,'Charles Reed',5,'2002-06-12',3),
(17,'Lois Gonzales',1,'2002-08-17',4),
(18,'Mary Floyd',2,'2002-09-18',4),
(19,'Maria Biggs',3,'2002-07-15',4),
(20,'Cleo Phillips',4,'2002-01-14',4),
(21,'Rafael Royal',5,'2002-12-05',4),
(22,'Jeremy Breawer',1,'2002-04-11',5);

/*Table structure for table `tbl_teacher` */

DROP TABLE IF EXISTS `tbl_teacher`;

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_teacher` */

insert  into `tbl_teacher`(`teacher_id`,`teacher_name`,`teacher_address`,`teacher_emailid`,`teacher_password`,`teacher_qualification`,`teacher_doj`,`teacher_image`,`teacher_grade_id`) values 
(2,'Jonathan Gonzalez','1810 Kuhl Avenue Gainesville, GA 30501','jonathan12@gmail.com','$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2','B.Sc, B.Ed','2019-05-01','5cdd2ed638edc.jpg',1),
(3,'Peter Parker','620 Jody Road, Philadelphia, PA 19108','peter_parker@gmail.com','$2y$10$jmgJN1xvteg6XqBnHvT7UerviGNJOSnF8KFzBHnCky0FJWa74Nvmu','M.Sc, B. Ed','2017-12-31','5ce53488d50ec.jpg',2),
(4,'John Smith','780 University Drive, Chicago, IL 60606','john.smith@gmail.com','$2y$10$Vb9t4CvkJwm41KXgPehuLOFcM7o5Qdm1RFxSBxzh9cvBcc21AUAiW','B.Sc','2019-05-01','5cdd2f35be8fa.jpg',3),
(5,'Donna Hubber','3354 Round Table Drive, Cincinnati, OH 45240','donna.huber@gmail.com','$2y$10$SVxX4/7lf3pDs1vrpuJexOG7Ue1e1jqIntGmXip3JzxkB753uxBiO','M.Sc','2019-05-01','5cdd2f767568c.jpg',4);
