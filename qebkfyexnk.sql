-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `add_fee`;
CREATE TABLE `add_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` int(11) NOT NULL DEFAULT 20230414,
  `name` text NOT NULL,
  `class` text NOT NULL,
  `phone_no` text NOT NULL,
  `father_name` text NOT NULL,
  `date` date NOT NULL,
  `course_fee` int(11) NOT NULL,
  `discount_amt` int(11) NOT NULL,
  `total_fee` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `add_hostel`;
CREATE TABLE `add_hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosteladmission_no` text NOT NULL,
  `hostel_invoice` int(11) DEFAULT 20230416,
  `name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `phone_no` text NOT NULL,
  `hostel_name` text NOT NULL,
  `hostel_fee` int(11) NOT NULL,
  `class` text NOT NULL,
  `gender` text NOT NULL,
  `room_no` text NOT NULL,
  `room_type` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `add_hostel` (`id`, `hosteladmission_no`, `hostel_invoice`, `name`, `father_name`, `mother_name`, `phone_no`, `hostel_name`, `hostel_fee`, `class`, `gender`, `room_no`, `room_type`, `created_at`, `updated_at`) VALUES
(4,	'12',	20230416,	'rjgjrgregb jkrbgbw',	'eorgjer',	'kjrekrhrkeg',	'9555555',	'Satpuda',	546545454,	'7',	'Female',	'AC',	'sljhherhg',	'2023-10-28 10:26:38',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `alumni_events`;
CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `alumni_students`;
CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `attendence_type`;
CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Present',	'<b class=\"text text-success\">P</b>',	'yes',	'2016-06-23 18:11:37',	'0000-00-00'),
(2,	'Late With Excuse',	'<b class=\"text text-warning\">E</b>',	'no',	'2018-05-29 08:19:48',	'0000-00-00'),
(3,	'Late',	'<b class=\"text text-warning\">L</b>',	'yes',	'2016-06-23 18:12:28',	'0000-00-00'),
(4,	'Absent',	'<b class=\"text text-danger\">A</b>',	'yes',	'2016-10-11 11:35:40',	'0000-00-00'),
(5,	'Holiday',	'H',	'yes',	'2016-10-11 11:35:01',	'0000-00-00'),
(6,	'Half Day',	'<b class=\"text text-warning\">F</b>',	'yes',	'2016-06-23 18:12:28',	'0000-00-00');

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `barcode_image` varchar(50) DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `barcode_image`, `available`, `is_active`, `created_at`, `updated_at`) VALUES
(3,	'Science Life',	'123',	'',	'',	'',	'',	'',	0,	0.00,	'2023-10-21',	'',	'barcodes/80433.png',	'yes',	'no',	'2023-10-21 10:05:34',	NULL),
(4,	'novel',	'123',	'456',	'test',	'789',	'test',	'test',	45,	4500.00,	'2023-10-21',	'test',	'barcodes/77251.png',	'yes',	'no',	'2023-10-21 10:15:22',	NULL),
(5,	'fdcsrfsrgetgr',	'',	'',	'',	'',	'',	'',	0,	0.00,	'2023-10-21',	'',	'barcodes/78891.png',	'yes',	'no',	'2023-10-21 10:27:49',	NULL),
(7,	'bh',	'bhb',	'hbhb',	'hbh',	'bh',	'hbhb',	'hbhb',	0,	0.00,	'2023-10-21',	'hbhb',	'barcodes/85429.png',	'yes',	'no',	'2023-10-21 12:39:47',	NULL);

DROP TABLE IF EXISTS `book_issues`;
CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `book_issues` (`id`, `book_id`, `duereturn_date`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES
(1,	4,	'2023-11-04',	NULL,	'2023-11-04',	0,	1,	'no',	'2023-11-04 09:13:23');

DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`) VALUES
(1,	'userlogin',	0,	'2021-01-19 08:10:29'),
(2,	'login',	0,	'2021-01-19 08:10:31'),
(3,	'admission',	0,	'2021-01-19 04:48:11'),
(4,	'complain',	0,	'2021-01-19 04:48:13'),
(5,	'contact_us',	0,	'2021-01-19 04:48:15');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `certificates`;
CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES
(1,	'Sample Transfer Certificate',	'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.',	'Reff. No.....1111111.........',	'To Whomever It May Concern',	'Date: _10__/_10__/__2019__',	'.................................<br>admin',	'.................................<br>principal',	'.................................<br>admin',	'sampletc121.png',	'2019-12-21 15:14:34',	'0000-00-00',	2,	1,	360,	400,	480,	810,	1,	230);

DROP TABLE IF EXISTS `chat_connections`;
CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_user_one` (`chat_user_one`),
  KEY `chat_user_two` (`chat_user_two`),
  CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `chat_connections` (`id`, `chat_user_one`, `chat_user_two`, `ip`, `time`, `created_at`, `updated_at`) VALUES
(1,	1,	2,	NULL,	NULL,	'2022-07-15 07:38:01',	NULL);

DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_user_id` (`chat_user_id`),
  KEY `chat_connection_id` (`chat_connection_id`),
  CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `chat_messages` (`id`, `message`, `chat_user_id`, `ip`, `time`, `is_first`, `is_read`, `chat_connection_id`, `created_at`) VALUES
(1,	'you are now connected on chat',	2,	'',	0,	1,	0,	1,	NULL),
(2,	'hii',	2,	'',	0,	0,	0,	1,	'2022-07-15 13:08:04');

DROP TABLE IF EXISTS `chat_users`;
CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `student_id` (`student_id`),
  KEY `create_staff_id` (`create_staff_id`),
  KEY `create_student_id` (`create_student_id`),
  CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `chat_users` (`id`, `user_type`, `staff_id`, `student_id`, `create_staff_id`, `create_student_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'staff',	1,	NULL,	NULL,	NULL,	0,	'2022-07-15 07:38:01',	NULL),
(2,	'staff',	3,	NULL,	1,	NULL,	0,	'2022-07-15 07:38:01',	NULL);

DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(6,	'CBSE 1-4',	'no',	'2023-10-18 21:48:06',	NULL),
(7,	'CBSE 5',	'no',	'2023-10-18 21:48:16',	NULL),
(8,	'CBSE 6',	'yes',	'2023-10-31 08:03:34',	NULL),
(9,	'CBSE 7',	'no',	'2023-10-18 21:48:41',	NULL),
(10,	'CBSE 8',	'no',	'2023-10-18 21:48:57',	NULL),
(11,	'CBSE 9',	'no',	'2023-10-18 21:49:08',	NULL),
(12,	'CBSE 10',	'no',	'2023-10-18 21:49:24',	NULL),
(13,	'CBSE 11 MAIN',	'no',	'2023-10-18 21:49:45',	NULL),
(14,	'CBSE 11 COMBINED',	'no',	'2023-10-18 21:50:01',	NULL),
(15,	'CBSE 11 COMMERCE',	'no',	'2023-10-18 21:50:15',	NULL),
(16,	'CBSE 12 MAIN',	'no',	'2023-10-18 21:50:40',	NULL),
(17,	'CBSE 12 COMBINED',	'no',	'2023-10-18 21:50:59',	NULL),
(18,	'CBSE 12 COMMERCE',	'no',	'2023-10-18 21:51:14',	NULL),
(19,	'CBSE 2 YEAR 9+10',	'no',	'2023-10-18 21:52:23',	NULL),
(20,	'CBSE 2 YEAR 11+12 MAIN',	'no',	'2023-10-18 21:52:50',	NULL),
(21,	'CBSE 2 YEAR 11+12 COMBINED',	'no',	'2023-10-18 21:53:13',	NULL),
(22,	'CBSE 2 YEAR 11+12 COMMERCE',	'no',	'2023-10-18 21:53:42',	NULL),
(23,	'CGBSE 5',	'no',	'2023-10-18 21:54:40',	NULL),
(24,	'CGBSE 6',	'no',	'2023-10-18 21:54:49',	NULL),
(25,	'CGBSE 7',	'no',	'2023-10-18 21:55:01',	NULL),
(26,	'CGBSE 8',	'no',	'2023-10-18 21:55:16',	NULL),
(27,	'CGBSE 9',	'no',	'2023-10-18 21:55:43',	NULL),
(28,	'CGBSE 10',	'no',	'2023-10-18 21:55:53',	NULL),
(29,	'CGBSE 11 MAIN',	'no',	'2023-10-18 21:56:30',	NULL),
(30,	'CGBSE 11 COMBINED',	'no',	'2023-10-18 21:56:47',	NULL),
(31,	'CGBSE 11 COMMERCE',	'no',	'2023-10-18 21:57:08',	NULL),
(32,	'CGBSE 12 MAIN',	'no',	'2023-10-18 21:57:30',	NULL),
(33,	'CGBSE 12 COMBINED',	'no',	'2023-10-18 21:58:04',	NULL),
(34,	'CGBSE 12 COMMERCE',	'no',	'2023-10-18 21:58:30',	NULL),
(35,	'CGBSE 2 YEAR 9+10',	'no',	'2023-10-18 21:58:58',	NULL),
(36,	'CGBSE 2 YEAR 11+12 MAIN',	'no',	'2023-10-18 21:59:32',	NULL),
(37,	'CGBSE 2 YEAR 11+12 COMBINED',	'no',	'2023-10-18 21:59:53',	NULL),
(38,	'CGBSE 2 YEAR 11+12 COMMERCE',	'no',	'2023-10-18 22:00:35',	NULL),
(39,	'NEET DROPPER',	'no',	'2023-10-18 22:02:09',	NULL),
(40,	'JEE MAINS',	'no',	'2023-10-18 22:02:36',	NULL),
(41,	'JEE ADVANCED',	'no',	'2023-10-18 22:03:04',	NULL),
(42,	'JEE MAINS + ADVANCED',	'no',	'2023-10-18 22:03:28',	NULL);

DROP TABLE IF EXISTS `class_sections`;
CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(6,	6,	1,	'no',	'2023-10-18 21:48:06',	NULL),
(7,	7,	1,	'no',	'2023-10-18 21:48:16',	NULL),
(8,	8,	1,	'no',	'2023-10-18 21:48:27',	NULL),
(9,	9,	1,	'no',	'2023-10-18 21:48:41',	NULL),
(10,	10,	1,	'no',	'2023-10-18 21:48:57',	NULL),
(11,	11,	1,	'no',	'2023-10-18 21:49:08',	NULL),
(12,	12,	1,	'no',	'2023-10-18 21:49:24',	NULL),
(13,	13,	1,	'no',	'2023-10-18 21:49:45',	NULL),
(14,	14,	1,	'no',	'2023-10-18 21:50:01',	NULL),
(15,	15,	1,	'no',	'2023-10-18 21:50:15',	NULL),
(16,	16,	1,	'no',	'2023-10-18 21:50:40',	NULL),
(17,	17,	1,	'no',	'2023-10-18 21:50:59',	NULL),
(18,	18,	1,	'no',	'2023-10-18 21:51:14',	NULL),
(19,	19,	1,	'no',	'2023-10-18 21:52:23',	NULL),
(20,	20,	1,	'no',	'2023-10-18 21:52:50',	NULL),
(21,	21,	1,	'no',	'2023-10-18 21:53:13',	NULL),
(22,	22,	1,	'no',	'2023-10-18 21:53:42',	NULL),
(23,	23,	1,	'no',	'2023-10-18 21:54:40',	NULL),
(24,	24,	1,	'no',	'2023-10-18 21:54:49',	NULL),
(25,	25,	1,	'no',	'2023-10-18 21:55:01',	NULL),
(26,	26,	1,	'no',	'2023-10-18 21:55:16',	NULL),
(27,	27,	1,	'no',	'2023-10-18 21:55:43',	NULL),
(28,	28,	1,	'no',	'2023-10-18 21:55:53',	NULL),
(29,	29,	1,	'no',	'2023-10-18 21:56:30',	NULL),
(30,	30,	1,	'no',	'2023-10-18 21:56:47',	NULL),
(31,	31,	1,	'no',	'2023-10-18 21:57:08',	NULL),
(32,	32,	1,	'no',	'2023-10-18 21:57:30',	NULL),
(33,	33,	1,	'no',	'2023-10-18 21:58:04',	NULL),
(34,	34,	1,	'no',	'2023-10-18 21:58:30',	NULL),
(35,	35,	1,	'no',	'2023-10-18 21:58:58',	NULL),
(36,	36,	1,	'no',	'2023-10-18 21:59:32',	NULL),
(37,	37,	1,	'no',	'2023-10-18 21:59:53',	NULL),
(38,	38,	1,	'no',	'2023-10-18 22:00:35',	NULL),
(39,	39,	2,	'no',	'2023-10-18 22:02:09',	NULL),
(40,	40,	2,	'no',	'2023-10-18 22:02:36',	NULL),
(41,	41,	2,	'no',	'2023-10-18 22:03:04',	NULL),
(42,	42,	2,	'no',	'2023-10-18 22:03:28',	NULL),
(44,	44,	2,	'yes',	'2023-11-03 06:33:20',	NULL),
(45,	44,	4,	'yes',	'2023-11-21 13:16:47',	NULL),
(46,	42,	4,	'no',	'2023-11-21 13:07:33',	NULL),
(47,	6,	4,	'no',	'2023-11-21 13:18:03',	NULL),
(48,	7,	4,	'no',	'2023-11-21 13:18:12',	NULL),
(49,	8,	4,	'no',	'2023-11-21 13:18:20',	NULL),
(50,	9,	4,	'no',	'2023-11-21 13:18:30',	NULL),
(51,	41,	4,	'no',	'2023-11-21 13:18:37',	NULL),
(52,	40,	4,	'no',	'2023-11-21 13:18:43',	NULL),
(53,	39,	4,	'no',	'2023-11-21 13:18:50',	NULL),
(54,	38,	4,	'no',	'2023-11-21 13:18:59',	NULL),
(55,	37,	4,	'no',	'2023-11-21 13:19:13',	NULL),
(56,	36,	4,	'no',	'2023-11-21 13:19:20',	NULL),
(57,	35,	4,	'no',	'2023-11-21 13:19:26',	NULL),
(58,	34,	4,	'no',	'2023-11-21 13:19:33',	NULL),
(59,	10,	4,	'no',	'2023-11-21 13:19:43',	NULL),
(60,	33,	4,	'no',	'2023-11-21 13:19:50',	NULL),
(61,	32,	4,	'no',	'2023-11-21 13:19:57',	NULL),
(62,	31,	4,	'no',	'2023-11-21 13:20:03',	NULL),
(63,	30,	4,	'no',	'2023-11-21 13:20:11',	NULL),
(64,	29,	4,	'no',	'2023-11-21 13:20:18',	NULL),
(65,	28,	4,	'no',	'2023-11-21 13:20:26',	NULL),
(66,	26,	4,	'no',	'2023-11-21 13:20:34',	NULL),
(67,	27,	4,	'no',	'2023-11-21 13:20:42',	NULL),
(68,	25,	4,	'no',	'2023-11-21 13:20:51',	NULL),
(69,	24,	4,	'no',	'2023-11-21 13:20:58',	NULL),
(70,	23,	4,	'no',	'2023-11-21 13:21:06',	NULL),
(71,	22,	4,	'no',	'2023-11-21 13:21:16',	NULL),
(72,	21,	4,	'no',	'2023-11-21 13:21:23',	NULL),
(73,	20,	4,	'no',	'2023-11-21 13:21:32',	NULL),
(74,	19,	4,	'no',	'2023-11-21 13:21:40',	NULL);

DROP TABLE IF EXISTS `class_teacher`;
CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `complaint_type`;
CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `concession_fee`;
CREATE TABLE `concession_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `concession_class` text NOT NULL,
  `concession_total_fee` text NOT NULL,
  `concession_total_five` text DEFAULT NULL,
  `concessionfive_installment_one` text DEFAULT NULL,
  `concessionfive_installment_two` text DEFAULT NULL,
  `concessionfive_installment_three` text DEFAULT NULL,
  `concessionfive_installment_four` text DEFAULT NULL,
  `concessionfive_installment_five` text DEFAULT NULL,
  `concessionfive_installment_six` text DEFAULT NULL,
  `concession_total_ten` text DEFAULT NULL,
  `concessionten_installment_one` text DEFAULT NULL,
  `concessionten_installment_two` text DEFAULT NULL,
  `concessionten_installment_three` text DEFAULT NULL,
  `concessionten_installment_four` text DEFAULT NULL,
  `concessionten_installment_five` text DEFAULT NULL,
  `concessionten_installment_six` text DEFAULT NULL,
  `concession_total_twenty` text DEFAULT NULL,
  `concessiontwenty_installment_one` text DEFAULT NULL,
  `concessiontwenty_installment_two` text DEFAULT NULL,
  `concessiontwenty_installment_three` text DEFAULT NULL,
  `concessiontwenty_installment_four` text DEFAULT NULL,
  `concessiontwenty_installment_five` text DEFAULT NULL,
  `concessiontwenty_installment_six` text DEFAULT NULL,
  `concession_total_thirty` text DEFAULT NULL,
  `concessionthirty_installment_one` text DEFAULT NULL,
  `concessionthirty_installment_two` text DEFAULT NULL,
  `concessionthirty_installment_three` text DEFAULT NULL,
  `concessionthirty_installment_four` text DEFAULT NULL,
  `concessionthirty_installment_five` text DEFAULT NULL,
  `concessionthirty_installment_six` text DEFAULT NULL,
  `concession_total_fourty` text DEFAULT NULL,
  `concessionfourty_installment_one` text DEFAULT NULL,
  `concessionfourty_installment_two` text DEFAULT NULL,
  `concessionfourty_installment_three` text DEFAULT NULL,
  `concessionfourty_installment_four` text DEFAULT NULL,
  `concessionfourty_installment_five` text DEFAULT NULL,
  `concessionfourty_installment_six` text DEFAULT NULL,
  `concession_total_fifty` text DEFAULT NULL,
  `concessionfifty_installment_one` text DEFAULT NULL,
  `concessionfifty_installment_two` text DEFAULT NULL,
  `concessionfifty_installment_three` text DEFAULT NULL,
  `concessionfifty_installment_four` text DEFAULT NULL,
  `concessionfifty_installment_five` text DEFAULT NULL,
  `concessionfifty_installment_six` text DEFAULT NULL,
  `concession_total_sevenfive` text DEFAULT NULL,
  `concessionsevenfive_installment_one` text DEFAULT NULL,
  `concessionsevenfive_installment_two` text DEFAULT NULL,
  `concessionsevenfive_installment_three` text DEFAULT NULL,
  `concessionsevenfive_installment_four` text DEFAULT NULL,
  `concessionsevenfive_installment_five` text DEFAULT NULL,
  `concessionsevenfive_installment_six` text DEFAULT NULL,
  `concession_total_eightfive` text DEFAULT NULL,
  `concessioneightfive_installment_one` text DEFAULT NULL,
  `concessioneightfive_installment_two` text DEFAULT NULL,
  `concessioneightfive_installment_three` text DEFAULT NULL,
  `concessioneightfive_installment_four` text DEFAULT NULL,
  `concessioneightfive_installment_five` text DEFAULT NULL,
  `concessioneightfive_installment_six` text DEFAULT NULL,
  `concession_total_ninety` text DEFAULT NULL,
  `concessionninety_installment_one` text DEFAULT NULL,
  `concessionninety_installment_two` text DEFAULT NULL,
  `concessionninety_installment_three` text DEFAULT NULL,
  `concessionninety_installment_four` text DEFAULT NULL,
  `concessionninety_installment_five` text DEFAULT NULL,
  `concessionninety_installment_six` text DEFAULT NULL,
  `concession_total_ninefive` text DEFAULT NULL,
  `concessionninefive_installment_one` text DEFAULT NULL,
  `concessionninefive_installment_two` text DEFAULT NULL,
  `concessionninefive_installment_three` text DEFAULT NULL,
  `concessionninefive_installment_four` text DEFAULT NULL,
  `concessionninefive_installment_five` text DEFAULT NULL,
  `concessionninefive_installment_six` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `concession_fee` (`id`, `concession_class`, `concession_total_fee`, `concession_total_five`, `concessionfive_installment_one`, `concessionfive_installment_two`, `concessionfive_installment_three`, `concessionfive_installment_four`, `concessionfive_installment_five`, `concessionfive_installment_six`, `concession_total_ten`, `concessionten_installment_one`, `concessionten_installment_two`, `concessionten_installment_three`, `concessionten_installment_four`, `concessionten_installment_five`, `concessionten_installment_six`, `concession_total_twenty`, `concessiontwenty_installment_one`, `concessiontwenty_installment_two`, `concessiontwenty_installment_three`, `concessiontwenty_installment_four`, `concessiontwenty_installment_five`, `concessiontwenty_installment_six`, `concession_total_thirty`, `concessionthirty_installment_one`, `concessionthirty_installment_two`, `concessionthirty_installment_three`, `concessionthirty_installment_four`, `concessionthirty_installment_five`, `concessionthirty_installment_six`, `concession_total_fourty`, `concessionfourty_installment_one`, `concessionfourty_installment_two`, `concessionfourty_installment_three`, `concessionfourty_installment_four`, `concessionfourty_installment_five`, `concessionfourty_installment_six`, `concession_total_fifty`, `concessionfifty_installment_one`, `concessionfifty_installment_two`, `concessionfifty_installment_three`, `concessionfifty_installment_four`, `concessionfifty_installment_five`, `concessionfifty_installment_six`, `concession_total_sevenfive`, `concessionsevenfive_installment_one`, `concessionsevenfive_installment_two`, `concessionsevenfive_installment_three`, `concessionsevenfive_installment_four`, `concessionsevenfive_installment_five`, `concessionsevenfive_installment_six`, `concession_total_eightfive`, `concessioneightfive_installment_one`, `concessioneightfive_installment_two`, `concessioneightfive_installment_three`, `concessioneightfive_installment_four`, `concessioneightfive_installment_five`, `concessioneightfive_installment_six`, `concession_total_ninety`, `concessionninety_installment_one`, `concessionninety_installment_two`, `concessionninety_installment_three`, `concessionninety_installment_four`, `concessionninety_installment_five`, `concessionninety_installment_six`, `concession_total_ninefive`, `concessionninefive_installment_one`, `concessionninefive_installment_two`, `concessionninefive_installment_three`, `concessionninefive_installment_four`, `concessionninefive_installment_five`, `concessionninefive_installment_six`) VALUES
(22,	'7',	'23600',	'23059',	'1180',	'10620',	'5900',	'5369',	'',	'',	'22538',	'1180',	'10620',	'5900',	'4838',	'',	'',	'21476',	'1180',	'10620',	'5900',	'3776',	'',	'',	'20414',	'1180',	'10620',	'5900',	'2714',	'',	'',	'19352',	'1180',	'10620',	'5192',	'2360',	'',	'',	'18290',	'1180',	'10620',	'4130',	'2360',	'',	'',	'15635',	'1180',	'9735',	'2360',	'2360',	'',	'',	'14573',	'1180',	'8673',	'2360',	'2360',	'',	'',	'14042',	'1180',	'8142',	'2360',	'2360',	'',	'',	'13511',	'1180',	'7611',	'2360',	'2360',	'',	'');

DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `content_for`;
CREATE TABLE `content_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `custom_field_values`;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_id` (`custom_field_id`),
  CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1,	'administration',	'yes');

DROP TABLE IF EXISTS `disable_reason`;
CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `dispatch_receive`;
CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dispatch_receive` (`id`, `reference_no`, `to_title`, `address`, `note`, `from_title`, `date`, `image`, `created_at`, `updated_at`, `type`) VALUES
(1,	'bh',	'hb',	'bhb',	'hb',	'hb',	'2023-11-04',	'id1.png',	'2023-11-04 08:53:40',	NULL,	'dispatch');

DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `is_active`, `created_at`) VALUES
(1,	'smtp',	'smtp.gmail.com',	'587',	'vinayaksalesraipur01@gmail.com',	'mtbmxoffemvkxhvp',	'tls',	'true',	'yes',	'2023-11-21 12:39:57');

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES
(1,	's kumar',	'9926989777',	'',	'',	'2022-07-15',	'',	'2022-07-15',	'',	'Internet',	'',	'',	0,	'',	'active');

DROP TABLE IF EXISTS `enquiry_type`;
CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `events` (`id`, `event_title`, `event_description`, `start_date`, `end_date`, `event_type`, `event_color`, `event_for`, `role_id`, `is_active`) VALUES
(1,	'present',	'',	'2023-11-21 05:30:00',	'2023-11-21 05:30:00',	'private',	'#337ab7',	'9',	0,	''),
(3,	'present',	'present',	'2023-11-21 05:30:00',	'2023-11-21 05:30:00',	'private',	'#337ab7',	'10',	0,	'');

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `exam_groups`;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'IIT',	'basic_system',	'',	0,	'2023-03-03 09:49:04',	NULL),
(2,	'Entrance',	'basic_system',	'',	0,	'2023-03-03 09:49:28',	NULL),
(3,	'mbbs',	'basic_system',	'',	0,	'2023-11-23 06:41:53',	NULL);

DROP TABLE IF EXISTS `exam_group_class_batch_exams`;
CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` varchar(250) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exams` (`id`, `exam`, `session_id`, `date_from`, `date_to`, `description`, `exam_group_id`, `is_publish`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Class test',	19,	NULL,	NULL,	'',	1,	0,	1,	'2023-11-23 06:46:57',	NULL),
(2,	'FA',	19,	NULL,	NULL,	'',	3,	0,	1,	'2023-11-23 06:47:23',	NULL),
(3,	'Unit test',	19,	NULL,	NULL,	'',	3,	0,	1,	'2023-11-23 06:51:07',	NULL);

DROP TABLE IF EXISTS `exam_group_class_batch_exam_students`;
CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(6) NOT NULL DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  KEY `student_id` (`student_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `exam_group_class_batch_exam_subjects`;
CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exam_subjects` (`id`, `exam_group_class_batch_exams_id`, `subject_id`, `date_from`, `time_from`, `duration`, `room_no`, `max_marks`, `min_marks`, `credit_hours`, `date_to`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	2,	1,	'2023-11-24',	'13:26:08',	'1',	'',	100.00,	33.00,	0.00,	NULL,	0,	'2023-11-23 07:56:27',	NULL),
(2,	3,	1,	'2023-11-23',	'15:37:48',	'1',	'',	100.00,	33.00,	0.00,	NULL,	0,	'2023-11-23 10:08:00',	NULL);

DROP TABLE IF EXISTS `exam_group_exam_connections`;
CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_exam_connections` (`id`, `exam_group_id`, `exam_group_class_batch_exams_id`, `exam_weightage`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	3,	2,	50.00,	0,	'2023-11-23 10:08:15',	NULL),
(2,	3,	3,	100.00,	0,	'2023-11-23 10:08:15',	NULL);

DROP TABLE IF EXISTS `exam_group_exam_results`;
CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  KEY `exam_group_student_id` (`exam_group_student_id`),
  KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`),
  CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `exam_group_students`;
CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `exam_results`;
CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `exam_schedules`;
CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `expense_head`;
CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `feecategory`;
CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `feemasters`;
CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fees_discounts`;
CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fees_reminder`;
CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'before',	2,	0,	'2020-02-28 13:38:32',	NULL),
(2,	'before',	5,	0,	'2020-02-28 13:38:36',	NULL),
(3,	'after',	2,	0,	'2020-02-28 13:38:40',	NULL),
(4,	'after',	5,	0,	'2020-02-28 13:38:44',	NULL);

DROP TABLE IF EXISTS `feetype`;
CREATE TABLE `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fee_groups`;
CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fee_groups_feetype`;
CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fee_receipt_no`;
CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fee_session_groups`;
CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `filetypes`;
CREATE TABLE `filetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_extension` text DEFAULT NULL,
  `file_mime` text DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `image_extension` text DEFAULT NULL,
  `image_mime` text DEFAULT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`) VALUES
(1,	'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg',	'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml',	100048576,	'jfif, png, jpe, jpeg, jpg, bmp, gif, svg',	'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml',	10048576,	'2021-01-30 13:03:03');

DROP TABLE IF EXISTS `follow_up`;
CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `front_cms_media_gallery`;
CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `front_cms_menus`;
CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1,	'Main Menu',	'main-menu',	'Main menu',	0,	'',	'',	0,	'default',	'no',	'2018-04-20 14:54:49'),
(2,	'Bottom Menu',	'bottom-menu',	'Bottom Menu',	0,	'',	'',	0,	'default',	'no',	'2018-04-20 14:54:55');

DROP TABLE IF EXISTS `front_cms_menu_items`;
CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(1,	1,	'Home',	1,	0,	NULL,	NULL,	NULL,	'home',	1,	0,	NULL,	'no',	'2019-12-02 22:11:50'),
(2,	1,	'Contact Us',	76,	0,	NULL,	NULL,	NULL,	'contact-us',	4,	0,	NULL,	'no',	'2019-12-02 22:11:52'),
(3,	1,	'Complain',	2,	0,	NULL,	NULL,	NULL,	'complain',	3,	0,	NULL,	'no',	'2019-12-02 22:11:52'),
(4,	1,	'Admission',	0,	0,	'1',	NULL,	'http://yourschoolurl.com/online_admission',	'admssion',	2,	0,	NULL,	'no',	'2019-12-21 15:33:00');

DROP TABLE IF EXISTS `front_cms_pages`;
CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1,	'default',	1,	'Home',	'page/home',	'page',	'home',	'',	'',	'',	'',	'<p>home page</p>',	'0000-00-00',	1,	NULL,	'no',	'2019-12-02 15:23:47'),
(2,	'default',	0,	'Complain',	'page/complain',	'page',	'complain',	'Complain form',	'                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ',	'complain form',	'',	'<p>[form-builder:complain]</p>',	'0000-00-00',	1,	NULL,	'no',	'2019-11-13 10:16:36'),
(54,	'default',	0,	'404 page',	'page/404-page',	'page',	'404-page',	'',	'                                ',	'',	'',	'<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>',	'0000-00-00',	0,	NULL,	'no',	'2018-05-18 14:46:04'),
(76,	'default',	0,	'Contact us',	'page/contact-us',	'page',	'contact-us',	'',	'',	'',	'',	'<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>',	'0000-00-00',	0,	NULL,	'no',	'2019-05-04 15:46:41');

DROP TABLE IF EXISTS `front_cms_page_contents`;
CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `front_cms_programs`;
CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `front_cms_program_photos`;
CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `front_cms_settings`;
CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES
(1,	'shadow_white',	NULL,	1,	1,	NULL,	'',	'',	'[\"news\",\"complain\"]',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'2022-07-18 08:50:38');

DROP TABLE IF EXISTS `general_calls`;
CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gmeet`;
CREATE TABLE `gmeet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(20) NOT NULL DEFAULT 'class',
  `staff_id` int(11) DEFAULT NULL,
  `created_id` int(10) NOT NULL,
  `title` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `api_data` text DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `url` text NOT NULL,
  `session_id` int(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `created_id` (`created_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `gmeet_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_ibfk_2` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gmeet_history`;
CREATE TABLE `gmeet_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `total_hit` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `gmeet_id` (`gmeet_id`),
  KEY `staff_id` (`staff_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `gmeet_history_ibfk_1` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_history_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_history_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gmeet_sections`;
CREATE TABLE `gmeet_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `cls_section_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cls_section_id` (`cls_section_id`),
  KEY `gmeet_id` (`gmeet_id`),
  CONSTRAINT `gmeet_sections_ibfk_1` FOREIGN KEY (`cls_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_sections_ibfk_2` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gmeet_settings`;
CREATE TABLE `gmeet_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `use_api` int(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gmeet_staff`;
CREATE TABLE `gmeet_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `gmeet_id` (`gmeet_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `gmeet_staff_ibfk_1` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'basic_system',	'a',	10.0,	78.00,	100.00,	'sdcds',	'no',	'2023-11-23 06:45:53',	NULL);

DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(10) NOT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `homework_evaluation`;
CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `hostel`;
CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `hostel` (`id`, `hostel_name`, `type`, `address`, `intake`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2,	'Boys Hostel',	'Boys',	'Mannu Chowk',	11,	'',	'no',	'2023-12-04 22:03:42',	NULL),
(3,	'Girls Hostel',	'Girls',	'Mannu Chowk',	28,	'',	'no',	'2023-12-04 22:05:00',	NULL);

DROP TABLE IF EXISTS `hostelitemdata`;
CREATE TABLE `hostelitemdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelitem_category_id` int(11) DEFAULT NULL,
  `hostelitemname` text NOT NULL,
  `hostelunit` text NOT NULL,
  `hostelitem_photo` text DEFAULT NULL,
  `hosteldescription` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `hostelitem_store_id` int(11) DEFAULT NULL,
  `hostelitem_supplier_id` int(11) DEFAULT NULL,
  `hostelitemquantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hostelitem_supplier_id` (`hostelitem_supplier_id`),
  CONSTRAINT `hostelitemdata_ibfk_1` FOREIGN KEY (`hostelitem_supplier_id`) REFERENCES `hostelitem_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitemdata` (`id`, `hostelitem_category_id`, `hostelitemname`, `hostelunit`, `hostelitem_photo`, `hosteldescription`, `created_at`, `updated_at`, `hostelitem_store_id`, `hostelitem_supplier_id`, `hostelitemquantity`, `date`) VALUES
(1,	1,	'dd',	'54',	'sdsadas',	'sadssd',	'2023-04-22 11:58:33',	NULL,	NULL,	NULL,	30,	'0000-00-00'),
(2,	0,	'',	'',	NULL,	'',	'0000-00-00 00:00:00',	NULL,	NULL,	NULL,	0,	'0000-00-00');

DROP TABLE IF EXISTS `hostelitemstock`;
CREATE TABLE `hostelitemstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_categoryhostel` text NOT NULL,
  `itemhostel` text NOT NULL,
  `supplierhostel` text NOT NULL,
  `hostelstore` text NOT NULL,
  `hostelqty` text NOT NULL,
  `hostelpurchaseprice` int(11) NOT NULL,
  `date` date NOT NULL,
  `attach_doc` text NOT NULL,
  `descriptionhostel` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `hostelitem_category`;
CREATE TABLE `hostelitem_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelitem_category` text NOT NULL,
  `hostelis_active` varchar(255) NOT NULL DEFAULT 'yes',
  `hosteldescription` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitem_category` (`id`, `hostelitem_category`, `hostelis_active`, `hosteldescription`, `created_at`, `updated_at`) VALUES
(1,	'4tty',	'yes',	'trthytr',	'2023-04-22 11:30:01',	'0000-00-00'),
(2,	'dfdssf',	'yes',	'fgfd',	'2023-04-24 09:04:05',	'0000-00-00');

DROP TABLE IF EXISTS `hostelitem_issue`;
CREATE TABLE `hostelitem_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelissue_type` text NOT NULL,
  `hostelissue_to` text NOT NULL,
  `hostelissue_by` text NOT NULL,
  `hostelissue_date` date NOT NULL,
  `hostelreturn_date` date NOT NULL,
  `hostelitem_category_id` text NOT NULL,
  `hostelitem_id` text NOT NULL,
  `hostelquantity` text NOT NULL,
  `hostelnote` text NOT NULL,
  `hostelis_returned` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hostelis_active` varchar(22) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `hostelitem_category_id` (`hostelitem_category_id`(3072)),
  KEY `hostelitem_id` (`hostelitem_id`(3072))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitem_issue` (`id`, `hostelissue_type`, `hostelissue_to`, `hostelissue_by`, `hostelissue_date`, `hostelreturn_date`, `hostelitem_category_id`, `hostelitem_id`, `hostelquantity`, `hostelnote`, `hostelis_returned`, `created_at`, `hostelis_active`) VALUES
(11,	'Admin',	'Super Admin',	'Super Admin',	'0000-00-00',	'0000-00-00',	'4tty',	'dd',	'2',	'dfds',	1,	'2023-04-29 09:39:30',	'no');

DROP TABLE IF EXISTS `hostelitem_stock`;
CREATE TABLE `hostelitem_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelitem_category_id` text NOT NULL,
  `hostelitem_id` text NOT NULL,
  `hostelsupplier_id` text NOT NULL,
  `hostelstore_id` text NOT NULL,
  `hostelquantity` text NOT NULL,
  `hostelpurchase_price` text NOT NULL,
  `hosteldate` date NOT NULL,
  `hostelattachment` text NOT NULL,
  `hosteldescription` text NOT NULL,
  `hostelis_active` varchar(10) NOT NULL DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitem_stock` (`id`, `hostelitem_category_id`, `hostelitem_id`, `hostelsupplier_id`, `hostelstore_id`, `hostelquantity`, `hostelpurchase_price`, `hosteldate`, `hostelattachment`, `hosteldescription`, `hostelis_active`, `created_at`) VALUES
(1,	'0',	'1',	'10',	'4',	'45',	'5000',	'2023-04-22',	'',	'hhbhb',	'yes',	'2023-04-22 11:25:59');

DROP TABLE IF EXISTS `hostelitem_store`;
CREATE TABLE `hostelitem_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelitem_store` text NOT NULL,
  `hostelcode` text NOT NULL,
  `hosteldescription` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitem_store` (`id`, `hostelitem_store`, `hostelcode`, `hosteldescription`) VALUES
(1,	'jgfhfj',	'54',	'kll');

DROP TABLE IF EXISTS `hostelitem_supplier`;
CREATE TABLE `hostelitem_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostelitem_supplier` text NOT NULL,
  `hostelphone` text NOT NULL,
  `hostelemail` text NOT NULL,
  `hosteladdress` text NOT NULL,
  `hostelcontact_person_name` text NOT NULL,
  `hostelcontact_person_phone` text NOT NULL,
  `hostelcontact_person_email` text NOT NULL,
  `hosteldescription` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostelitem_supplier` (`id`, `hostelitem_supplier`, `hostelphone`, `hostelemail`, `hosteladdress`, `hostelcontact_person_name`, `hostelcontact_person_phone`, `hostelcontact_person_email`, `hosteldescription`) VALUES
(1,	'wlfnlwen',	'963214578',	'wegf@gmail.com',	'wlfnlwnlfnnw',	'test',	'9632145780',	'test@gmail.com',	'testtest'),
(2,	'lrjwrhlwr',	'963214578',	'hrfgf@gmail.com',	'',	'ewew',	'6545454',	'wehew@gmail.com',	'ljwewje');

DROP TABLE IF EXISTS `hostel_fee`;
CREATE TABLE `hostel_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinvoice` text NOT NULL,
  `date` text NOT NULL,
  `admission_no` text NOT NULL,
  `hostel_studentname` text NOT NULL,
  `class` text NOT NULL,
  `gender` text NOT NULL,
  `phone_number` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `hostel_name` text NOT NULL,
  `room_type` text NOT NULL,
  `room_number` text NOT NULL,
  `hostel_fee` text NOT NULL,
  `paid_fee` text NOT NULL,
  `remaining_fee` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `hostel_fee` (`id`, `hinvoice`, `date`, `admission_no`, `hostel_studentname`, `class`, `gender`, `phone_number`, `father_name`, `mother_name`, `hostel_name`, `room_type`, `room_number`, `hostel_fee`, `paid_fee`, `remaining_fee`) VALUES
(1,	'',	'2023-10-28',	'4',	'rjgjrgregb jkrbgbw',	'7',	'Female',	'9555555',	'eorgjer',	'kjrekrhrkeg',	'Satpuda',	'sljhherhg',	'AC',	'546545454',	'566545',	'566544545');

DROP TABLE IF EXISTS `hostel_rooms`;
CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `hostel_rooms` (`id`, `hostel_id`, `room_type_id`, `room_no`, `no_of_bed`, `cost_per_bed`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'AC',	3,	5000.00,	NULL,	'',	'2023-10-28 08:48:18',	NULL),
(2,	1,	1,	'bhb',	445,	544.00,	NULL,	'jkjkj',	'2023-11-04 09:26:30',	NULL);

DROP TABLE IF EXISTS `id_card`;
CREATE TABLE `id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES
(1,	'Sample Student Identity Card',	'Mount Carmel School',	'110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com',	'samplebackground12.png',	'samplelogo12.png',	'samplesign12.png',	'#595959',	1,	1,	1,	1,	0,	1,	1,	1,	1,	1);

DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `income_head`;
CREATE TABLE `income_head` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1,	'Coaching Fee',	'',	'yes',	'no',	'2023-03-03 09:47:22',	NULL);

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1,	'pen',	'yes',	'sdvf',	'2023-11-04 09:21:29',	NULL);

DROP TABLE IF EXISTS `item_issue`;
CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `item_store`;
CREATE TABLE `item_store` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES
(1,	'assds',	'212',	'dfd');

DROP TABLE IF EXISTS `item_supplier`;
CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES
(1,	'4c545dc',	'7889456230',	'test2@gmail.com',	'test',	'test1',	'454545454',	'test1@gmail.com',	'bhbhb');

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Azerbaijan',	'az',	'az',	'no',	'no',	'2019-11-20 11:23:12',	'0000-00-00'),
(2,	'Albanian',	'sq',	'al',	'no',	'no',	'2019-11-20 11:42:42',	'0000-00-00'),
(3,	'Amharic',	'am',	'am',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(4,	'English',	'en',	'us',	'no',	'no',	'2019-11-20 11:38:50',	'0000-00-00'),
(5,	'Arabic',	'ar',	'sa',	'no',	'no',	'2019-11-20 11:47:28',	'0000-00-00'),
(7,	'Afrikaans',	'af',	'af',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(8,	'Basque',	'eu',	'es',	'no',	'no',	'2019-11-20 11:54:10',	'0000-00-00'),
(11,	'Bengali',	'bn',	'in',	'no',	'no',	'2019-11-20 11:41:53',	'0000-00-00'),
(13,	'Bosnian',	'bs',	'bs',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(14,	'Welsh',	'cy',	'cy',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(15,	'Hungarian',	'hu',	'hu',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(16,	'Vietnamese',	'vi',	'vi',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(17,	'Haitian',	'ht',	'ht',	'no',	'no',	'2021-01-23 07:09:32',	'0000-00-00'),
(18,	'Galician',	'gl',	'gl',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(19,	'Dutch',	'nl',	'nl',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(21,	'Greek',	'el',	'gr',	'no',	'no',	'2019-11-20 12:12:08',	'0000-00-00'),
(22,	'Georgian',	'ka',	'ge',	'no',	'no',	'2019-11-20 12:11:40',	'0000-00-00'),
(23,	'Gujarati',	'gu',	'in',	'no',	'no',	'2019-11-20 11:39:16',	'0000-00-00'),
(24,	'Danish',	'da',	'dk',	'no',	'no',	'2019-11-20 12:03:25',	'0000-00-00'),
(25,	'Hebrew',	'he',	'il',	'no',	'no',	'2019-11-20 12:13:50',	'0000-00-00'),
(26,	'Yiddish',	'yi',	'il',	'no',	'no',	'2019-11-20 12:25:33',	'0000-00-00'),
(27,	'Indonesian',	'id',	'id',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(28,	'Irish',	'ga',	'ga',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(29,	'Italian',	'it',	'it',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(30,	'Icelandic',	'is',	'is',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(31,	'Spanish',	'es',	'es',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(33,	'Kannada',	'kn',	'kn',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(34,	'Catalan',	'ca',	'ca',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(36,	'Chinese',	'zh',	'cn',	'no',	'no',	'2019-11-20 12:01:48',	'0000-00-00'),
(37,	'Korean',	'ko',	'kr',	'no',	'no',	'2019-11-20 12:19:09',	'0000-00-00'),
(38,	'Xhosa',	'xh',	'ls',	'no',	'no',	'2019-11-20 12:24:39',	'0000-00-00'),
(39,	'Latin',	'la',	'it',	'no',	'no',	'2021-01-23 07:09:32',	'0000-00-00'),
(40,	'Latvian',	'lv',	'lv',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(41,	'Lithuanian',	'lt',	'lt',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(43,	'Malagasy',	'mg',	'mg',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(44,	'Malay',	'ms',	'ms',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(45,	'Malayalam',	'ml',	'ml',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(46,	'Maltese',	'mt',	'mt',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(47,	'Macedonian',	'mk',	'mk',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(48,	'Maori',	'mi',	'nz',	'no',	'no',	'2019-11-20 12:20:27',	'0000-00-00'),
(49,	'Marathi',	'mr',	'in',	'no',	'no',	'2019-11-20 11:39:51',	'0000-00-00'),
(51,	'Mongolian',	'mn',	'mn',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(52,	'German',	'de',	'de',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(53,	'Nepali',	'ne',	'ne',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(54,	'Norwegian',	'no',	'no',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(55,	'Punjabi',	'pa',	'in',	'no',	'no',	'2019-11-20 11:40:16',	'0000-00-00'),
(57,	'Persian',	'fa',	'ir',	'no',	'no',	'2019-11-20 12:21:17',	'0000-00-00'),
(59,	'Portuguese',	'pt',	'pt',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(60,	'Romanian',	'ro',	'ro',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(61,	'Russian',	'ru',	'ru',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(62,	'Cebuano',	'ceb',	'ph',	'no',	'no',	'2019-11-20 11:59:12',	'0000-00-00'),
(64,	'Sinhala',	'si',	'lk ',	'no',	'no',	'2021-01-23 07:09:32',	'0000-00-00'),
(65,	'Slovakian',	'sk',	'sk',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(66,	'Slovenian',	'sl',	'sl',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(67,	'Swahili',	'sw',	'ke',	'no',	'no',	'2019-11-20 12:21:57',	'0000-00-00'),
(68,	'Sundanese',	'su',	'sd',	'no',	'no',	'2019-12-03 11:06:57',	'0000-00-00'),
(70,	'Thai',	'th',	'th',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(71,	'Tagalog',	'tl',	'tl',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(72,	'Tamil',	'ta',	'in',	'no',	'no',	'2019-11-20 11:40:53',	'0000-00-00'),
(74,	'Telugu',	'te',	'in',	'no',	'no',	'2019-11-20 11:41:15',	'0000-00-00'),
(75,	'Turkish',	'tr',	'tr',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(77,	'Uzbek',	'uz',	'uz',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(79,	'Urdu',	'ur',	'pk',	'no',	'no',	'2019-11-20 12:23:57',	'0000-00-00'),
(80,	'Finnish',	'fi',	'fi',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(81,	'French',	'fr',	'fr',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(82,	'Hindi',	'hi',	'in',	'no',	'no',	'2019-11-20 11:36:34',	'0000-00-00'),
(84,	'Czech',	'cs',	'cz',	'no',	'no',	'2019-11-20 12:02:36',	'0000-00-00'),
(85,	'Swedish',	'sv',	'sv',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(86,	'Scottish',	'gd',	'gd',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(87,	'Estonian',	'et',	'et',	'no',	'no',	'2019-11-20 11:24:23',	'0000-00-00'),
(88,	'Esperanto',	'eo',	'br',	'no',	'no',	'2019-11-21 04:49:18',	'0000-00-00'),
(89,	'Javanese',	'jv',	'id',	'no',	'no',	'2019-11-20 12:18:29',	'0000-00-00'),
(90,	'Japanese',	'ja',	'jp',	'no',	'no',	'2019-11-20 12:14:39',	'0000-00-00'),
(91,	'Polish',	'pl',	'pl',	'no',	'no',	'2020-06-15 03:25:27',	'0000-00-00'),
(92,	'Kurdish',	'ku',	'iq',	'no',	'no',	'2020-12-21 00:15:31',	'0000-00-00'),
(93,	'Lao',	'lo',	'la',	'no',	'no',	'2020-12-21 00:15:36',	'0000-00-00');

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES
(1,	'CL',	'yes'),
(2,	'OD',	'yes');

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`),
  CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `libarary_members`;
CREATE TABLE `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES
(1,	'7894561230',	'teacher',	2,	'no',	'2023-11-04 09:12:15');

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text DEFAULT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Opera 77.0.4054.203',	'2021-07-11 09:42:29',	NULL),
(2,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Opera 77.0.4054.203',	'2021-07-11 09:42:44',	NULL),
(3,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:43:54',	NULL),
(4,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:44:03',	NULL),
(5,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:45:22',	NULL),
(6,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:45:42',	NULL),
(7,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:45:54',	NULL),
(8,	'Record updated On settings id 1',	1,	1,	'Update',	'157.34.94.233',	'Windows 10',	'Chrome 91.0.4472.124',	'2021-07-11 09:46:27',	NULL),
(9,	'Record updated On settings id 1',	1,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 06:46:02',	NULL),
(10,	'Record updated On roles id 1',	1,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 06:46:49',	NULL),
(11,	'Record updated On roles id 4',	4,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:00:32',	NULL),
(12,	'Record updated On Front CMS Setting id 1',	1,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:02:40',	NULL),
(13,	'Record updated On settings id 1',	1,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:10:54',	NULL),
(14,	'Record updated On staff id 2',	2,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:22:20',	NULL),
(15,	'Record updated On staff id 2',	2,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:28:29',	NULL),
(16,	'Record updated On staff id 2',	2,	1,	'Update',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:28:29',	NULL),
(17,	'Record updated On staff id 3',	3,	1,	'Update',	'49.36.17.65',	'Windows 10',	'Chrome 103.0.5060.114',	'2022-07-15 07:32:58',	NULL),
(18,	'New Record inserted On source id 1',	1,	1,	'Insert',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:41:50',	NULL),
(19,	'New Record inserted On  enquiry id 1',	1,	1,	'Insert',	'106.212.163.245',	'Windows 10',	'Opera 89.0.4447.38',	'2022-07-15 07:42:15',	NULL),
(20,	'New Record inserted On hostel id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 08:36:16',	NULL),
(21,	'Record updated On Front CMS Setting id 1',	1,	1,	'Update',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 08:50:38',	NULL),
(22,	'New Record inserted On sections id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:13:18',	NULL),
(23,	'New Record inserted On subject groups id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:13:32',	NULL),
(24,	'New Record inserted On students id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:14:42',	NULL),
(25,	'New Record inserted On  student session id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:14:42',	NULL),
(26,	'New Record inserted On users id 1',	1,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:14:42',	NULL),
(27,	'New Record inserted On users id 2',	2,	1,	'Insert',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:14:42',	NULL),
(28,	'Record updated On students id 1',	1,	1,	'Update',	'110.224.192.108',	'Windows 10',	'Firefox 102.0',	'2022-07-18 10:14:42',	NULL),
(29,	'Record updated On settings id 1',	1,	1,	'Update',	'103.84.129.49',	'Windows 10',	'Chrome 110.0.0.0',	'2023-02-27 06:39:42',	NULL),
(30,	'Record updated On settings id 1',	1,	1,	'Update',	'103.84.129.49',	'Windows 10',	'Chrome 110.0.0.0',	'2023-02-27 06:39:49',	NULL),
(31,	'Record updated On roles id 6',	6,	1,	'Update',	'106.208.178.248',	'Windows 10',	'Firefox 110.0',	'2023-03-03 07:03:14',	NULL),
(32,	'New Record inserted On department id 1',	1,	1,	'Insert',	'152.58.27.150',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:21:51',	NULL),
(33,	'Record deleted On department id 1',	1,	1,	'Delete',	'152.58.27.150',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:25:39',	NULL),
(34,	'New Record inserted On  income head   id 1',	1,	1,	'Insert',	'152.58.27.150',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:47:22',	NULL),
(35,	'New Record inserted On exam groups id 1',	1,	1,	'Insert',	'152.58.27.150',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:49:04',	NULL),
(36,	'New Record inserted On exam groups id 2',	2,	1,	'Insert',	'152.58.27.150',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:49:28',	NULL),
(37,	'New Record inserted On send notification id 1',	1,	1,	'Insert',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 09:58:17',	NULL),
(38,	'New Record inserted On transport route id 1',	1,	1,	'Insert',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 10:00:59',	NULL),
(39,	'New Record inserted On leave types id 1',	1,	1,	'Insert',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 10:20:25',	NULL),
(40,	'New Record inserted On leave types id 2',	2,	1,	'Insert',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 10:20:32',	NULL),
(41,	'Record updated On staff id 2',	2,	1,	'Update',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 10:23:46',	NULL),
(42,	'Record updated On staff id 2',	2,	1,	'Update',	'152.58.25.125',	'Windows 10',	'Firefox 110.0',	'2023-03-03 10:23:46',	NULL),
(43,	'New Record inserted On staff leave request id 1',	1,	2,	'Insert',	'152.58.25.125',	'Windows 10',	'Chrome 110.0.0.0',	'2023-03-03 10:24:09',	NULL),
(44,	'New Record inserted On room types id 1',	1,	1,	'Insert',	'::1',	'Windows 10',	'Chrome 116.0.0.0',	'2023-08-21 05:19:17',	NULL),
(45,	'New Record inserted On students id 2',	2,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:35:46',	NULL),
(47,	'New Record inserted On users id 3',	3,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:35:46',	NULL),
(48,	'New Record inserted On users id 4',	4,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:35:46',	NULL),
(49,	'Record updated On students id 2',	2,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:35:46',	NULL),
(50,	'Record updated On students id 2',	2,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:35:46',	NULL),
(51,	'New Record inserted On students id 3',	3,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:55:30',	NULL),
(53,	'New Record inserted On users id 5',	5,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:55:30',	NULL),
(54,	'New Record inserted On users id 6',	6,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:55:30',	NULL),
(55,	'Record updated On students id 3',	3,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:55:30',	NULL),
(56,	'Record updated On students id 3',	3,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:55:30',	NULL),
(57,	'New Record inserted On students id 4',	4,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:57:05',	NULL),
(59,	'New Record inserted On users id 7',	7,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:57:05',	NULL),
(60,	'New Record inserted On users id 8',	8,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:57:05',	NULL),
(61,	'Record updated On students id 4',	4,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:57:05',	NULL),
(62,	'Record updated On students id 4',	4,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 10:57:05',	NULL),
(63,	'New Record inserted On students id 5',	5,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:01:08',	NULL),
(65,	'New Record inserted On users id 9',	9,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:01:08',	NULL),
(66,	'New Record inserted On users id 10',	10,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:01:08',	NULL),
(67,	'Record updated On students id 5',	5,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:01:08',	NULL),
(68,	'New Record inserted On students id 6',	6,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:09:32',	NULL),
(70,	'New Record inserted On users id 11',	11,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:09:32',	NULL),
(71,	'New Record inserted On users id 12',	12,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:09:32',	NULL),
(72,	'Record updated On students id 6',	6,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:09:32',	NULL),
(73,	'New Record inserted On students id 7',	7,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:11:06',	NULL),
(75,	'New Record inserted On users id 13',	13,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:11:06',	NULL),
(76,	'New Record inserted On users id 14',	14,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:11:06',	NULL),
(77,	'Record updated On students id 7',	7,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 11:11:06',	NULL),
(78,	'New Record inserted On students id 8',	8,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 13:03:10',	NULL),
(80,	'New Record inserted On users id 15',	15,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 13:03:10',	NULL),
(81,	'New Record inserted On users id 16',	16,	1,	'Insert',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 13:03:10',	NULL),
(82,	'Record updated On students id 8',	8,	1,	'Update',	'182.70.236.222',	'Windows 10',	'Chrome 116.0.0.0',	'2023-09-22 13:03:10',	NULL),
(83,	'New Record inserted On students id 9',	9,	1,	'Insert',	'122.181.101.11',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-18 12:50:53',	NULL),
(85,	'New Record inserted On users id 17',	17,	1,	'Insert',	'122.181.101.11',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-18 12:50:53',	NULL),
(86,	'New Record inserted On users id 18',	18,	1,	'Insert',	'122.181.101.11',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-18 12:50:53',	NULL),
(87,	'Record updated On students id 9',	9,	1,	'Update',	'122.181.101.11',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-18 12:50:53',	NULL),
(88,	'Record updated On students id 9',	9,	1,	'Update',	'122.181.101.11',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-18 12:50:53',	NULL),
(89,	'Record deleted On classes id 1',	1,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:46:22',	NULL),
(90,	'New Record inserted On subject groups id 2',	2,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:46:49',	NULL),
(91,	'New Record inserted On subject groups id 3',	3,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:00',	NULL),
(92,	'New Record inserted On subject groups id 4',	4,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:09',	NULL),
(93,	'New Record inserted On subject groups id 5',	5,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:21',	NULL),
(94,	'Record deleted On classes id 2',	2,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:32',	NULL),
(95,	'Record deleted On classes id 5',	5,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:37',	NULL),
(96,	'Record deleted On classes id 3',	3,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:41',	NULL),
(97,	'Record deleted On classes id 4',	4,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:47:44',	NULL),
(98,	'New Record inserted On subject groups id 6',	6,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:48:06',	NULL),
(99,	'New Record inserted On subject groups id 7',	7,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:48:16',	NULL),
(100,	'New Record inserted On subject groups id 8',	8,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:48:27',	NULL),
(101,	'New Record inserted On subject groups id 9',	9,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:48:41',	NULL),
(102,	'New Record inserted On subject groups id 10',	10,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:48:57',	NULL),
(103,	'New Record inserted On subject groups id 11',	11,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:49:08',	NULL),
(104,	'New Record inserted On subject groups id 12',	12,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:49:24',	NULL),
(105,	'New Record inserted On subject groups id 13',	13,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:49:45',	NULL),
(106,	'New Record inserted On subject groups id 14',	14,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:50:01',	NULL),
(107,	'New Record inserted On subject groups id 15',	15,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:50:15',	NULL),
(108,	'New Record inserted On subject groups id 16',	16,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:50:40',	NULL),
(109,	'New Record inserted On subject groups id 17',	17,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:50:59',	NULL),
(110,	'New Record inserted On subject groups id 18',	18,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:51:14',	NULL),
(111,	'New Record inserted On subject groups id 19',	19,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:52:23',	NULL),
(112,	'New Record inserted On subject groups id 20',	20,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:52:50',	NULL),
(113,	'New Record inserted On subject groups id 21',	21,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:53:13',	NULL),
(114,	'New Record inserted On subject groups id 22',	22,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:53:42',	NULL),
(115,	'New Record inserted On subject groups id 23',	23,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:54:40',	NULL),
(116,	'New Record inserted On subject groups id 24',	24,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:54:49',	NULL),
(117,	'New Record inserted On subject groups id 25',	25,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:55:01',	NULL),
(118,	'New Record inserted On subject groups id 26',	26,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:55:16',	NULL),
(119,	'New Record inserted On subject groups id 27',	27,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:55:43',	NULL),
(120,	'New Record inserted On subject groups id 28',	28,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:55:53',	NULL),
(121,	'New Record inserted On subject groups id 29',	29,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:56:30',	NULL),
(122,	'New Record inserted On subject groups id 30',	30,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:56:47',	NULL),
(123,	'New Record inserted On subject groups id 31',	31,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:57:08',	NULL),
(124,	'New Record inserted On subject groups id 32',	32,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:57:30',	NULL),
(125,	'New Record inserted On subject groups id 33',	33,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:58:04',	NULL),
(126,	'New Record inserted On subject groups id 34',	34,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:58:30',	NULL),
(127,	'New Record inserted On subject groups id 35',	35,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:58:58',	NULL),
(128,	'New Record inserted On subject groups id 36',	36,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:59:32',	NULL),
(129,	'New Record inserted On subject groups id 37',	37,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 21:59:53',	NULL),
(130,	'New Record inserted On subject groups id 38',	38,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:00:35',	NULL),
(131,	'Record deleted On sections id 1',	1,	1,	'Delete',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:00:51',	NULL),
(132,	'New Record inserted On sections id 2',	2,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:01:40',	NULL),
(133,	'New Record inserted On sections id 3',	3,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:01:48',	NULL),
(134,	'New Record inserted On subject groups id 39',	39,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:02:09',	NULL),
(135,	'New Record inserted On subject groups id 40',	40,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:02:36',	NULL),
(136,	'New Record inserted On subject groups id 41',	41,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:03:04',	NULL),
(137,	'New Record inserted On subject groups id 42',	42,	1,	'Insert',	'106.207.248.22',	'Android',	'Chrome 114.0.0.0',	'2023-10-18 22:03:28',	NULL),
(138,	'New Record inserted On students id 10',	10,	1,	'Insert',	'223.235.193.87',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-20 08:14:49',	NULL),
(140,	'New Record inserted On users id 19',	19,	1,	'Insert',	'223.235.193.87',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-20 08:14:49',	NULL),
(141,	'New Record inserted On users id 20',	20,	1,	'Insert',	'223.235.193.87',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-20 08:14:49',	NULL),
(142,	'Record updated On students id 10',	10,	1,	'Update',	'223.235.193.87',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-20 08:14:49',	NULL),
(143,	'Record updated On students id 10',	10,	1,	'Update',	'223.235.193.87',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-20 08:14:49',	NULL),
(144,	'New Record inserted On books id 1',	1,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 07:03:02',	NULL),
(145,	'New Record inserted On books id 2',	2,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 08:26:59',	NULL),
(146,	'Record deleted On books id 2',	2,	1,	'Delete',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 08:27:12',	NULL),
(147,	'New Record inserted On books id 3',	3,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 10:05:34',	NULL),
(148,	'New Record inserted On books id 4',	4,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 10:15:22',	NULL),
(149,	'Record deleted On books id 1',	1,	1,	'Delete',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 10:17:39',	NULL),
(150,	'New Record inserted On books id 5',	5,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 10:27:49',	NULL),
(151,	'New Record inserted On books id 6',	6,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 12:38:17',	NULL),
(152,	'Record deleted On books id 6',	6,	1,	'Delete',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 12:38:41',	NULL),
(153,	'New Record inserted On books id 7',	7,	1,	'Insert',	'182.70.226.18',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-21 12:39:47',	NULL),
(154,	'New Record inserted On vehicles id 1',	1,	1,	'Insert',	'122.175.168.235',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-26 08:06:22',	NULL),
(155,	'New Record inserted On students id 11',	11,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:16:31',	NULL),
(157,	'New Record inserted On users id 21',	21,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:16:31',	NULL),
(158,	'New Record inserted On users id 22',	22,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:16:31',	NULL),
(159,	'Record updated On students id 11',	11,	1,	'Update',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:16:31',	NULL),
(160,	'Record updated On students id 11',	11,	1,	'Update',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:16:31',	NULL),
(161,	'New Record inserted On students id 12',	12,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:38:38',	NULL),
(163,	'New Record inserted On users id 23',	23,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:38:38',	NULL),
(164,	'New Record inserted On users id 24',	24,	1,	'Insert',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:38:38',	NULL),
(165,	'Record updated On students id 12',	12,	1,	'Update',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:38:38',	NULL),
(166,	'Record updated On students id 12',	12,	1,	'Update',	'106.200.218.48',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-27 12:38:38',	NULL),
(167,	'New Record inserted On hostel rooms id 1',	1,	1,	'Insert',	'122.161.174.40',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-28 08:48:18',	NULL),
(168,	'New Record inserted On subject groups id 43',	43,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:06:20',	NULL),
(169,	'Record deleted On classes id 43',	43,	1,	'Delete',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:06:46',	NULL),
(170,	'New Record inserted On subject groups id 44',	44,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:06:54',	NULL),
(171,	'Record updated On staff id 1',	1,	1,	'Update',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:22:55',	NULL),
(172,	'Record updated On staff id 1',	1,	1,	'Update',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:22:55',	NULL),
(173,	'New Record inserted On students id 13',	13,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:36:44',	NULL),
(175,	'New Record inserted On users id 25',	25,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:36:44',	NULL),
(176,	'New Record inserted On users id 26',	26,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:36:44',	NULL),
(177,	'Record updated On students id 13',	13,	1,	'Update',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:36:44',	NULL),
(178,	'New Record inserted On students id 14',	14,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:37:41',	NULL),
(180,	'New Record inserted On users id 27',	27,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:37:41',	NULL),
(181,	'New Record inserted On users id 28',	28,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:37:41',	NULL),
(182,	'Record updated On students id 14',	14,	1,	'Update',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 08:37:41',	NULL),
(183,	'New Record inserted On staff attendance id 1',	1,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 10:44:17',	NULL),
(184,	'New Record inserted On staff attendance id 2',	2,	1,	'Insert',	'182.77.86.63',	'Windows 10',	'Chrome 118.0.0.0',	'2023-10-31 10:44:17',	NULL),
(185,	'Record updated On staff id 4',	4,	1,	'Update',	'122.177.206.19',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-03 06:57:13',	NULL),
(186,	'New Record inserted On staff attendance id 3',	3,	1,	'Insert',	'122.177.206.19',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-03 07:00:10',	NULL),
(187,	'Record updated On staff id 5',	5,	1,	'Update',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 07:36:44',	NULL),
(188,	'Record updated On staff id 6',	6,	5,	'Update',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 07:42:36',	NULL),
(189,	'New Record inserted On  Admission Enquiry  Postal Dispatch id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 08:53:40',	NULL),
(190,	'New Record inserted On department id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:09:43',	NULL),
(191,	'New Record inserted On  staff designation id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:09:56',	NULL),
(192,	'New Record inserted On  staff designation id 2',	2,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:10:11',	NULL),
(193,	'New Record inserted On  staff designation id 3',	3,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:10:20',	NULL),
(194,	'New Record inserted On libarary members id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:12:15',	NULL),
(195,	'New Record inserted On book issues id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:13:23',	NULL),
(196,	'New Record inserted On item category id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:21:29',	NULL),
(197,	'New Record inserted On item store id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:22:00',	NULL),
(198,	'New Record inserted On item supplier id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:22:14',	NULL),
(199,	'Record updated On  item supplier id 1',	1,	1,	'Update',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:24:41',	NULL),
(200,	'New Record inserted On transport route id 2',	2,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:25:26',	NULL),
(201,	'New Record inserted On vehicle routes id 1',	1,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:25:58',	NULL),
(202,	'New Record inserted On hostel rooms id 2',	2,	1,	'Insert',	'106.201.138.182',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-04 09:26:30',	NULL),
(203,	'Record deleted On sections id 2',	2,	1,	'Delete',	'106.201.138.182',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-04 10:28:05',	NULL),
(204,	'Record deleted On sections id 3',	3,	1,	'Delete',	'106.201.138.182',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-04 10:28:10',	NULL),
(205,	'New Record inserted On students id 15',	15,	1,	'Insert',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 09:51:42',	NULL),
(207,	'New Record inserted On users id 29',	29,	1,	'Insert',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 09:51:42',	NULL),
(208,	'New Record inserted On users id 30',	30,	1,	'Insert',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 09:51:42',	NULL),
(209,	'Record updated On students id 15',	15,	1,	'Update',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 09:51:42',	NULL),
(210,	'Record updated On staff id 7',	7,	1,	'Update',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 09:58:41',	NULL),
(211,	'Record updated On settings id 1',	1,	1,	'Update',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 10:11:54',	NULL),
(212,	'Record updated On  email config id 1',	1,	1,	'Update',	'182.70.209.64',	'Windows 10',	'Chrome 118.0.0.0',	'2023-11-06 13:36:15',	NULL),
(213,	'Record updated On  email config id 1',	1,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 10:27:25',	NULL),
(214,	'Record updated On staff id 8',	8,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 10:34:51',	NULL),
(215,	'Record updated On  email config id 1',	1,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 10:53:40',	NULL),
(216,	'Record updated On staff id 9',	9,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 10:57:46',	NULL),
(217,	'Record updated On  email config id 1',	1,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 11:03:55',	NULL),
(218,	'Record updated On  email config id 1',	1,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 12:39:57',	NULL),
(219,	'Record updated On staff id 10',	10,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 12:41:56',	NULL),
(220,	'New Record inserted On sections id 4',	4,	1,	'Insert',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:07:13',	NULL),
(221,	'Record updated On classes id 42',	42,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:07:33',	NULL),
(222,	'Record updated On classes id 6',	6,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:03',	NULL),
(223,	'Record updated On classes id 7',	7,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:12',	NULL),
(224,	'Record updated On classes id 8',	8,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:20',	NULL),
(225,	'Record updated On classes id 9',	9,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:30',	NULL),
(226,	'Record updated On classes id 41',	41,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:37',	NULL),
(227,	'Record updated On classes id 40',	40,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:43',	NULL),
(228,	'Record updated On classes id 39',	39,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:50',	NULL),
(229,	'Record updated On classes id 38',	38,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:18:59',	NULL),
(230,	'Record updated On classes id 37',	37,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:13',	NULL),
(231,	'Record updated On classes id 36',	36,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:20',	NULL),
(232,	'Record updated On classes id 35',	35,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:26',	NULL),
(233,	'Record updated On classes id 34',	34,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:33',	NULL),
(234,	'Record updated On classes id 10',	10,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:43',	NULL),
(235,	'Record updated On classes id 33',	33,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:50',	NULL),
(236,	'Record updated On classes id 32',	32,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:19:57',	NULL),
(237,	'Record updated On classes id 31',	31,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:03',	NULL),
(238,	'Record updated On classes id 30',	30,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:11',	NULL),
(239,	'Record updated On classes id 29',	29,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:18',	NULL),
(240,	'Record updated On classes id 28',	28,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:26',	NULL),
(241,	'Record updated On classes id 26',	26,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:34',	NULL),
(242,	'Record updated On classes id 27',	27,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:42',	NULL),
(243,	'Record updated On classes id 25',	25,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:51',	NULL),
(244,	'Record updated On classes id 24',	24,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:20:58',	NULL),
(245,	'Record updated On classes id 23',	23,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:21:06',	NULL),
(246,	'Record updated On classes id 22',	22,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:21:16',	NULL),
(247,	'Record updated On classes id 21',	21,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:21:23',	NULL),
(248,	'Record updated On classes id 20',	20,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:21:32',	NULL),
(249,	'Record updated On classes id 19',	19,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:21:40',	NULL),
(250,	'New Record inserted On students id 16',	16,	1,	'Insert',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:23:33',	NULL),
(252,	'New Record inserted On users id 31',	31,	1,	'Insert',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:23:33',	NULL),
(253,	'New Record inserted On users id 32',	32,	1,	'Insert',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:23:33',	NULL),
(254,	'Record updated On students id 16',	16,	1,	'Update',	'110.224.223.91',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-21 13:23:33',	NULL),
(255,	'New Record inserted On exam groups id 3',	3,	10,	'Insert',	'182.69.89.178',	'Windows 10',	'Opera 104.0.0.0',	'2023-11-23 06:41:53',	NULL),
(256,	'New Record inserted On grades id 1',	1,	10,	'Update',	'182.69.89.178',	'Windows 10',	'Opera 104.0.0.0',	'2023-11-23 06:45:53',	NULL),
(257,	'New Record inserted On exam group exams name id 1',	1,	10,	'Insert',	'182.69.89.178',	'Windows 10',	'Opera 104.0.0.0',	'2023-11-23 06:46:57',	NULL),
(258,	'New Record inserted On exam group exams name id 2',	2,	10,	'Insert',	'182.69.89.178',	'Windows 10',	'Opera 104.0.0.0',	'2023-11-23 06:47:23',	NULL),
(259,	'New Record inserted On exam group exams name id 3',	3,	1,	'Insert',	'182.69.89.178',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-23 06:51:07',	NULL),
(260,	'New Record inserted On subjects id 1',	1,	1,	'Insert',	'182.69.89.178',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-23 07:55:06',	NULL),
(261,	'New Record inserted On students id 17',	17,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:02:00',	NULL),
(263,	'New Record inserted On users id 33',	33,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:02:00',	NULL),
(264,	'New Record inserted On users id 34',	34,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:02:00',	NULL),
(265,	'Record updated On students id 17',	17,	1,	'Update',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:02:00',	NULL),
(266,	'New Record inserted On students id 18',	18,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:47:49',	NULL),
(267,	'New Record inserted On  student session id 22',	22,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:47:49',	NULL),
(268,	'New Record inserted On users id 35',	35,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:47:49',	NULL),
(269,	'New Record inserted On users id 36',	36,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:47:49',	NULL),
(270,	'Record updated On students id 18',	18,	1,	'Update',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:47:49',	NULL),
(271,	'New Record inserted On  student attendences id 2',	2,	1,	'Insert',	'49.35.159.44',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-26 11:49:17',	NULL),
(272,	'New Record inserted On  student attendences id 3',	3,	1,	'Insert',	'106.212.168.82',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-27 06:08:03',	NULL),
(273,	'New Record inserted On staff attendance id 4',	4,	1,	'Insert',	'106.212.168.82',	'Windows 10',	'Chrome 119.0.0.0',	'2023-11-27 06:09:28',	NULL),
(274,	'Record deleted On hostel id 1',	1,	1,	'Delete',	'110.227.52.99',	'Windows 10',	'Chrome 119.0.0.0',	'2023-12-04 22:02:57',	NULL),
(275,	'New Record inserted On hostel id 2',	2,	1,	'Insert',	'110.227.52.99',	'Windows 10',	'Chrome 119.0.0.0',	'2023-12-04 22:03:42',	NULL),
(276,	'New Record inserted On hostel id 3',	3,	1,	'Insert',	'110.227.52.99',	'Windows 10',	'Chrome 119.0.0.0',	'2023-12-04 22:05:00',	NULL),
(277,	'Record deleted On room types id 1',	1,	1,	'Delete',	'110.227.52.99',	'Windows 10',	'Chrome 119.0.0.0',	'2023-12-04 22:05:12',	NULL),
(278,	'New Record inserted On sections id 5',	5,	1,	'Insert',	'171.79.38.173',	'Windows 10',	'Chrome 120.0.0.0',	'2023-12-12 23:47:53',	NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `multi_class_students`;
CREATE TABLE `multi_class_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `multi_class_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `multi_class_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `notification_roles`;
CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `send_notification_id` (`send_notification_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES
(1,	1,	2,	0,	'2023-03-03 09:58:17'),
(2,	1,	3,	0,	'2023-03-03 09:58:17'),
(3,	1,	6,	0,	'2023-03-03 09:58:17'),
(4,	1,	7,	0,	'2023-03-03 09:58:17');

DROP TABLE IF EXISTS `notification_setting`;
CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `display_sms` int(11) NOT NULL DEFAULT 1,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `template`, `variables`, `created_at`) VALUES
(1,	'student_admission',	'1',	'1',	0,	0,	1,	'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\ndetail\r\n contact\r\n System\r\n Admin\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}',	'{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ',	'2021-01-22 11:34:16'),
(2,	'exam_result',	'1',	'1',	1,	1,	1,	'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.',	'{{student_name}} {{exam_roll_no}} {{exam}}',	'2021-01-22 11:34:56'),
(3,	'fee_submission',	'1',	'1',	1,	1,	1,	'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}',	'{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}',	'2021-01-22 11:35:29'),
(4,	'absent_attendence',	'1',	'1',	1,	1,	1,	'Absent Notice :{{student_name}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name',	'{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}}             {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ',	'2021-01-22 11:44:25'),
(5,	'login_credential',	'1',	'1',	0,	0,	1,	'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}}',	'{{url}} {{display_name}} {{username}} {{password}}',	'2021-01-19 12:15:36'),
(6,	'homework',	'1',	'1',	1,	1,	1,	'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you',	'{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}}',	'2021-01-19 12:43:22'),
(7,	'fees_reminder',	'1',	'1',	1,	1,	1,	'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)',	'{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ',	'2021-01-22 11:35:47'),
(8,	'forgot_password',	'1',	'0',	0,	0,	0,	'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}',	'{{school_name}}{{name}}{{username}}{{resetPassLink}} ',	'2021-01-22 11:44:50'),
(9,	'online_examination_publish_exam',	'1',	'1',	1,	1,	1,	'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.',	'{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}',	'2021-01-18 12:46:16'),
(10,	'online_examination_publish_result',	'1',	'1',	1,	1,	1,	'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.',	'{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}',	'2021-01-18 12:50:45');

DROP TABLE IF EXISTS `onlineexam`;
CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int(11) NOT NULL DEFAULT 0,
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int(11) NOT NULL DEFAULT 0,
  `is_neg_marking` int(11) NOT NULL DEFAULT 0,
  `is_random_question` int(11) NOT NULL DEFAULT 0,
  `is_rank_generated` int(1) NOT NULL DEFAULT 0,
  `publish_exam_notification` int(1) NOT NULL,
  `publish_result_notification` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `onlineexam_attempts`;
CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `onlineexam_questions`;
CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `neg_marks` float(10,2) DEFAULT 0.00,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `question_id` (`question_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `onlineexam_students`;
CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_attempted` int(1) NOT NULL DEFAULT 0,
  `rank` int(1) DEFAULT 0,
  `quiz_attempted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `onlineexam_student_results`;
CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` longtext DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  KEY `onlineexam_question_id` (`onlineexam_question_id`),
  CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `online_admissions`;
CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_enroll` int(255) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `payment_settings`;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `payslip_allowance`;
CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `permission_category`;
CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(1,	1,	'Student',	'student',	1,	1,	1,	1,	'2019-10-24 05:42:03'),
(2,	1,	'Import Student',	'import_student',	1,	0,	0,	0,	'2018-06-22 10:17:19'),
(3,	1,	'Student Categories',	'student_categories',	1,	1,	1,	1,	'2018-06-22 10:17:36'),
(4,	1,	'Student Houses',	'student_houses',	1,	1,	1,	1,	'2018-06-22 10:17:53'),
(5,	2,	'Collect Fees',	'collect_fees',	1,	1,	1,	1,	'2023-11-04 08:44:11'),
(6,	2,	'Fees Carry Forward',	'fees_carry_forward',	1,	0,	0,	0,	'2018-06-27 00:18:15'),
(7,	2,	'Fees Master',	'fees_master',	1,	1,	1,	1,	'2018-06-27 00:18:57'),
(8,	2,	'Fees Group',	'fees_group',	1,	1,	1,	1,	'2018-06-22 10:21:46'),
(9,	3,	'Income',	'income',	1,	1,	1,	1,	'2018-06-22 10:23:21'),
(10,	3,	'Income Head',	'income_head',	1,	1,	1,	1,	'2018-06-22 10:22:44'),
(11,	3,	'Search Income',	'search_income',	1,	0,	0,	0,	'2018-06-22 10:23:00'),
(12,	4,	'Expense',	'expense',	1,	1,	1,	1,	'2018-06-22 10:24:06'),
(13,	4,	'Expense Head',	'expense_head',	1,	1,	1,	1,	'2018-06-22 10:23:47'),
(14,	4,	'Search Expense',	'search_expense',	1,	0,	0,	0,	'2018-06-22 10:24:13'),
(15,	5,	'Student / Period Attendance',	'student_attendance',	1,	1,	1,	0,	'2019-11-29 01:19:05'),
(20,	6,	'Marks Grade',	'marks_grade',	1,	1,	1,	1,	'2018-06-22 10:25:25'),
(21,	7,	'Class Timetable',	'class_timetable',	1,	0,	1,	0,	'2019-11-24 03:05:17'),
(23,	7,	'Subject',	'subject',	1,	1,	1,	1,	'2018-06-22 10:32:17'),
(24,	7,	'Class',	'class',	1,	1,	1,	1,	'2018-06-22 10:32:35'),
(25,	7,	'Section',	'section',	1,	1,	1,	1,	'2018-06-22 10:31:10'),
(26,	7,	'Promote Student',	'promote_student',	1,	0,	0,	0,	'2018-06-22 10:32:47'),
(27,	8,	'Upload Content',	'upload_content',	1,	1,	0,	1,	'2018-06-22 10:33:19'),
(28,	9,	'Books List',	'books',	1,	1,	1,	1,	'2019-11-24 00:37:12'),
(29,	9,	'Issue Return',	'issue_return',	1,	0,	0,	0,	'2019-11-24 00:37:18'),
(30,	9,	'Add Staff Member',	'add_staff_member',	1,	0,	0,	0,	'2018-07-02 11:37:00'),
(31,	10,	'Issue Item',	'issue_item',	1,	1,	1,	1,	'2019-11-29 06:39:27'),
(32,	10,	'Add Item Stock',	'item_stock',	1,	1,	1,	1,	'2019-11-24 00:39:17'),
(33,	10,	'Add Item',	'item',	1,	1,	1,	1,	'2019-11-24 00:39:39'),
(34,	10,	'Item Store',	'store',	1,	1,	1,	1,	'2019-11-24 00:40:41'),
(35,	10,	'Item Supplier',	'supplier',	1,	1,	1,	1,	'2019-11-24 00:40:49'),
(37,	11,	'Routes',	'routes',	1,	1,	1,	1,	'2018-06-22 10:39:17'),
(38,	11,	'Vehicle',	'vehicle',	1,	1,	1,	1,	'2018-06-22 10:39:36'),
(39,	11,	'Assign Vehicle',	'assign_vehicle',	1,	1,	1,	1,	'2018-06-27 04:39:20'),
(40,	12,	'Hostel',	'hostel',	1,	1,	1,	1,	'2018-06-22 10:40:49'),
(41,	12,	'Room Type',	'room_type',	1,	1,	1,	1,	'2018-06-22 10:40:27'),
(42,	12,	'Hostel Rooms',	'hostel_rooms',	1,	1,	1,	1,	'2018-06-25 06:23:03'),
(43,	13,	'Notice Board',	'notice_board',	1,	1,	1,	1,	'2018-06-22 10:41:17'),
(44,	13,	'Email',	'email',	1,	0,	0,	0,	'2019-11-26 05:20:37'),
(46,	13,	'Email / SMS Log',	'email_sms_log',	1,	0,	0,	0,	'2018-06-22 10:41:23'),
(53,	15,	'Languages',	'languages',	0,	1,	0,	1,	'2021-01-23 07:09:32'),
(54,	15,	'General Setting',	'general_setting',	1,	0,	1,	0,	'2018-07-05 09:08:35'),
(55,	15,	'Session Setting',	'session_setting',	1,	1,	1,	1,	'2018-06-22 10:44:15'),
(56,	15,	'Notification Setting',	'notification_setting',	1,	0,	1,	0,	'2018-07-05 09:08:41'),
(57,	15,	'SMS Setting',	'sms_setting',	1,	0,	1,	0,	'2018-07-05 09:08:47'),
(58,	15,	'Email Setting',	'email_setting',	1,	0,	1,	0,	'2018-07-05 09:08:51'),
(59,	15,	'Front CMS Setting',	'front_cms_setting',	1,	0,	1,	0,	'2018-07-05 09:08:55'),
(60,	15,	'Payment Methods',	'payment_methods',	1,	0,	1,	0,	'2018-07-05 09:08:59'),
(61,	16,	'Menus',	'menus',	1,	1,	0,	1,	'2018-07-09 03:50:06'),
(62,	16,	'Media Manager',	'media_manager',	1,	1,	0,	1,	'2018-07-09 03:50:26'),
(63,	16,	'Banner Images',	'banner_images',	1,	1,	0,	1,	'2018-06-22 10:46:02'),
(64,	16,	'Pages',	'pages',	1,	1,	1,	1,	'2018-06-22 10:46:21'),
(65,	16,	'Gallery',	'gallery',	1,	1,	1,	1,	'2018-06-22 10:47:02'),
(66,	16,	'Event',	'event',	1,	1,	1,	1,	'2018-06-22 10:47:20'),
(67,	16,	'News',	'notice',	1,	1,	1,	1,	'2018-07-03 08:39:34'),
(68,	2,	'Fees Group Assign',	'fees_group_assign',	1,	0,	0,	0,	'2018-06-22 10:20:42'),
(69,	2,	'Fees Type',	'fees_type',	1,	1,	1,	1,	'2018-06-22 10:19:34'),
(70,	2,	'Fees Discount',	'fees_discount',	1,	1,	1,	1,	'2018-06-22 10:20:10'),
(71,	2,	'Fees Discount Assign',	'fees_discount_assign',	1,	0,	0,	0,	'2018-06-22 10:20:17'),
(73,	2,	'Search Fees Payment',	'search_fees_payment',	1,	0,	0,	0,	'2018-06-22 10:20:27'),
(74,	2,	'Search Due Fees',	'search_due_fees',	1,	0,	0,	0,	'2018-06-22 10:20:35'),
(77,	7,	'Assign Class Teacher',	'assign_class_teacher',	1,	1,	1,	1,	'2018-06-22 10:30:52'),
(78,	17,	'Admission Enquiry',	'admission_enquiry',	1,	1,	1,	1,	'2018-06-22 10:51:24'),
(79,	17,	'Follow Up Admission Enquiry',	'follow_up_admission_enquiry',	1,	1,	0,	1,	'2018-06-22 10:51:39'),
(80,	17,	'Visitor Book',	'visitor_book',	1,	1,	1,	1,	'2018-06-22 10:48:58'),
(81,	17,	'Phone Call Log',	'phone_call_log',	1,	1,	1,	1,	'2018-06-22 10:50:57'),
(82,	17,	'Postal Dispatch',	'postal_dispatch',	1,	1,	1,	1,	'2018-06-22 10:50:21'),
(83,	17,	'Postal Receive',	'postal_receive',	1,	1,	1,	1,	'2018-06-22 10:50:04'),
(84,	17,	'Complain',	'complaint',	1,	1,	1,	1,	'2018-07-03 08:40:55'),
(85,	17,	'Setup Font Office',	'setup_font_office',	1,	1,	1,	1,	'2018-06-22 10:49:24'),
(86,	18,	'Staff',	'staff',	1,	1,	1,	1,	'2018-06-22 10:53:31'),
(87,	18,	'Disable Staff',	'disable_staff',	1,	0,	0,	0,	'2018-06-22 10:53:12'),
(88,	18,	'Staff Attendance',	'staff_attendance',	1,	1,	1,	0,	'2018-06-22 10:53:10'),
(90,	18,	'Staff Payroll',	'staff_payroll',	1,	1,	0,	1,	'2018-06-22 10:52:51'),
(93,	19,	'Homework',	'homework',	1,	1,	1,	1,	'2018-06-22 10:53:50'),
(94,	19,	'Homework Evaluation',	'homework_evaluation',	1,	1,	0,	0,	'2018-06-27 03:07:21'),
(96,	20,	'Student Certificate',	'student_certificate',	1,	1,	1,	1,	'2018-07-06 10:41:07'),
(97,	20,	'Generate Certificate',	'generate_certificate',	1,	0,	0,	0,	'2018-07-06 10:37:16'),
(98,	20,	'Student ID Card',	'student_id_card',	1,	1,	1,	1,	'2018-07-06 10:41:28'),
(99,	20,	'Generate ID Card',	'generate_id_card',	1,	0,	0,	0,	'2018-07-06 10:41:49'),
(102,	21,	'Calendar To Do List',	'calendar_to_do_list',	1,	1,	1,	1,	'2018-06-22 10:54:41'),
(104,	10,	'Item Category',	'item_category',	1,	1,	1,	1,	'2018-06-22 10:34:33'),
(106,	22,	'Quick Session Change',	'quick_session_change',	1,	0,	0,	0,	'2018-06-22 10:54:45'),
(107,	1,	'Disable Student',	'disable_student',	1,	0,	0,	0,	'2018-06-25 06:21:34'),
(108,	18,	' Approve Leave Request',	'approve_leave_request',	1,	0,	1,	1,	'2020-10-05 08:56:27'),
(109,	18,	'Apply Leave',	'apply_leave',	1,	1,	0,	0,	'2019-11-28 23:47:46'),
(110,	18,	'Leave Types ',	'leave_types',	1,	1,	1,	1,	'2018-07-02 10:17:56'),
(111,	18,	'Department',	'department',	1,	1,	1,	1,	'2018-06-26 03:57:07'),
(112,	18,	'Designation',	'designation',	1,	1,	1,	1,	'2018-06-26 03:57:07'),
(113,	22,	'Fees Collection And Expense Monthly Chart',	'fees_collection_and_expense_monthly_chart',	1,	0,	0,	0,	'2018-07-03 07:08:15'),
(114,	22,	'Fees Collection And Expense Yearly Chart',	'fees_collection_and_expense_yearly_chart',	1,	0,	0,	0,	'2018-07-03 07:08:15'),
(115,	22,	'Monthly Fees Collection Widget',	'Monthly fees_collection_widget',	1,	0,	0,	0,	'2018-07-03 07:13:35'),
(116,	22,	'Monthly Expense Widget',	'monthly_expense_widget',	1,	0,	0,	0,	'2018-07-03 07:13:35'),
(117,	22,	'Student Count Widget',	'student_count_widget',	1,	0,	0,	0,	'2018-07-03 07:13:35'),
(118,	22,	'Staff Role Count Widget',	'staff_role_count_widget',	1,	0,	0,	0,	'2018-07-03 07:13:35'),
(122,	5,	'Attendance By Date',	'attendance_by_date',	1,	0,	0,	0,	'2018-07-03 08:42:29'),
(123,	9,	'Add Student',	'add_student',	1,	0,	0,	0,	'2018-07-03 08:42:29'),
(126,	15,	'User Status',	'user_status',	1,	0,	0,	0,	'2018-07-03 08:42:29'),
(127,	18,	'Can See Other Users Profile',	'can_see_other_users_profile',	1,	0,	0,	0,	'2018-07-03 08:42:29'),
(128,	1,	'Student Timeline',	'student_timeline',	0,	1,	0,	1,	'2018-07-05 08:08:52'),
(129,	18,	'Staff Timeline',	'staff_timeline',	0,	1,	0,	1,	'2018-07-05 08:08:52'),
(130,	15,	'Backup',	'backup',	1,	1,	0,	1,	'2018-07-09 04:17:17'),
(131,	15,	'Restore',	'restore',	1,	0,	0,	0,	'2018-07-09 04:17:17'),
(134,	1,	'Disable Reason',	'disable_reason',	1,	1,	1,	1,	'2019-11-27 06:39:21'),
(135,	2,	'Fees Reminder',	'fees_reminder',	1,	0,	1,	0,	'2019-10-25 00:39:49'),
(136,	5,	'Approve Leave',	'approve_leave',	1,	0,	0,	0,	'2019-10-25 00:46:44'),
(137,	6,	'Exam Group',	'exam_group',	1,	1,	1,	1,	'2019-10-25 01:02:34'),
(141,	6,	'Design Admit Card',	'design_admit_card',	1,	1,	1,	1,	'2019-10-25 01:06:59'),
(142,	6,	'Print Admit Card',	'print_admit_card',	1,	0,	0,	0,	'2019-11-23 23:57:51'),
(143,	6,	'Design Marksheet',	'design_marksheet',	1,	1,	1,	1,	'2019-10-25 01:10:25'),
(144,	6,	'Print Marksheet',	'print_marksheet',	1,	0,	0,	0,	'2019-10-25 01:11:02'),
(145,	7,	'Teachers Timetable',	'teachers_time_table',	1,	0,	0,	0,	'2019-11-30 02:52:21'),
(146,	14,	'Student Report',	'student_report',	1,	0,	0,	0,	'2019-10-25 01:27:00'),
(147,	14,	'Guardian Report',	'guardian_report',	1,	0,	0,	0,	'2019-10-25 01:30:27'),
(148,	14,	'Student History',	'student_history',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(149,	14,	'Student Login Credential Report',	'student_login_credential_report',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(150,	14,	'Class Subject Report',	'class_subject_report',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(151,	14,	'Admission Report',	'admission_report',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(152,	14,	'Sibling Report',	'sibling_report',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(153,	14,	'Homework Evaluation Report',	'homehork_evaluation_report',	1,	0,	0,	0,	'2019-11-24 01:04:24'),
(154,	14,	'Student Profile',	'student_profile',	1,	0,	0,	0,	'2019-10-25 01:39:07'),
(155,	14,	'Fees Statement',	'fees_statement',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(156,	14,	'Balance Fees Report',	'balance_fees_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(157,	14,	'Fees Collection Report',	'fees_collection_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(158,	14,	'Online Fees Collection Report',	'online_fees_collection_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(159,	14,	'Income Report',	'income_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(160,	14,	'Expense Report',	'expense_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(161,	14,	'PayRoll Report',	'payroll_report',	1,	0,	0,	0,	'2019-10-31 00:23:22'),
(162,	14,	'Income Group Report',	'income_group_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(163,	14,	'Expense Group Report',	'expense_group_report',	1,	0,	0,	0,	'2019-10-25 01:55:52'),
(164,	14,	'Attendance Report',	'attendance_report',	1,	0,	0,	0,	'2019-10-25 02:08:06'),
(165,	14,	'Staff Attendance Report',	'staff_attendance_report',	1,	0,	0,	0,	'2019-10-25 02:08:06'),
(174,	14,	'Transport Report',	'transport_report',	1,	0,	0,	0,	'2019-10-25 02:13:56'),
(175,	14,	'Hostel Report',	'hostel_report',	1,	0,	0,	0,	'2019-11-27 06:51:53'),
(176,	14,	'Audit Trail Report',	'audit_trail_report',	1,	0,	0,	0,	'2019-10-25 02:16:39'),
(177,	14,	'User Log',	'user_log',	1,	0,	0,	0,	'2019-10-25 02:19:27'),
(178,	14,	'Book Issue Report',	'book_issue_report',	1,	0,	0,	0,	'2019-10-25 02:29:04'),
(179,	14,	'Book Due Report',	'book_due_report',	1,	0,	0,	0,	'2019-10-25 02:29:04'),
(180,	14,	'Book Inventory Report',	'book_inventory_report',	1,	0,	0,	0,	'2019-10-25 02:29:04'),
(181,	14,	'Stock Report',	'stock_report',	1,	0,	0,	0,	'2019-10-25 02:31:28'),
(182,	14,	'Add Item Report',	'add_item_report',	1,	0,	0,	0,	'2019-10-25 02:31:28'),
(183,	14,	'Issue Item Report',	'issue_item_report',	1,	0,	0,	0,	'2019-11-29 03:48:06'),
(185,	23,	'Online Examination',	'online_examination',	1,	1,	1,	1,	'2019-11-23 23:54:50'),
(186,	23,	'Question Bank',	'question_bank',	1,	1,	1,	1,	'2019-11-23 23:55:18'),
(187,	6,	'Exam Result',	'exam_result',	1,	0,	0,	0,	'2019-11-23 23:58:50'),
(188,	7,	'Subject Group',	'subject_group',	1,	1,	1,	1,	'2019-11-24 00:34:32'),
(189,	18,	'Teachers Rating',	'teachers_rating',	1,	0,	1,	1,	'2019-11-24 03:12:54'),
(190,	22,	'Fees Awaiting Payment Widegts',	'fees_awaiting_payment_widegts',	1,	0,	0,	0,	'2019-11-24 00:52:51'),
(191,	22,	'Conveted Leads Widegts',	'conveted_leads_widegts',	1,	0,	0,	0,	'2019-11-24 00:58:24'),
(192,	22,	'Fees Overview Widegts',	'fees_overview_widegts',	1,	0,	0,	0,	'2019-11-24 00:57:41'),
(193,	22,	'Enquiry Overview Widegts',	'enquiry_overview_widegts',	1,	0,	0,	0,	'2019-12-02 05:06:09'),
(194,	22,	'Library Overview Widegts',	'book_overview_widegts',	1,	0,	0,	0,	'2019-12-01 01:13:04'),
(195,	22,	'Student Today Attendance Widegts',	'today_attendance_widegts',	1,	0,	0,	0,	'2019-12-03 04:57:45'),
(196,	6,	'Marks Import',	'marks_import',	1,	0,	0,	0,	'2019-11-24 01:02:11'),
(197,	14,	'Student Attendance Type Report',	'student_attendance_type_report',	1,	0,	0,	0,	'2019-11-24 01:06:32'),
(198,	14,	'Exam Marks Report',	'exam_marks_report',	1,	0,	0,	0,	'2019-11-24 01:11:15'),
(200,	14,	'Online Exam Wise Report',	'online_exam_wise_report',	1,	0,	0,	0,	'2019-11-24 01:18:14'),
(201,	14,	'Online Exams Report',	'online_exams_report',	1,	0,	0,	0,	'2019-11-29 02:48:05'),
(202,	14,	'Online Exams Attempt Report',	'online_exams_attempt_report',	1,	0,	0,	0,	'2019-11-29 02:46:24'),
(203,	14,	'Online Exams Rank Report',	'online_exams_rank_report',	1,	0,	0,	0,	'2019-11-24 01:22:25'),
(204,	14,	'Staff Report',	'staff_report',	1,	0,	0,	0,	'2019-11-24 01:25:27'),
(205,	6,	'Exam',	'exam',	1,	1,	1,	1,	'2019-11-24 04:55:48'),
(207,	6,	'Exam Publish',	'exam_publish',	1,	0,	0,	0,	'2019-11-24 05:15:04'),
(208,	6,	'Link Exam',	'link_exam',	1,	0,	1,	0,	'2019-11-24 05:15:04'),
(210,	6,	'Assign / View student',	'exam_assign_view_student',	1,	0,	1,	0,	'2019-11-24 05:15:04'),
(211,	6,	'Exam Subject',	'exam_subject',	1,	0,	1,	0,	'2019-11-24 05:15:04'),
(212,	6,	'Exam Marks',	'exam_marks',	1,	0,	1,	0,	'2019-11-24 05:15:04'),
(213,	15,	'Language Switcher',	'language_switcher',	1,	0,	0,	0,	'2019-11-24 05:17:11'),
(214,	23,	'Add Questions in Exam ',	'add_questions_in_exam',	1,	0,	1,	0,	'2019-11-28 01:38:57'),
(215,	15,	'Custom Fields',	'custom_fields',	1,	0,	0,	0,	'2019-11-29 04:08:35'),
(216,	15,	'System Fields',	'system_fields',	1,	0,	0,	0,	'2019-11-25 00:15:01'),
(217,	13,	'SMS',	'sms',	1,	0,	0,	0,	'2018-06-22 10:40:54'),
(219,	14,	'Student / Period Attendance Report',	'student_period_attendance_report',	1,	0,	0,	0,	'2019-11-29 02:19:31'),
(220,	14,	'Biometric Attendance Log',	'biometric_attendance_log',	1,	0,	0,	0,	'2019-11-27 05:59:16'),
(221,	14,	'Book Issue Return Report',	'book_issue_return_report',	1,	0,	0,	0,	'2019-11-27 06:30:23'),
(222,	23,	'Assign / View Student',	'online_assign_view_student',	1,	0,	1,	0,	'2019-11-28 04:20:22'),
(223,	14,	'Rank Report',	'rank_report',	1,	0,	0,	0,	'2019-11-29 02:30:21'),
(224,	25,	'Chat',	'chat',	1,	0,	0,	0,	'2019-11-29 04:10:28'),
(226,	22,	'Income Donut Graph',	'income_donut_graph',	1,	0,	0,	0,	'2019-11-29 05:00:33'),
(227,	22,	'Expense Donut Graph',	'expense_donut_graph',	1,	0,	0,	0,	'2019-11-29 05:01:10'),
(228,	9,	'Import Book',	'import_book',	1,	0,	0,	0,	'2019-11-29 06:21:01'),
(229,	22,	'Staff Present Today Widegts',	'staff_present_today_widegts',	1,	0,	0,	0,	'2019-11-29 06:48:00'),
(230,	22,	'Student Present Today Widegts',	'student_present_today_widegts',	1,	0,	0,	0,	'2019-11-29 06:47:42'),
(231,	26,	'Multi Class Student',	'multi_class_student',	1,	1,	1,	1,	'2020-10-05 08:56:27'),
(232,	27,	'Online Admission',	'online_admission',	1,	0,	1,	1,	'2019-12-02 06:11:10'),
(233,	15,	'Print Header Footer',	'print_header_footer',	1,	0,	0,	0,	'2020-02-12 02:02:02'),
(234,	28,	'Manage Alumni',	'manage_alumni',	1,	1,	1,	1,	'2020-06-02 03:15:46'),
(235,	28,	'Events',	'events',	1,	1,	1,	1,	'2020-05-28 21:48:52'),
(236,	29,	'Manage Lesson Plan',	'manage_lesson_plan',	1,	1,	1,	0,	'2020-05-28 22:17:37'),
(237,	29,	'Manage Syllabus Status',	'manage_syllabus_status',	1,	0,	1,	0,	'2020-05-28 22:20:11'),
(238,	29,	'Lesson',	'lesson',	1,	1,	1,	1,	'2020-05-28 22:20:11'),
(239,	29,	'Topic',	'topic',	1,	1,	1,	1,	'2020-05-28 22:20:11'),
(240,	14,	'Syllabus Status Report',	'syllabus_status_report',	1,	0,	0,	0,	'2020-05-28 23:17:54'),
(241,	14,	'Teacher Syllabus Status Report',	'teacher_syllabus_status_report',	1,	0,	0,	0,	'2020-05-28 23:17:54'),
(242,	14,	'Alumni Report',	'alumni_report',	1,	0,	0,	0,	'2020-06-07 23:59:54'),
(243,	15,	'Student Profile Update',	'student_profile_update',	1,	0,	0,	0,	'2020-08-21 05:36:33'),
(244,	14,	'Student Gender Ratio Report',	'student_gender_ratio_report',	1,	0,	0,	0,	'2020-08-22 12:37:51'),
(245,	14,	'Student Teacher Ratio Report',	'student_teacher_ratio_report',	1,	0,	0,	0,	'2020-08-22 12:42:27'),
(246,	14,	'Daily Attendance Report',	'daily_attendance_report',	1,	0,	0,	0,	'2020-08-22 12:43:16'),
(247,	23,	'Import Question',	'import_question',	1,	0,	0,	0,	'2019-11-23 18:25:18'),
(6001,	600,	'Live Classes',	'gmeet_live_classes',	1,	1,	0,	1,	'2020-09-22 10:03:29'),
(6002,	600,	'Live Meeting',	'gmeet_live_meeting',	1,	1,	0,	1,	'2020-09-22 10:03:44'),
(6003,	600,	'Live Meeting Report',	'gmeet_live_meeting_report',	1,	0,	0,	0,	'2020-09-22 10:03:57'),
(6004,	600,	'Live Classes Report',	'gmeet_live_classes_report',	1,	0,	0,	0,	'2020-09-22 10:04:08'),
(6005,	600,	'Setting',	'gmeet_setting',	1,	0,	1,	0,	'2020-09-22 10:04:08');

DROP TABLE IF EXISTS `permission_group`;
CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1,	'Student Information',	'student_information',	1,	1,	'2019-03-15 09:30:22'),
(2,	'Fees Collection',	'fees_collection',	1,	0,	'2020-06-11 00:51:35'),
(3,	'Income',	'income',	1,	0,	'2020-06-01 01:57:39'),
(4,	'Expense',	'expense',	1,	0,	'2019-03-15 09:06:22'),
(5,	'Student Attendance',	'student_attendance',	1,	0,	'2018-07-02 07:48:08'),
(6,	'Examination',	'examination',	1,	0,	'2018-07-11 02:49:08'),
(7,	'Academics',	'academics',	1,	1,	'2018-07-02 07:25:43'),
(8,	'Download Center',	'download_center',	1,	0,	'2018-07-02 07:49:29'),
(9,	'Library',	'library',	1,	0,	'2018-06-28 11:13:14'),
(10,	'Inventory',	'inventory',	1,	0,	'2018-06-27 00:48:58'),
(11,	'Transport',	'transport',	1,	0,	'2018-06-27 07:51:26'),
(12,	'Hostel',	'hostel',	1,	0,	'2018-07-02 07:49:32'),
(13,	'Communicate',	'communicate',	1,	0,	'2018-07-02 07:50:00'),
(14,	'Reports',	'reports',	1,	1,	'2018-06-27 03:40:22'),
(15,	'System Settings',	'system_settings',	1,	1,	'2018-06-27 03:40:28'),
(16,	'Front CMS',	'front_cms',	1,	0,	'2018-07-10 05:16:54'),
(17,	'Front Office',	'front_office',	1,	0,	'2018-06-27 03:45:30'),
(18,	'Human Resource',	'human_resource',	1,	1,	'2018-06-27 03:41:02'),
(19,	'Homework',	'homework',	1,	0,	'2018-06-27 00:49:38'),
(20,	'Certificate',	'certificate',	1,	0,	'2018-06-27 07:51:29'),
(21,	'Calendar To Do List',	'calendar_to_do_list',	1,	0,	'2019-03-15 09:06:25'),
(22,	'Dashboard and Widgets',	'dashboard_and_widgets',	1,	1,	'2018-06-27 03:41:17'),
(23,	'Online Examination',	'online_examination',	1,	0,	'2020-06-01 02:25:36'),
(25,	'Chat',	'chat',	1,	0,	'2019-11-23 23:54:04'),
(26,	'Multi Class',	'multi_class',	1,	0,	'2019-11-27 12:14:14'),
(27,	'Online Admission',	'online_admission',	1,	0,	'2019-11-27 02:42:13'),
(28,	'Alumni',	'alumni',	1,	0,	'2020-05-29 00:26:38'),
(29,	'Lesson Plan',	'lesson_plan',	1,	0,	'2020-06-07 05:38:30'),
(600,	'Gmeet Live Classes',	'gmeet_live_classes',	1,	0,	'2020-11-12 13:37:03');

DROP TABLE IF EXISTS `permission_student`;
CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES
(1,	'Fees',	'fees',	0,	1,	1,	2,	'2020-06-11 00:51:35'),
(2,	'Class Timetable',	'class_timetable',	1,	1,	1,	7,	'2020-05-30 19:57:50'),
(3,	'Homework',	'homework',	0,	1,	1,	19,	'2020-06-01 02:49:14'),
(4,	'Download Center',	'download_center',	0,	1,	1,	8,	'2020-06-01 02:52:49'),
(5,	'Attendance',	'attendance',	0,	1,	1,	5,	'2020-06-01 02:57:18'),
(7,	'Examinations',	'examinations',	0,	1,	1,	6,	'2020-06-01 02:59:50'),
(8,	'Notice Board',	'notice_board',	0,	1,	1,	13,	'2020-06-01 03:00:35'),
(11,	'Library',	'library',	0,	1,	1,	9,	'2020-06-01 03:02:37'),
(12,	'Transport Routes',	'transport_routes',	0,	1,	1,	11,	'2020-06-01 03:51:30'),
(13,	'Hostel Rooms',	'hostel_rooms',	0,	1,	1,	12,	'2020-06-01 03:52:27'),
(14,	'Calendar To Do List',	'calendar_to_do_list',	0,	1,	1,	21,	'2020-06-01 03:53:18'),
(15,	'Online Examination',	'online_examination',	0,	1,	1,	23,	'2020-06-11 05:20:01'),
(16,	'Teachers Rating',	'teachers_rating',	0,	1,	1,	0,	'2020-06-01 04:49:58'),
(17,	'Chat',	'chat',	0,	1,	1,	25,	'2020-06-01 04:53:06'),
(18,	'Multi Class',	'multi_class',	1,	1,	1,	26,	'2020-05-30 19:56:52'),
(19,	'Lesson Plan',	'lesson_plan',	0,	1,	1,	29,	'2020-06-07 05:38:30'),
(20,	'Syllabus Status',	'syllabus_status',	0,	1,	1,	29,	'2020-06-07 05:38:30'),
(23,	'Apply Leave',	'apply_leave',	0,	1,	1,	0,	'2020-06-11 05:20:23'),
(24,	'Gmeet Live Classes ',	'gmeet_live_classes',	0,	1,	1,	600,	'2020-11-12 13:37:03');

DROP TABLE IF EXISTS `print_headerfooter`;
CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES
(1,	'staff_payslip',	'header_image.jpg',	'This payslip is computer generated hence no signature is required.',	1,	'2020-02-28 15:41:08'),
(2,	'student_receipt',	'header_image.jpg',	'This receipt is computer generated hence no signature is required.',	1,	'2020-02-28 15:40:58');

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `question_answers`;
CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `question_options`;
CREATE TABLE `question_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `read_notification`;
CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `read_notification` (`id`, `student_id`, `parent_id`, `staff_id`, `notification_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	NULL,	NULL,	4,	1,	'no',	'2023-11-03 07:37:36',	NULL);

DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1,	'Admin',	NULL,	1,	1,	1,	'2023-11-04 07:18:25',	'0000-00-00'),
(2,	'Teacher',	NULL,	1,	1,	0,	'2023-11-03 07:29:20',	'0000-00-00'),
(3,	'Accountant',	NULL,	0,	1,	0,	'2018-06-30 15:39:17',	'0000-00-00'),
(4,	'parents',	NULL,	0,	1,	0,	'2022-07-15 07:00:32',	'0000-00-00'),
(6,	'Receptionist',	NULL,	0,	1,	0,	'2018-07-02 05:39:03',	'0000-00-00'),
(7,	'Super Admin',	NULL,	1,	1,	1,	'2023-11-04 06:57:40',	'0000-00-00');

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(10,	1,	17,	1,	1,	1,	1,	'2018-07-06 09:48:56'),
(11,	1,	78,	1,	1,	1,	1,	'2018-07-03 00:49:43'),
(23,	1,	12,	1,	1,	1,	1,	'2018-07-06 09:45:38'),
(24,	1,	13,	1,	1,	1,	1,	'2018-07-06 09:48:28'),
(26,	1,	15,	1,	1,	1,	0,	'2019-11-27 23:47:28'),
(28,	1,	19,	1,	1,	1,	0,	'2018-07-02 11:31:10'),
(30,	1,	76,	1,	1,	1,	0,	'2018-07-02 11:31:10'),
(31,	1,	21,	1,	0,	1,	0,	'2019-11-26 04:51:15'),
(32,	1,	22,	1,	1,	1,	1,	'2018-07-02 11:32:05'),
(34,	1,	24,	1,	1,	1,	1,	'2019-11-28 06:35:20'),
(43,	1,	32,	1,	1,	1,	1,	'2018-07-06 10:22:05'),
(44,	1,	33,	1,	1,	1,	1,	'2018-07-06 10:22:29'),
(45,	1,	34,	1,	1,	1,	1,	'2018-07-06 10:23:59'),
(46,	1,	35,	1,	1,	1,	1,	'2018-07-06 10:24:34'),
(47,	1,	104,	1,	1,	1,	1,	'2018-07-06 10:23:08'),
(48,	1,	37,	1,	1,	1,	1,	'2018-07-06 10:25:30'),
(49,	1,	38,	1,	1,	1,	1,	'2018-07-09 05:15:27'),
(58,	1,	52,	1,	1,	0,	1,	'2018-07-09 03:19:43'),
(61,	1,	55,	1,	1,	1,	1,	'2018-07-02 09:24:16'),
(67,	1,	61,	1,	1,	0,	1,	'2018-07-09 05:59:19'),
(68,	1,	62,	1,	1,	0,	1,	'2018-07-09 05:59:19'),
(69,	1,	63,	1,	1,	0,	1,	'2018-07-09 03:51:38'),
(70,	1,	64,	1,	1,	1,	1,	'2018-07-09 03:02:19'),
(71,	1,	65,	1,	1,	1,	1,	'2018-07-09 03:11:21'),
(72,	1,	66,	1,	1,	1,	1,	'2018-07-09 03:13:09'),
(73,	1,	67,	1,	1,	1,	1,	'2018-07-09 03:14:47'),
(74,	1,	79,	1,	1,	0,	1,	'2019-11-30 01:32:51'),
(75,	1,	80,	1,	1,	1,	1,	'2018-07-06 09:41:23'),
(76,	1,	81,	1,	1,	1,	1,	'2018-07-06 09:41:23'),
(78,	1,	83,	1,	1,	1,	1,	'2018-07-06 09:41:23'),
(79,	1,	84,	1,	1,	1,	1,	'2018-07-06 09:41:23'),
(80,	1,	85,	1,	1,	1,	1,	'2018-07-12 00:16:00'),
(87,	1,	92,	1,	1,	1,	1,	'2018-06-26 03:33:43'),
(94,	1,	82,	1,	1,	1,	1,	'2018-07-06 09:41:23'),
(120,	1,	39,	1,	1,	1,	1,	'2018-07-06 10:26:28'),
(156,	1,	9,	1,	1,	1,	1,	'2019-11-27 23:45:46'),
(157,	1,	10,	1,	1,	1,	1,	'2019-11-27 23:45:46'),
(159,	1,	40,	1,	1,	1,	1,	'2019-11-30 00:49:39'),
(160,	1,	41,	1,	1,	1,	1,	'2019-12-02 05:43:41'),
(161,	1,	42,	1,	1,	1,	1,	'2019-11-30 00:49:39'),
(169,	1,	27,	1,	1,	0,	1,	'2019-11-29 06:15:37'),
(178,	1,	54,	1,	0,	1,	0,	'2018-07-05 09:09:22'),
(179,	1,	56,	1,	0,	1,	0,	'2019-11-30 00:49:54'),
(180,	1,	57,	1,	0,	1,	0,	'2019-11-30 01:32:51'),
(181,	1,	58,	1,	0,	1,	0,	'2019-11-30 01:32:51'),
(182,	1,	59,	1,	0,	1,	0,	'2019-11-30 01:32:51'),
(183,	1,	60,	1,	0,	1,	0,	'2019-11-30 00:59:57'),
(190,	1,	105,	1,	0,	0,	0,	'2018-07-02 11:13:25'),
(199,	1,	75,	1,	0,	0,	0,	'2018-07-02 11:19:46'),
(201,	1,	14,	1,	0,	0,	0,	'2018-07-02 11:22:03'),
(203,	1,	16,	1,	0,	0,	0,	'2018-07-02 11:24:21'),
(204,	1,	26,	1,	0,	0,	0,	'2018-07-02 11:32:05'),
(206,	1,	29,	1,	0,	0,	0,	'2018-07-02 11:43:54'),
(207,	1,	30,	1,	0,	0,	0,	'2018-07-02 11:43:54'),
(208,	1,	31,	1,	1,	1,	1,	'2019-11-30 01:32:51'),
(215,	1,	50,	1,	0,	0,	0,	'2018-07-02 12:04:53'),
(216,	1,	51,	1,	0,	0,	0,	'2018-07-02 12:04:53'),
(222,	1,	1,	1,	1,	1,	1,	'2019-11-27 22:55:06'),
(227,	1,	91,	1,	0,	0,	0,	'2018-07-03 01:49:27'),
(230,	10,	53,	0,	1,	0,	0,	'2018-07-03 03:52:55'),
(231,	10,	54,	0,	0,	1,	0,	'2018-07-03 03:52:55'),
(232,	10,	55,	1,	1,	1,	1,	'2018-07-03 03:58:42'),
(233,	10,	56,	0,	0,	1,	0,	'2018-07-03 03:52:55'),
(235,	10,	58,	0,	0,	1,	0,	'2018-07-03 03:52:55'),
(236,	10,	59,	0,	0,	1,	0,	'2018-07-03 03:52:55'),
(239,	10,	1,	1,	1,	1,	1,	'2018-07-03 04:16:43'),
(241,	10,	3,	1,	0,	0,	0,	'2018-07-03 04:23:56'),
(242,	10,	2,	1,	0,	0,	0,	'2018-07-03 04:24:39'),
(243,	10,	4,	1,	0,	1,	1,	'2018-07-03 04:31:24'),
(245,	10,	107,	1,	0,	0,	0,	'2018-07-03 04:36:41'),
(246,	10,	5,	1,	1,	0,	1,	'2018-07-03 04:38:18'),
(247,	10,	7,	1,	1,	1,	1,	'2018-07-03 04:42:07'),
(248,	10,	68,	1,	0,	0,	0,	'2018-07-03 04:42:53'),
(249,	10,	69,	1,	1,	1,	1,	'2018-07-03 04:49:46'),
(250,	10,	70,	1,	0,	0,	1,	'2018-07-03 04:52:40'),
(251,	10,	72,	1,	0,	0,	0,	'2018-07-03 04:56:46'),
(252,	10,	73,	1,	0,	0,	0,	'2018-07-03 04:56:46'),
(253,	10,	74,	1,	0,	0,	0,	'2018-07-03 04:58:34'),
(254,	10,	75,	1,	0,	0,	0,	'2018-07-03 04:58:34'),
(255,	10,	9,	1,	1,	1,	1,	'2018-07-03 05:02:22'),
(256,	10,	10,	1,	1,	1,	1,	'2018-07-03 05:03:09'),
(257,	10,	11,	1,	0,	0,	0,	'2018-07-03 05:03:09'),
(258,	10,	12,	1,	1,	1,	1,	'2018-07-03 05:08:40'),
(259,	10,	13,	1,	1,	1,	1,	'2018-07-03 05:08:40'),
(260,	10,	14,	1,	0,	0,	0,	'2018-07-03 05:08:53'),
(261,	10,	15,	1,	1,	1,	0,	'2018-07-03 05:11:28'),
(262,	10,	16,	1,	0,	0,	0,	'2018-07-03 05:12:12'),
(263,	10,	17,	1,	1,	1,	1,	'2018-07-03 05:14:30'),
(264,	10,	19,	1,	1,	1,	0,	'2018-07-03 05:15:45'),
(265,	10,	20,	1,	1,	1,	1,	'2018-07-03 05:18:51'),
(266,	10,	76,	1,	0,	0,	0,	'2018-07-03 05:21:21'),
(267,	10,	21,	1,	1,	1,	0,	'2018-07-03 05:22:45'),
(268,	10,	22,	1,	1,	1,	1,	'2018-07-03 05:25:00'),
(269,	10,	23,	1,	1,	1,	1,	'2018-07-03 05:27:16'),
(270,	10,	24,	1,	1,	1,	1,	'2018-07-03 05:27:49'),
(271,	10,	25,	1,	1,	1,	1,	'2018-07-03 05:27:49'),
(272,	10,	26,	1,	0,	0,	0,	'2018-07-03 05:28:25'),
(273,	10,	77,	1,	1,	1,	1,	'2018-07-03 05:29:57'),
(274,	10,	27,	1,	1,	0,	1,	'2018-07-03 05:30:36'),
(275,	10,	28,	1,	1,	1,	1,	'2018-07-03 05:33:09'),
(276,	10,	29,	1,	0,	0,	0,	'2018-07-03 05:34:03'),
(277,	10,	30,	1,	0,	0,	0,	'2018-07-03 05:34:03'),
(278,	10,	31,	1,	0,	0,	0,	'2018-07-03 05:34:03'),
(279,	10,	32,	1,	1,	1,	1,	'2018-07-03 05:35:42'),
(280,	10,	33,	1,	1,	1,	1,	'2018-07-03 05:36:32'),
(281,	10,	34,	1,	1,	1,	1,	'2018-07-03 05:38:03'),
(282,	10,	35,	1,	1,	1,	1,	'2018-07-03 05:38:41'),
(283,	10,	104,	1,	1,	1,	1,	'2018-07-03 05:40:43'),
(284,	10,	37,	1,	1,	1,	1,	'2018-07-03 05:42:42'),
(285,	10,	38,	1,	1,	1,	1,	'2018-07-03 05:43:56'),
(286,	10,	39,	1,	1,	1,	1,	'2018-07-03 05:45:39'),
(287,	10,	40,	1,	1,	1,	1,	'2018-07-03 05:47:22'),
(288,	10,	41,	1,	1,	1,	1,	'2018-07-03 05:48:54'),
(289,	10,	42,	1,	1,	1,	1,	'2018-07-03 05:49:31'),
(290,	10,	43,	1,	1,	1,	1,	'2018-07-03 05:51:15'),
(291,	10,	44,	1,	0,	0,	0,	'2018-07-03 05:52:06'),
(292,	10,	46,	1,	0,	0,	0,	'2018-07-03 05:52:06'),
(293,	10,	50,	1,	0,	0,	0,	'2018-07-03 05:52:59'),
(294,	10,	51,	1,	0,	0,	0,	'2018-07-03 05:52:59'),
(295,	10,	60,	0,	0,	1,	0,	'2018-07-03 05:55:05'),
(296,	10,	61,	1,	1,	1,	1,	'2018-07-03 05:56:52'),
(297,	10,	62,	1,	1,	1,	1,	'2018-07-03 05:58:53'),
(298,	10,	63,	1,	1,	0,	0,	'2018-07-03 05:59:37'),
(299,	10,	64,	1,	1,	1,	1,	'2018-07-03 06:00:27'),
(300,	10,	65,	1,	1,	1,	1,	'2018-07-03 06:02:51'),
(301,	10,	66,	1,	1,	1,	1,	'2018-07-03 06:02:51'),
(302,	10,	67,	1,	0,	0,	0,	'2018-07-03 06:02:51'),
(303,	10,	78,	1,	1,	1,	1,	'2018-07-04 04:10:04'),
(307,	1,	126,	1,	0,	0,	0,	'2018-07-03 09:26:13'),
(310,	1,	119,	1,	0,	0,	0,	'2018-07-03 10:15:00'),
(311,	1,	120,	1,	0,	0,	0,	'2018-07-03 10:15:00'),
(315,	1,	123,	1,	0,	0,	0,	'2018-07-03 10:27:03'),
(317,	1,	124,	1,	0,	0,	0,	'2018-07-03 10:29:14'),
(320,	1,	47,	1,	0,	0,	0,	'2018-07-03 11:01:12'),
(321,	1,	121,	1,	0,	0,	0,	'2018-07-03 11:01:12'),
(369,	1,	102,	1,	1,	1,	1,	'2019-12-02 05:02:15'),
(372,	10,	79,	1,	1,	0,	0,	'2018-07-04 04:10:04'),
(373,	10,	80,	1,	1,	1,	1,	'2018-07-04 04:23:09'),
(374,	10,	81,	1,	1,	1,	1,	'2018-07-04 04:23:50'),
(375,	10,	82,	1,	1,	1,	1,	'2018-07-04 04:26:54'),
(376,	10,	83,	1,	1,	1,	1,	'2018-07-04 04:27:55'),
(377,	10,	84,	1,	1,	1,	1,	'2018-07-04 04:30:26'),
(378,	10,	85,	1,	1,	1,	1,	'2018-07-04 04:32:54'),
(379,	10,	86,	1,	1,	1,	1,	'2018-07-04 04:46:18'),
(380,	10,	87,	1,	0,	0,	0,	'2018-07-04 04:49:49'),
(381,	10,	88,	1,	1,	1,	0,	'2018-07-04 04:51:20'),
(382,	10,	89,	1,	0,	0,	0,	'2018-07-04 04:51:51'),
(383,	10,	90,	1,	1,	0,	1,	'2018-07-04 04:55:01'),
(384,	10,	91,	1,	0,	0,	0,	'2018-07-04 04:55:01'),
(385,	10,	108,	1,	1,	1,	1,	'2018-07-04 04:57:46'),
(386,	10,	109,	1,	1,	1,	1,	'2018-07-04 04:58:26'),
(387,	10,	110,	1,	1,	1,	1,	'2018-07-04 05:02:43'),
(388,	10,	111,	1,	1,	1,	1,	'2018-07-04 05:03:21'),
(389,	10,	112,	1,	1,	1,	1,	'2018-07-04 05:05:06'),
(390,	10,	127,	1,	0,	0,	0,	'2018-07-04 05:05:06'),
(391,	10,	93,	1,	1,	1,	1,	'2018-07-04 05:07:14'),
(392,	10,	94,	1,	1,	0,	0,	'2018-07-04 05:08:02'),
(394,	10,	95,	1,	0,	0,	0,	'2018-07-04 05:08:44'),
(395,	10,	102,	1,	1,	1,	1,	'2018-07-04 05:11:02'),
(396,	10,	106,	1,	0,	0,	0,	'2018-07-04 05:11:39'),
(397,	10,	113,	1,	0,	0,	0,	'2018-07-04 05:12:37'),
(398,	10,	114,	1,	0,	0,	0,	'2018-07-04 05:12:37'),
(399,	10,	115,	1,	0,	0,	0,	'2018-07-04 05:18:45'),
(400,	10,	116,	1,	0,	0,	0,	'2018-07-04 05:18:45'),
(401,	10,	117,	1,	0,	0,	0,	'2018-07-04 05:19:43'),
(402,	10,	118,	1,	0,	0,	0,	'2018-07-04 05:19:43'),
(434,	1,	125,	1,	0,	0,	0,	'2018-07-06 09:59:26'),
(435,	1,	96,	1,	1,	1,	1,	'2018-07-09 01:03:54'),
(445,	1,	48,	1,	0,	0,	0,	'2018-07-06 11:49:35'),
(446,	1,	49,	1,	0,	0,	0,	'2018-07-06 11:49:35'),
(461,	1,	97,	1,	0,	0,	0,	'2018-07-09 01:00:16'),
(462,	1,	95,	1,	0,	0,	0,	'2018-07-09 01:18:41'),
(464,	1,	86,	1,	1,	1,	1,	'2019-11-28 06:39:19'),
(474,	1,	130,	1,	1,	0,	1,	'2018-07-09 10:56:36'),
(476,	1,	131,	1,	0,	0,	0,	'2018-07-09 04:53:32'),
(479,	2,	47,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(480,	2,	105,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(482,	2,	119,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(483,	2,	120,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(486,	2,	16,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(493,	2,	22,	1,	0,	0,	0,	'2018-07-12 00:20:27'),
(504,	2,	95,	1,	0,	0,	0,	'2018-07-10 06:47:12'),
(513,	3,	72,	1,	0,	0,	0,	'2018-07-10 07:07:30'),
(517,	3,	75,	1,	0,	0,	0,	'2018-07-10 07:10:38'),
(527,	3,	89,	1,	0,	0,	0,	'2018-07-10 07:18:44'),
(529,	3,	91,	1,	0,	0,	0,	'2018-07-10 07:18:44'),
(549,	3,	124,	1,	0,	0,	0,	'2018-07-10 07:22:17'),
(557,	6,	82,	1,	1,	1,	1,	'2019-12-01 01:48:28'),
(558,	6,	83,	1,	1,	1,	1,	'2019-12-01 01:49:08'),
(559,	6,	84,	1,	1,	1,	1,	'2019-12-01 01:49:59'),
(575,	6,	44,	1,	0,	0,	0,	'2018-07-10 07:35:33'),
(576,	6,	46,	1,	0,	0,	0,	'2018-07-10 07:35:33'),
(578,	6,	102,	1,	1,	1,	1,	'2019-12-01 01:52:27'),
(594,	3,	125,	1,	0,	0,	0,	'2018-07-10 07:58:12'),
(595,	3,	48,	1,	0,	0,	0,	'2018-07-10 07:58:12'),
(596,	3,	49,	1,	0,	0,	0,	'2018-07-10 07:58:12'),
(617,	2,	17,	1,	1,	1,	1,	'2018-07-11 06:55:14'),
(618,	2,	19,	1,	1,	1,	0,	'2018-07-11 06:55:14'),
(620,	2,	76,	1,	1,	1,	0,	'2018-07-11 06:55:14'),
(622,	2,	121,	1,	0,	0,	0,	'2018-07-11 06:56:27'),
(625,	1,	28,	1,	1,	1,	1,	'2019-11-29 06:19:18'),
(628,	6,	22,	1,	0,	0,	0,	'2018-07-12 00:23:47'),
(634,	4,	102,	1,	1,	1,	1,	'2019-12-01 01:03:00'),
(662,	1,	138,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(663,	1,	139,	1,	1,	1,	1,	'2019-11-01 02:28:24'),
(664,	1,	140,	1,	1,	1,	1,	'2019-11-01 02:28:24'),
(669,	1,	145,	1,	0,	0,	0,	'2019-11-26 04:51:15'),
(677,	1,	153,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(690,	1,	166,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(691,	1,	167,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(692,	1,	168,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(693,	1,	170,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(694,	1,	172,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(695,	1,	173,	1,	0,	0,	0,	'2019-11-01 02:28:24'),
(720,	1,	216,	1,	0,	0,	0,	'2019-11-26 05:24:12'),
(728,	1,	185,	1,	1,	1,	1,	'2019-11-28 02:50:33'),
(729,	1,	186,	1,	1,	1,	1,	'2019-11-28 02:49:07'),
(730,	1,	214,	1,	0,	1,	0,	'2019-11-28 01:47:53'),
(732,	1,	198,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(733,	1,	199,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(734,	1,	200,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(735,	1,	201,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(736,	1,	202,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(737,	1,	203,	1,	0,	0,	0,	'2019-11-26 05:24:30'),
(739,	1,	218,	1,	0,	0,	0,	'2019-11-27 06:36:31'),
(743,	1,	218,	1,	0,	0,	0,	'2019-11-27 06:36:32'),
(747,	1,	2,	1,	0,	0,	0,	'2019-11-27 22:56:08'),
(748,	1,	3,	1,	1,	1,	1,	'2019-11-27 22:56:32'),
(749,	1,	4,	1,	1,	1,	1,	'2019-11-27 22:56:48'),
(751,	1,	128,	0,	1,	0,	1,	'2019-11-27 22:57:01'),
(752,	1,	132,	1,	0,	1,	1,	'2019-11-27 23:02:23'),
(754,	1,	134,	1,	1,	1,	1,	'2019-11-27 23:18:21'),
(755,	1,	5,	1,	1,	0,	1,	'2019-11-27 23:35:07'),
(756,	1,	6,	1,	0,	0,	0,	'2019-11-27 23:35:25'),
(757,	1,	7,	1,	1,	1,	1,	'2019-11-27 23:36:35'),
(758,	1,	8,	1,	1,	1,	1,	'2019-11-27 23:37:27'),
(760,	1,	68,	1,	0,	0,	0,	'2019-11-27 23:38:06'),
(761,	1,	69,	1,	1,	1,	1,	'2019-11-27 23:39:06'),
(762,	1,	70,	1,	1,	1,	1,	'2019-11-27 23:39:41'),
(763,	1,	71,	1,	0,	0,	0,	'2019-11-27 23:39:59'),
(764,	1,	72,	1,	0,	0,	0,	'2019-11-27 23:40:11'),
(765,	1,	73,	1,	0,	0,	0,	'2019-11-27 23:43:15'),
(766,	1,	74,	1,	0,	0,	0,	'2019-11-27 23:43:55'),
(768,	1,	11,	1,	0,	0,	0,	'2019-11-27 23:45:46'),
(769,	1,	122,	1,	0,	0,	0,	'2019-11-27 23:52:43'),
(771,	1,	136,	1,	0,	0,	0,	'2019-11-27 23:55:36'),
(772,	1,	20,	1,	1,	1,	1,	'2019-11-28 04:06:44'),
(773,	1,	137,	1,	1,	1,	1,	'2019-11-28 00:46:14'),
(774,	1,	141,	1,	1,	1,	1,	'2019-11-28 00:59:42'),
(775,	1,	142,	1,	0,	0,	0,	'2019-11-27 23:56:12'),
(776,	1,	143,	1,	1,	1,	1,	'2019-11-28 00:59:42'),
(777,	1,	144,	1,	0,	0,	0,	'2019-11-27 23:56:12'),
(778,	1,	187,	1,	0,	0,	0,	'2019-11-27 23:56:12'),
(779,	1,	196,	1,	0,	0,	0,	'2019-11-27 23:56:12'),
(781,	1,	207,	1,	0,	0,	0,	'2019-11-27 23:56:12'),
(782,	1,	208,	1,	0,	1,	0,	'2019-11-28 00:10:22'),
(783,	1,	210,	1,	0,	1,	0,	'2019-11-28 00:34:40'),
(784,	1,	211,	1,	0,	1,	0,	'2019-11-28 00:38:23'),
(785,	1,	212,	1,	0,	1,	0,	'2019-11-28 00:42:15'),
(786,	1,	205,	1,	1,	1,	1,	'2019-11-28 00:42:15'),
(787,	1,	222,	1,	0,	1,	0,	'2019-11-28 01:36:36'),
(788,	1,	77,	1,	1,	1,	1,	'2019-11-28 06:22:10'),
(789,	1,	188,	1,	1,	1,	1,	'2019-11-28 06:26:16'),
(790,	1,	23,	1,	1,	1,	1,	'2019-11-28 06:34:20'),
(791,	1,	25,	1,	1,	1,	1,	'2019-11-28 06:36:20'),
(792,	1,	127,	1,	0,	0,	0,	'2019-11-28 06:41:25'),
(794,	1,	88,	1,	1,	1,	0,	'2019-11-28 06:43:04'),
(795,	1,	90,	1,	1,	0,	1,	'2019-11-28 06:46:22'),
(796,	1,	108,	1,	0,	1,	1,	'2021-01-23 07:09:32'),
(797,	1,	109,	1,	1,	0,	0,	'2019-11-28 23:38:11'),
(798,	1,	110,	1,	1,	1,	1,	'2019-11-28 23:49:29'),
(799,	1,	111,	1,	1,	1,	1,	'2019-11-28 23:49:57'),
(800,	1,	112,	1,	1,	1,	1,	'2019-11-28 23:49:57'),
(801,	1,	129,	0,	1,	0,	1,	'2019-11-28 23:49:57'),
(802,	1,	189,	1,	0,	1,	1,	'2019-11-28 23:59:22'),
(806,	2,	133,	1,	0,	1,	0,	'2019-11-29 00:34:35'),
(810,	2,	1,	1,	1,	1,	1,	'2019-11-30 02:54:16'),
(813,	1,	133,	1,	0,	1,	0,	'2019-11-29 00:39:57'),
(817,	1,	93,	1,	1,	1,	1,	'2019-11-29 00:56:14'),
(825,	1,	87,	1,	0,	0,	0,	'2019-11-29 00:56:14'),
(829,	1,	94,	1,	1,	0,	0,	'2019-11-29 00:57:57'),
(836,	1,	146,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(837,	1,	147,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(838,	1,	148,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(839,	1,	149,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(840,	1,	150,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(841,	1,	151,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(842,	1,	152,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(843,	1,	154,	1,	0,	0,	0,	'2019-11-29 01:13:28'),
(862,	1,	155,	1,	0,	0,	0,	'2019-11-29 02:07:30'),
(863,	1,	156,	1,	0,	0,	0,	'2019-11-29 02:07:52'),
(864,	1,	157,	1,	0,	0,	0,	'2019-11-29 02:08:05'),
(874,	1,	158,	1,	0,	0,	0,	'2019-11-29 02:14:03'),
(875,	1,	159,	1,	0,	0,	0,	'2019-11-29 02:14:31'),
(876,	1,	160,	1,	0,	0,	0,	'2019-11-29 02:14:44'),
(878,	1,	162,	1,	0,	0,	0,	'2019-11-29 02:15:58'),
(879,	1,	163,	1,	0,	0,	0,	'2019-11-29 02:16:19'),
(882,	1,	164,	1,	0,	0,	0,	'2019-11-29 02:25:17'),
(884,	1,	165,	1,	0,	0,	0,	'2019-11-29 02:25:30'),
(886,	1,	197,	1,	0,	0,	0,	'2019-11-29 02:25:48'),
(887,	1,	219,	1,	0,	0,	0,	'2019-11-29 02:26:05'),
(889,	1,	220,	1,	0,	0,	0,	'2019-11-29 02:26:22'),
(932,	1,	204,	1,	0,	0,	0,	'2019-11-29 03:43:27'),
(933,	1,	221,	1,	0,	0,	0,	'2019-11-29 03:45:04'),
(934,	1,	178,	1,	0,	0,	0,	'2019-11-29 03:45:16'),
(935,	1,	179,	1,	0,	0,	0,	'2019-11-29 03:45:33'),
(936,	1,	161,	1,	0,	0,	0,	'2019-11-29 03:45:48'),
(937,	1,	180,	1,	0,	0,	0,	'2019-11-29 03:45:48'),
(938,	1,	181,	1,	0,	0,	0,	'2019-11-29 03:49:33'),
(939,	1,	182,	1,	0,	0,	0,	'2019-11-29 03:49:45'),
(940,	1,	183,	1,	0,	0,	0,	'2019-11-29 03:49:56'),
(941,	1,	174,	1,	0,	0,	0,	'2019-11-29 03:50:53'),
(943,	1,	176,	1,	0,	0,	0,	'2019-11-29 03:52:10'),
(944,	1,	177,	1,	0,	0,	0,	'2019-11-29 03:52:22'),
(945,	1,	53,	0,	1,	0,	1,	'2021-01-23 07:09:32'),
(946,	1,	215,	1,	0,	0,	0,	'2019-11-29 04:01:37'),
(947,	1,	213,	1,	0,	0,	0,	'2019-11-29 04:07:45'),
(974,	1,	224,	1,	0,	0,	0,	'2019-11-29 04:32:52'),
(979,	1,	225,	1,	0,	0,	0,	'2019-11-29 04:45:30'),
(982,	2,	225,	1,	0,	0,	0,	'2019-11-29 04:47:19'),
(1026,	1,	135,	1,	0,	1,	0,	'2019-11-29 06:02:12'),
(1031,	1,	228,	1,	0,	0,	0,	'2019-11-29 06:21:16'),
(1083,	1,	175,	1,	0,	0,	0,	'2019-11-30 00:37:24'),
(1086,	1,	43,	1,	1,	1,	1,	'2019-11-30 00:49:39'),
(1087,	1,	44,	1,	0,	0,	0,	'2019-11-30 00:49:39'),
(1088,	1,	46,	1,	0,	0,	0,	'2019-11-30 00:49:39'),
(1089,	1,	217,	1,	0,	0,	0,	'2019-11-30 00:49:39'),
(1090,	1,	98,	1,	1,	1,	1,	'2019-11-30 01:32:51'),
(1091,	1,	99,	1,	0,	0,	0,	'2019-11-30 01:30:18'),
(1092,	1,	223,	1,	0,	0,	0,	'2019-11-30 01:32:51'),
(1103,	2,	205,	1,	1,	1,	1,	'2019-11-30 01:56:04'),
(1105,	2,	23,	1,	0,	0,	0,	'2019-11-30 01:56:04'),
(1106,	2,	24,	1,	0,	0,	0,	'2019-11-30 01:56:04'),
(1107,	2,	25,	1,	0,	0,	0,	'2019-11-30 01:56:04'),
(1108,	2,	77,	1,	0,	0,	0,	'2019-11-30 01:56:04'),
(1119,	2,	117,	1,	0,	0,	0,	'2019-11-30 01:56:04'),
(1123,	3,	8,	1,	1,	1,	1,	'2019-11-30 06:46:18'),
(1125,	3,	69,	1,	1,	1,	1,	'2019-11-30 07:00:49'),
(1126,	3,	70,	1,	1,	1,	1,	'2019-11-30 07:04:46'),
(1130,	3,	9,	1,	1,	1,	1,	'2019-11-30 07:14:54'),
(1131,	3,	10,	1,	1,	1,	1,	'2019-11-30 07:16:02'),
(1134,	3,	35,	1,	1,	1,	1,	'2019-11-30 07:25:04'),
(1135,	3,	104,	1,	1,	1,	1,	'2019-11-30 07:25:53'),
(1140,	3,	41,	1,	1,	1,	1,	'2019-11-30 07:37:13'),
(1141,	3,	42,	1,	1,	1,	1,	'2019-11-30 07:37:46'),
(1142,	3,	43,	1,	1,	1,	1,	'2019-11-30 07:42:06'),
(1151,	3,	87,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1152,	3,	88,	1,	1,	1,	0,	'2019-11-30 02:23:13'),
(1153,	3,	90,	1,	1,	0,	1,	'2019-11-30 02:23:13'),
(1154,	3,	108,	1,	0,	1,	0,	'2019-11-30 02:23:13'),
(1155,	3,	109,	1,	1,	0,	0,	'2019-11-30 02:23:13'),
(1156,	3,	110,	1,	1,	1,	1,	'2019-11-30 02:23:13'),
(1157,	3,	111,	1,	1,	1,	1,	'2019-11-30 02:23:13'),
(1158,	3,	112,	1,	1,	1,	1,	'2019-11-30 02:23:13'),
(1159,	3,	127,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1160,	3,	129,	0,	1,	0,	1,	'2019-11-30 02:23:13'),
(1161,	3,	102,	1,	1,	1,	1,	'2019-11-30 02:23:13'),
(1162,	3,	106,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1163,	3,	113,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1164,	3,	114,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1165,	3,	115,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1166,	3,	116,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1167,	3,	117,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1168,	3,	118,	1,	0,	0,	0,	'2019-11-30 02:23:13'),
(1171,	2,	142,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1172,	2,	144,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1179,	2,	212,	1,	0,	1,	0,	'2019-11-30 02:36:17'),
(1183,	2,	148,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1184,	2,	149,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1185,	2,	150,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1186,	2,	151,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1187,	2,	152,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1188,	2,	153,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1189,	2,	154,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1190,	2,	197,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1191,	2,	198,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1192,	2,	199,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1193,	2,	200,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1194,	2,	201,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1195,	2,	202,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1196,	2,	203,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1197,	2,	219,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1198,	2,	223,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1201,	2,	230,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1204,	2,	214,	1,	0,	1,	0,	'2019-11-30 02:36:17'),
(1206,	2,	224,	1,	0,	0,	0,	'2019-11-30 02:36:17'),
(1208,	2,	2,	1,	0,	0,	0,	'2019-11-30 02:55:45'),
(1210,	2,	143,	1,	1,	1,	1,	'2019-11-30 02:57:28'),
(1211,	2,	145,	1,	0,	0,	0,	'2019-11-30 02:57:28'),
(1214,	2,	3,	1,	1,	1,	1,	'2019-11-30 03:03:18'),
(1216,	2,	4,	1,	1,	1,	1,	'2019-11-30 03:32:56'),
(1218,	2,	128,	0,	1,	0,	1,	'2019-11-30 03:37:44'),
(1220,	3,	135,	1,	0,	1,	0,	'2019-11-30 07:08:56'),
(1231,	3,	190,	1,	0,	0,	0,	'2019-11-30 03:44:02'),
(1232,	3,	192,	1,	0,	0,	0,	'2019-11-30 03:44:02'),
(1233,	3,	226,	1,	0,	0,	0,	'2019-11-30 03:44:02'),
(1234,	3,	227,	1,	0,	0,	0,	'2019-11-30 03:44:02'),
(1235,	3,	224,	1,	0,	0,	0,	'2019-11-30 03:44:02'),
(1236,	2,	15,	1,	1,	1,	0,	'2019-11-30 03:54:25'),
(1239,	2,	122,	1,	0,	0,	0,	'2019-11-30 03:57:48'),
(1240,	2,	136,	1,	0,	0,	0,	'2019-11-30 03:57:48'),
(1242,	6,	217,	1,	0,	0,	0,	'2019-11-30 04:00:13'),
(1243,	6,	224,	1,	0,	0,	0,	'2019-11-30 04:00:13'),
(1245,	2,	20,	1,	1,	1,	1,	'2019-11-30 04:01:28'),
(1246,	2,	137,	1,	1,	1,	1,	'2019-11-30 04:02:40'),
(1248,	2,	141,	1,	1,	1,	1,	'2019-11-30 04:04:04'),
(1250,	2,	187,	1,	0,	0,	0,	'2019-11-30 04:11:19'),
(1252,	2,	207,	1,	0,	0,	0,	'2019-11-30 04:21:21'),
(1253,	2,	208,	1,	0,	1,	0,	'2019-11-30 04:22:00'),
(1255,	2,	210,	1,	0,	1,	0,	'2019-11-30 04:22:58'),
(1256,	2,	211,	1,	0,	1,	0,	'2019-11-30 04:24:03'),
(1257,	2,	21,	1,	0,	0,	0,	'2019-11-30 04:32:59'),
(1259,	2,	188,	1,	0,	0,	0,	'2019-11-30 04:34:35'),
(1260,	2,	27,	1,	0,	0,	0,	'2019-11-30 04:36:13'),
(1262,	2,	43,	1,	1,	1,	1,	'2019-11-30 04:39:42'),
(1263,	2,	44,	1,	0,	0,	0,	'2019-11-30 04:41:43'),
(1264,	2,	46,	1,	0,	0,	0,	'2019-11-30 04:41:43'),
(1265,	2,	217,	1,	0,	0,	0,	'2019-11-30 04:41:43'),
(1266,	2,	146,	1,	0,	0,	0,	'2019-11-30 04:46:35'),
(1267,	2,	147,	1,	0,	0,	0,	'2019-11-30 04:47:37'),
(1269,	2,	164,	1,	0,	0,	0,	'2019-11-30 04:51:04'),
(1271,	2,	109,	1,	1,	0,	0,	'2019-11-30 05:03:37'),
(1272,	2,	93,	1,	1,	1,	1,	'2019-11-30 05:07:25'),
(1273,	2,	94,	1,	1,	0,	0,	'2019-11-30 05:07:42'),
(1275,	2,	102,	1,	1,	1,	1,	'2019-11-30 05:11:22'),
(1277,	2,	196,	1,	0,	0,	0,	'2019-11-30 05:15:01'),
(1278,	2,	195,	1,	0,	0,	0,	'2019-11-30 05:19:08'),
(1279,	2,	185,	1,	1,	1,	1,	'2019-11-30 05:21:44'),
(1280,	2,	186,	1,	1,	1,	1,	'2019-11-30 05:22:43'),
(1281,	2,	222,	1,	0,	1,	0,	'2019-11-30 05:24:30'),
(1283,	3,	5,	1,	1,	0,	1,	'2019-11-30 06:43:04'),
(1284,	3,	6,	1,	0,	0,	0,	'2019-11-30 06:43:29'),
(1285,	3,	7,	1,	1,	1,	1,	'2019-11-30 06:44:39'),
(1286,	3,	68,	1,	0,	0,	0,	'2019-11-30 06:46:58'),
(1287,	3,	71,	1,	0,	0,	0,	'2019-11-30 07:05:41'),
(1288,	3,	73,	1,	0,	0,	0,	'2019-11-30 07:05:59'),
(1289,	3,	74,	1,	0,	0,	0,	'2019-11-30 07:06:08'),
(1290,	3,	11,	1,	0,	0,	0,	'2019-11-30 07:16:37'),
(1291,	3,	12,	1,	1,	1,	1,	'2019-11-30 07:19:29'),
(1292,	3,	13,	1,	1,	1,	1,	'2019-11-30 07:22:27'),
(1294,	3,	14,	1,	0,	0,	0,	'2019-11-30 07:22:55'),
(1295,	3,	31,	1,	1,	1,	1,	'2019-12-02 06:30:37'),
(1297,	3,	37,	1,	1,	1,	1,	'2019-11-30 07:28:09'),
(1298,	3,	38,	1,	1,	1,	1,	'2019-11-30 07:29:02'),
(1299,	3,	39,	1,	1,	1,	1,	'2019-11-30 07:30:07'),
(1300,	3,	40,	1,	1,	1,	1,	'2019-11-30 07:32:43'),
(1301,	3,	44,	1,	0,	0,	0,	'2019-11-30 07:44:09'),
(1302,	3,	46,	1,	0,	0,	0,	'2019-11-30 07:44:09'),
(1303,	3,	217,	1,	0,	0,	0,	'2019-11-30 07:44:09'),
(1304,	3,	155,	1,	0,	0,	0,	'2019-11-30 07:44:32'),
(1305,	3,	156,	1,	0,	0,	0,	'2019-11-30 07:45:18'),
(1306,	3,	157,	1,	0,	0,	0,	'2019-11-30 07:45:42'),
(1307,	3,	158,	1,	0,	0,	0,	'2019-11-30 07:46:07'),
(1308,	3,	159,	1,	0,	0,	0,	'2019-11-30 07:46:21'),
(1309,	3,	160,	1,	0,	0,	0,	'2019-11-30 07:46:33'),
(1313,	3,	161,	1,	0,	0,	0,	'2019-11-30 07:48:26'),
(1314,	3,	162,	1,	0,	0,	0,	'2019-11-30 07:48:48'),
(1315,	3,	163,	1,	0,	0,	0,	'2019-11-30 07:48:48'),
(1316,	3,	164,	1,	0,	0,	0,	'2019-11-30 07:49:47'),
(1317,	3,	165,	1,	0,	0,	0,	'2019-11-30 07:49:47'),
(1318,	3,	174,	1,	0,	0,	0,	'2019-11-30 07:49:47'),
(1319,	3,	175,	1,	0,	0,	0,	'2019-11-30 07:49:59'),
(1320,	3,	181,	1,	0,	0,	0,	'2019-11-30 07:50:08'),
(1321,	3,	86,	1,	1,	1,	1,	'2019-11-30 07:54:08'),
(1322,	4,	28,	1,	1,	1,	1,	'2019-12-01 00:52:39'),
(1324,	4,	29,	1,	0,	0,	0,	'2019-12-01 00:53:46'),
(1325,	4,	30,	1,	0,	0,	0,	'2019-12-01 00:53:59'),
(1326,	4,	123,	1,	0,	0,	0,	'2019-12-01 00:54:26'),
(1327,	4,	228,	1,	0,	0,	0,	'2019-12-01 00:54:39'),
(1328,	4,	43,	1,	1,	1,	1,	'2019-12-01 00:58:05'),
(1332,	4,	44,	1,	0,	0,	0,	'2019-12-01 00:59:16'),
(1333,	4,	46,	1,	0,	0,	0,	'2019-12-01 00:59:16'),
(1334,	4,	217,	1,	0,	0,	0,	'2019-12-01 00:59:16'),
(1335,	4,	178,	1,	0,	0,	0,	'2019-12-01 00:59:59'),
(1336,	4,	179,	1,	0,	0,	0,	'2019-12-01 01:00:11'),
(1337,	4,	180,	1,	0,	0,	0,	'2019-12-01 01:00:29'),
(1338,	4,	221,	1,	0,	0,	0,	'2019-12-01 01:00:46'),
(1339,	4,	86,	1,	0,	0,	0,	'2019-12-01 01:01:02'),
(1341,	4,	106,	1,	0,	0,	0,	'2019-12-01 01:05:21'),
(1342,	1,	107,	1,	0,	0,	0,	'2019-12-01 01:06:44'),
(1343,	4,	117,	1,	0,	0,	0,	'2019-12-01 01:10:20'),
(1344,	4,	194,	1,	0,	0,	0,	'2019-12-01 01:11:35'),
(1348,	4,	230,	1,	0,	0,	0,	'2019-12-01 01:19:15'),
(1350,	6,	1,	1,	0,	0,	0,	'2019-12-01 01:35:32'),
(1351,	6,	21,	1,	0,	0,	0,	'2019-12-01 01:36:29'),
(1352,	6,	23,	1,	0,	0,	0,	'2019-12-01 01:36:45'),
(1353,	6,	24,	1,	0,	0,	0,	'2019-12-01 01:37:05'),
(1354,	6,	25,	1,	0,	0,	0,	'2019-12-01 01:37:34'),
(1355,	6,	77,	1,	0,	0,	0,	'2019-12-01 01:38:08'),
(1356,	6,	188,	1,	0,	0,	0,	'2019-12-01 01:38:45'),
(1357,	6,	43,	1,	1,	1,	1,	'2019-12-01 01:40:44'),
(1358,	6,	78,	1,	1,	1,	1,	'2019-12-01 01:43:04'),
(1360,	6,	79,	1,	1,	0,	1,	'2019-12-01 01:44:39'),
(1361,	6,	80,	1,	1,	1,	1,	'2019-12-01 01:45:08'),
(1362,	6,	81,	1,	1,	1,	1,	'2019-12-01 01:47:50'),
(1363,	6,	85,	1,	1,	1,	1,	'2019-12-01 01:50:43'),
(1364,	6,	86,	1,	0,	0,	0,	'2019-12-01 01:51:10'),
(1365,	6,	106,	1,	0,	0,	0,	'2019-12-01 01:52:55'),
(1366,	6,	117,	1,	0,	0,	0,	'2019-12-01 01:53:08'),
(1394,	1,	106,	1,	0,	0,	0,	'2019-12-02 05:20:33'),
(1395,	1,	113,	1,	0,	0,	0,	'2019-12-02 05:20:59'),
(1396,	1,	114,	1,	0,	0,	0,	'2019-12-02 05:21:34'),
(1397,	1,	115,	1,	0,	0,	0,	'2019-12-02 05:21:34'),
(1398,	1,	116,	1,	0,	0,	0,	'2019-12-02 05:21:54'),
(1399,	1,	117,	1,	0,	0,	0,	'2019-12-02 05:22:04'),
(1400,	1,	118,	1,	0,	0,	0,	'2019-12-02 05:22:20'),
(1402,	1,	191,	1,	0,	0,	0,	'2019-12-02 05:23:34'),
(1403,	1,	192,	1,	0,	0,	0,	'2019-12-02 05:23:47'),
(1404,	1,	193,	1,	0,	0,	0,	'2019-12-02 05:23:58'),
(1405,	1,	194,	1,	0,	0,	0,	'2019-12-02 05:24:11'),
(1406,	1,	195,	1,	0,	0,	0,	'2019-12-02 05:24:20'),
(1408,	1,	227,	1,	0,	0,	0,	'2019-12-02 05:25:47'),
(1410,	1,	226,	1,	0,	0,	0,	'2019-12-02 05:31:41'),
(1411,	1,	229,	1,	0,	0,	0,	'2019-12-02 05:32:57'),
(1412,	1,	230,	1,	0,	0,	0,	'2019-12-02 05:32:57'),
(1413,	1,	190,	1,	0,	0,	0,	'2019-12-02 05:43:41'),
(1414,	2,	174,	1,	0,	0,	0,	'2019-12-02 05:54:37'),
(1415,	2,	175,	1,	0,	0,	0,	'2019-12-02 05:54:37'),
(1418,	2,	232,	1,	0,	1,	1,	'2019-12-02 06:11:27'),
(1419,	2,	231,	1,	0,	0,	0,	'2019-12-02 06:12:28'),
(1420,	1,	231,	1,	1,	1,	1,	'2021-01-23 07:09:32'),
(1421,	1,	232,	1,	0,	1,	1,	'2019-12-02 06:19:32'),
(1422,	3,	32,	1,	1,	1,	1,	'2019-12-02 06:30:37'),
(1423,	3,	33,	1,	1,	1,	1,	'2019-12-02 06:30:37'),
(1424,	3,	34,	1,	1,	1,	1,	'2019-12-02 06:30:37'),
(1425,	3,	182,	1,	0,	0,	0,	'2019-12-02 06:30:37'),
(1426,	3,	183,	1,	0,	0,	0,	'2019-12-02 06:30:37'),
(1427,	3,	189,	1,	0,	1,	1,	'2019-12-02 06:30:37'),
(1428,	3,	229,	1,	0,	0,	0,	'2019-12-02 06:30:37'),
(1429,	3,	230,	1,	0,	0,	0,	'2019-12-02 06:30:37'),
(1430,	4,	213,	1,	0,	0,	0,	'2019-12-02 06:32:14'),
(1432,	4,	224,	1,	0,	0,	0,	'2019-12-02 06:32:14'),
(1433,	4,	195,	1,	0,	0,	0,	'2019-12-03 04:57:53'),
(1434,	4,	229,	1,	0,	0,	0,	'2019-12-03 04:58:19'),
(1436,	6,	213,	1,	0,	0,	0,	'2019-12-03 05:10:11'),
(1437,	6,	191,	1,	0,	0,	0,	'2019-12-03 05:10:11'),
(1438,	6,	193,	1,	0,	0,	0,	'2019-12-03 05:10:11'),
(1439,	6,	230,	1,	0,	0,	0,	'2019-12-03 05:10:11'),
(1440,	2,	106,	1,	0,	0,	0,	'2020-01-25 04:21:36'),
(1441,	2,	107,	1,	0,	0,	0,	'2020-02-12 02:10:13'),
(1442,	2,	134,	1,	1,	1,	1,	'2020-02-12 02:12:36'),
(1443,	1,	233,	1,	0,	0,	0,	'2020-02-12 02:21:57'),
(1445,	3,	233,	1,	0,	0,	0,	'2020-02-12 03:51:17'),
(1446,	1,	234,	1,	1,	1,	1,	'2020-06-01 21:51:09'),
(1447,	1,	235,	1,	1,	1,	1,	'2020-05-29 23:17:01'),
(1448,	1,	236,	1,	1,	1,	0,	'2020-05-29 23:17:52'),
(1449,	1,	237,	1,	0,	1,	0,	'2020-05-29 23:18:18'),
(1450,	1,	238,	1,	1,	1,	1,	'2020-05-29 23:19:52'),
(1451,	1,	239,	1,	1,	1,	1,	'2020-05-29 23:22:10'),
(1452,	2,	236,	1,	1,	1,	0,	'2020-05-29 23:40:33'),
(1453,	2,	237,	1,	0,	1,	0,	'2020-05-29 23:40:33'),
(1454,	2,	238,	1,	1,	1,	1,	'2020-05-29 23:40:33'),
(1455,	2,	239,	1,	1,	1,	1,	'2020-05-29 23:40:33'),
(1456,	2,	240,	1,	0,	0,	0,	'2020-05-28 20:51:18'),
(1457,	2,	241,	1,	0,	0,	0,	'2020-05-28 20:51:18'),
(1458,	1,	240,	1,	0,	0,	0,	'2020-06-07 18:30:42'),
(1459,	1,	241,	1,	0,	0,	0,	'2020-06-07 18:30:42'),
(1460,	1,	242,	1,	0,	0,	0,	'2020-06-07 18:30:42'),
(1461,	2,	242,	1,	0,	0,	0,	'2020-06-11 22:45:24'),
(1462,	3,	242,	1,	0,	0,	0,	'2020-06-14 22:46:54'),
(1463,	6,	242,	1,	0,	0,	0,	'2020-06-14 22:48:14'),
(1464,	1,	243,	1,	0,	0,	0,	'2020-09-12 06:05:45'),
(1465,	1,	109,	1,	1,	0,	0,	'2020-09-21 06:33:50'),
(1466,	1,	108,	1,	1,	1,	1,	'2020-09-21 06:50:36'),
(1467,	1,	244,	1,	0,	0,	0,	'2020-09-21 06:59:54'),
(1468,	1,	245,	1,	0,	0,	0,	'2020-09-21 06:59:54'),
(1469,	1,	246,	1,	0,	0,	0,	'2020-09-21 06:59:54'),
(1470,	1,	247,	1,	0,	0,	0,	'2021-01-07 06:12:14'),
(1472,	2,	247,	1,	0,	0,	0,	'2021-01-21 12:46:40'),
(1473,	2,	6001,	1,	1,	0,	1,	'2021-01-29 09:31:16'),
(1474,	1,	6001,	1,	1,	0,	1,	'2020-09-23 12:59:22'),
(1475,	1,	6002,	1,	1,	0,	1,	'2020-09-23 13:01:52'),
(1476,	1,	6003,	1,	0,	0,	0,	'2020-09-23 13:02:06'),
(1477,	1,	6004,	1,	0,	0,	0,	'2020-09-23 13:02:33'),
(1478,	1,	6005,	1,	0,	1,	0,	'2021-01-29 07:45:05'),
(1479,	2,	6005,	1,	0,	1,	0,	'2021-01-29 11:08:20'),
(1480,	2,	6002,	1,	1,	0,	1,	'2021-01-29 07:58:48'),
(1481,	3,	6002,	1,	1,	0,	1,	'2021-01-29 07:26:08'),
(1482,	3,	6003,	1,	0,	0,	0,	'2021-01-29 07:26:08'),
(1483,	3,	6005,	1,	0,	1,	0,	'2021-01-29 07:26:08'),
(1484,	4,	6001,	1,	1,	0,	1,	'2021-01-29 07:26:53'),
(1485,	4,	6002,	1,	1,	0,	1,	'2021-01-29 07:26:53'),
(1486,	6,	6001,	1,	1,	0,	1,	'2021-01-29 07:27:32'),
(1487,	6,	6002,	1,	1,	0,	1,	'2021-01-29 07:27:32'),
(1488,	6,	6005,	1,	0,	1,	0,	'2021-01-29 07:27:32'),
(1489,	2,	6003,	1,	0,	0,	0,	'2021-01-29 09:31:16'),
(1490,	2,	6004,	1,	0,	0,	0,	'2021-01-29 09:31:16'),
(1491,	1,	46,	1,	1,	1,	1,	'2023-11-04 08:16:29'),
(1493,	4,	15,	1,	1,	1,	0,	'2023-11-21 11:02:13'),
(1494,	4,	122,	1,	0,	0,	0,	'2023-11-21 11:02:13'),
(1495,	4,	136,	1,	0,	0,	0,	'2023-11-21 11:02:13'),
(1496,	2,	246,	1,	0,	0,	0,	'2023-11-21 12:45:00'),
(1497,	2,	108,	1,	0,	0,	0,	'2023-11-21 12:56:59'),
(1498,	2,	110,	1,	1,	1,	1,	'2023-11-21 12:56:59');

DROP TABLE IF EXISTS `room_types`;
CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `school_houses`;
CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sch_settings`;
CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` int(1) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT 0,
  `adm_auto_insert` int(1) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT 0,
  `is_blood_group` int(10) NOT NULL DEFAULT 1,
  `is_student_house` int(10) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `middlename` int(11) NOT NULL DEFAULT 1,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_name` int(1) NOT NULL,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_phone` int(1) NOT NULL,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_occupation` int(1) NOT NULL,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `ifsc_code` int(1) NOT NULL,
  `bank_name` int(1) NOT NULL,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int(1) NOT NULL DEFAULT 0,
  `start_week` varchar(10) NOT NULL,
  `my_question` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sch_settings` (`id`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `class_teacher`, `start_month`, `attendence_type`, `image`, `admin_logo`, `admin_small_logo`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `created_at`, `updated_at`) VALUES
(1,	'Newton Academy',	0,	'',	'info@raysitworld.com',	'+919926989777',	'Shankar Nagar Raipur',	4,	'[\"4\"]',	'007',	'm/d/Y',	'12-hour',	'INR',	'₹',	'disabled',	0,	'UTC',	15,	'',	'after_number',	'no',	'4',	0,	'1.png',	'1.png',	'1.png',	'default.jpg',	60,	0,	'',	'',	0,	1,	0,	'',	'',	0,	1,	'no',	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	0,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	'',	'#424242',	'#eeeeee',	'1.png',	0,	'Monday',	0,	'2023-11-06 10:11:54',	NULL);

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(4,	'A',	'no',	'2023-11-21 13:07:13',	NULL),
(5,	'B',	'no',	'2023-12-12 23:47:53',	NULL);

DROP TABLE IF EXISTS `send_notification`;
CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_staff`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Holi Holiday',	'2023-03-04',	'2023-03-03',	'<p>08/03/2023 - 09/03/2023 <br></p><p>Vacation<br></p>',	'Yes',	'Yes',	'No',	'Super Admin',	1,	'no',	'2023-03-03 09:58:17',	NULL);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7,	'2016-17',	'no',	'2017-04-20 06:42:19',	'0000-00-00'),
(11,	'2017-18',	'no',	'2017-04-20 06:41:37',	'0000-00-00'),
(13,	'2018-19',	'no',	'2016-08-24 19:26:44',	'0000-00-00'),
(14,	'2019-20',	'no',	'2016-08-24 19:26:55',	'0000-00-00'),
(15,	'2020-21',	'no',	'2016-10-01 05:28:08',	'0000-00-00'),
(16,	'2021-22',	'no',	'2016-10-01 05:28:20',	'0000-00-00'),
(18,	'2022-23',	'no',	'2016-10-01 05:29:02',	'0000-00-00'),
(19,	'2023-24',	'yes',	'2023-11-03 08:52:51',	'0000-00-00'),
(20,	'2024-25',	'no',	'2016-10-01 05:29:18',	'0000-00-00'),
(21,	'2025-26',	'no',	'2016-10-01 05:30:10',	'0000-00-00'),
(22,	'2026-27',	'no',	'2016-10-01 05:30:18',	'0000-00-00'),
(23,	'2027-28',	'no',	'2016-10-01 05:30:24',	'0000-00-00'),
(24,	'2028-29',	'no',	'2016-10-01 05:30:30',	'0000-00-00'),
(25,	'2029-30',	'no',	'2016-10-01 05:30:37',	'0000-00-00');

DROP TABLE IF EXISTS `sms_config`;
CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `source` (`id`, `source`, `description`) VALUES
(1,	'Internet',	'');

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` int(11) DEFAULT 0,
  `designation` int(11) DEFAULT 0,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`) VALUES
(1,	'9000',	0,	0,	0,	'',	'',	'Super Admin',	'',	'',	'',	'',	'',	'raysadmin@gmail.com',	'2020-01-01',	'',	'0000-00-00',	'0000-00-00',	'',	'',	'',	'',	'$2y$10$XJv2F0LG80vojWpi0J7cAOAq3FbVIwGxvAYTe.GPBgEND8mSPtG0m',	'Male',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'Other Document',	'',	0,	1,	'',	NULL),
(2,	'001',	0,	0,	0,	'',	'',	'S Kumar',	'',	'S S',	'S V',	'',	'',	'trustmedraipur@gmail.com',	'1989-05-16',	'Married',	'0000-00-00',	'0000-00-00',	'',	'',	'',	'',	'$2y$10$XJv2F0LG80vojWpi0J7cAOAq3FbVIwGxvAYTe.GPBgEND8mSPtG0m',	'Male',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'Other Document',	'',	0,	1,	'',	NULL),
(3,	'0005',	0,	0,	0,	'',	'',	'Rishabh',	'nayak',	'',	'',	'+917000889041',	'',	'rishabhnayak76@gmail.com',	'1997-01-14',	'',	'0000-00-00',	'0000-00-00',	'abc,xyz',	'abc,xyz',	'',	'',	'$2y$10$VMMbJwwHgaBMSvhIu2ZLpOnQ6z7w4uDswnhGsnPIPGe5M95uyERBe',	'Male',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'',	NULL),
(4,	'2',	0,	0,	0,	'',	'',	'Employee1',	'',	'',	'',	'',	'',	'raysitatwork@gmail.com',	'2023-11-15',	'',	'2023-11-22',	'0000-00-00',	'',	'',	'',	'',	'$2y$10$XJv2F0LG80vojWpi0J7cAOAq3FbVIwGxvAYTe.GPBgEND8mSPtG0m',	'Female',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'',	NULL),
(5,	'456',	0,	0,	0,	'',	'',	'MyAdminTest',	'',	'',	'',	'',	'',	'raysadmin1@gmail.com',	'2023-11-02',	'Single',	'2023-11-01',	'0000-00-00',	'',	'',	'',	'',	'$2y$10$XJv2F0LG80vojWpi0J7cAOAq3FbVIwGxvAYTe.GPBgEND8mSPtG0m',	'Male',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'',	NULL),
(6,	'12222',	0,	1,	1,	'',	'',	'TestAdmin',	'',	'',	'',	'',	'',	'rayspoojamahanand@gmail.com',	'2023-11-02',	'',	'0000-00-00',	'0000-00-00',	'',	'',	'',	'',	'$2y$10$XJv2F0LG80vojWpi0J7cAOAq3FbVIwGxvAYTe.GPBgEND8mSPtG0m',	'Female',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'1234',	NULL),
(7,	'0125',	0,	1,	3,	'graduate',	'1',	'stgsrtrt',	'fgdfgdfg',	'fdgdfg',	'fdgdfg',	'9874563210',	'9632587410',	'staff@gmail.com',	'2023-11-01',	'Single',	'2023-11-16',	'0000-00-00',	'dfdsfdfdf',	'fhfhfhfghfgh',	'fdfdgdfg',	'',	'$2y$10$Rcw9h9MuKhqOuJMdueUODuHCWbjWZgL.JJt.m8Zi2APl0vzjddx0m',	'Female',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'',	NULL),
(10,	'65454',	0,	1,	3,	'ibdf',	'ifeb',	'rsfi',	'ihsdbgf',	'ihef',	'ihesf',	'9874563210',	'9658741023',	'hg9831447@gmail.com',	'2023-11-01',	'Single',	'2023-11-21',	'0000-00-00',	'rejf',	'ofd',	'ifb',	'',	'$2y$10$C1lKqEQmRga21j6uVQ5QLOi708m3JoCfQfzMGqECbSTzHcDPV8nAO',	'Female',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	1,	'',	NULL);

DROP TABLE IF EXISTS `staff_attendance`;
CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_attendance_staff` (`staff_id`),
  KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`),
  CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'2023-10-31',	2,	1,	'',	0,	'0000-00-00 00:00:00',	NULL),
(2,	'2023-10-31',	3,	1,	'',	0,	'0000-00-00 00:00:00',	NULL),
(3,	'2023-11-03',	4,	2,	'',	0,	'0000-00-00 00:00:00',	NULL),
(4,	'2023-11-27',	4,	1,	'',	0,	'0000-00-00 00:00:00',	NULL);

DROP TABLE IF EXISTS `staff_attendance_type`;
CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Present',	'<b class=\"text text-success\">P</b>',	'yes',	'0000-00-00 00:00:00',	'0000-00-00'),
(2,	'Late',	'<b class=\"text text-warning\">L</b>',	'yes',	'0000-00-00 00:00:00',	'0000-00-00'),
(3,	'Absent',	'<b class=\"text text-danger\">A</b>',	'yes',	'0000-00-00 00:00:00',	'0000-00-00'),
(4,	'Half Day',	'<b class=\"text text-warning\">F</b>',	'yes',	'2018-05-07 01:56:16',	'0000-00-00'),
(5,	'Holiday',	'H',	'yes',	'0000-00-00 00:00:00',	'0000-00-00');

DROP TABLE IF EXISTS `staff_designation`;
CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1,	'HR',	'yes'),
(2,	'Accountant',	'yes'),
(3,	'Teacher',	'yes');

DROP TABLE IF EXISTS `staff_id_card`;
CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `status`) VALUES
(1,	'Sample Staff ID Card',	'Sant Merry',	'Near Ukhari square',	'background1.png',	'logo1.png',	'sign1.png',	'#9b1818',	0,	1,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1);

DROP TABLE IF EXISTS `staff_leave_details`;
CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_leave_details_staff` (`staff_id`),
  KEY `FK_staff_leave_details_leave_types` (`leave_type_id`),
  CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES
(1,	2,	1,	'03'),
(2,	2,	2,	'01'),
(3,	1,	1,	''),
(4,	1,	2,	'');

DROP TABLE IF EXISTS `staff_leave_request`;
CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_leave_request_staff` (`staff_id`),
  KEY `FK_staff_leave_request_leave_types` (`leave_type_id`),
  CONSTRAINT `FK_staff_leave_request_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_leave_request` (`id`, `staff_id`, `leave_type_id`, `leave_from`, `leave_to`, `leave_days`, `employee_remark`, `admin_remark`, `status`, `applied_by`, `document_file`, `date`) VALUES
(1,	2,	1,	'2023-03-04',	'2023-03-04',	1,	'',	'',	'pending',	'S Kumar',	'',	'2023-03-03');

DROP TABLE IF EXISTS `staff_payroll`;
CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `staff_payslip`;
CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `basic` float NOT NULL,
  `total_allowance` float NOT NULL,
  `total_deduction` float NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_payslip_staff` (`staff_id`),
  CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `staff_rating`;
CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_staff_rating_staff` (`staff_id`),
  CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `staff_roles`;
CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	0,	'2023-10-31 08:22:55',	NULL),
(2,	2,	2,	0,	'2022-07-15 07:22:20',	NULL),
(3,	2,	3,	0,	'2022-07-15 07:32:58',	NULL),
(4,	3,	4,	0,	'2023-11-03 06:57:13',	NULL),
(5,	1,	5,	0,	'2023-11-04 07:36:44',	NULL),
(6,	1,	6,	0,	'2023-11-04 07:42:36',	NULL),
(7,	2,	7,	0,	'2023-11-06 09:58:41',	NULL),
(10,	2,	10,	0,	'2023-11-21 12:41:56',	NULL);

DROP TABLE IF EXISTS `staff_timeline`;
CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_timeline_staff` (`staff_id`),
  CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `class_id` text DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `section_id` varchar(10) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `total_fee` varchar(100) DEFAULT NULL,
  `concession_percent` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date NOT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `class_id`, `admission_date`, `section_id`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `address`, `total_fee`, `concession_percent`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES
(1,	2,	'012',	'',	NULL,	'2022-07-18',	NULL,	'Rishabh',	NULL,	'',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'2015-01-06',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'M K',	'',	'',	'Lalita',	'',	'',	'Mithilesh',	'Father',	'134567890',	'',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2022-07-18',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2022-07-18 10:14:42',	NULL),
(4,	8,	'kerjgkre',	'kr',	NULL,	'2023-09-22',	NULL,	'wrwg',	NULL,	'rkgb',	'No',	'uploads/student_images/4.png',	'wgb',	'qbg@gmail.com',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'wkhgb',	'wghkb',	'2023-09-21',	'Male',	'',	'',	'ejrg',	0,	0,	'Chhattisgarh',	0,	0,	'',	'',	'',	'',	'',	'father',	'ekrbg',	'hb',	'whrkbg',	'ehfb',	'whb',	'wgh',	'ekrbg',	'Father',	'hb',	'whrkbg',	'',	'',	'',	'',	'',	'yes',	'',	'enkkjetb',	'',	'2023-09-22',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-09-22 10:57:05',	NULL),
(5,	10,	'krg',	'',	NULL,	'2023-09-22',	NULL,	'erg',	NULL,	'kef',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'Chhattisgarh',	'rngkkrgkbr',	NULL,	NULL,	NULL,	NULL,	'',	'',	'2023-09-19',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'erkger',	',er g',	'jrbg',	'',	'',	'',	'erkger',	'Father',	',er g',	'jrbg',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-09-22',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-09-22 11:01:08',	NULL),
(6,	12,	'jjkr',	'jlb',	NULL,	'2023-09-22',	NULL,	'reger',	NULL,	'hk',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'Chhattisgarh',	'raipur',	NULL,	NULL,	NULL,	NULL,	'',	'',	'2023-09-14',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'rejkg',	'wkgb',	'ekb',	'',	'',	'',	'rejkg',	'Father',	'wkgb',	'ekb',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-09-22',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-09-22 11:09:32',	NULL),
(7,	14,	'eljrgnjer',	'kwjg',	'1',	'2023-09-22',	NULL,	'wjgj',	NULL,	'jekf',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'Chhattisgarh',	'raipur',	NULL,	NULL,	NULL,	NULL,	'',	'',	'2023-09-20',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'rkgkbr',	'khweb',	'ekhb',	'',	'',	'',	'rkgkbr',	'Father',	'khweb',	'ekhb',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-09-22',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-09-22 11:11:06',	NULL),
(8,	16,	'lrnglren',	'rjegnjre',	'1',	'2023-09-22',	'cgbse',	'jwkf',	NULL,	'qjf',	'No',	'uploads/student_images/default_male.jpg',	'kbkb',	'kbkb@gmail.com',	'Chhattisgarh',	'krw',	NULL,	NULL,	NULL,	NULL,	'kkr',	'kjb',	'2023-09-13',	'Male',	'',	'',	'kejrg',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'mother',	'kwrbghrw',	'whje',	'jhef',	'jhew',	'jh',	'jhv',	'jhew',	'Mother',	'jh',	'jhv',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-09-22',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-09-22 13:03:10',	NULL),
(9,	18,	'77878888',	'878778',	'1',	'2023-10-18',	'cgbse',	'wrfwrr',	NULL,	'kjb',	'No',	'uploads/student_images/9.png',	'9589344008',	'test@gmail.com',	'Chhattisgarh',	'raipur',	NULL,	NULL,	'5%',	NULL,	'kjj',	'jjjj',	'2023-10-01',	'Male',	'',	'',	'wfrg',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'wekrk',	'9854712036',	'erjjer',	'kerb',	'9874563210',	'kjegejr',	'wekrk',	'Father',	'9854712036',	'erjjer',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-18',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-10-18 12:50:53',	NULL),
(10,	20,	'test',	'9874521',	'7',	'2023-10-20',	'cbse',	'test',	NULL,	'test',	'No',	'uploads/student_images/10.jpg',	'9874125630',	'test12@gmail.com',	'Chhattisgarh',	'raipur',	NULL,	'50000',	'5',	NULL,	'hindu',	'dfdf',	'2023-10-01',	'Male',	'',	'',	'gen',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'test',	'9658741230',	'test',	'test',	'9632587410',	'test',	'test',	'Father',	'9658741230',	'test',	'',	'test@gmail.com',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-20',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-10-20 08:42:47',	NULL),
(11,	22,	'12345678',	'546546545445544',	'11',	'2023-10-27',	'cbse',	'kjsfkhsedfhkds',	NULL,	'hkrsdhs',	'No',	'uploads/student_images/11.png',	'9874563210',	'hg@gmail.com',	'Chhattisgarh',	'raipur',	'raipur',	'50000',	'5',	NULL,	'kjef',	'kjeb',	'2023-10-01',	'Female',	'',	'',	'sjrkfnkj',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'mother',	'jkeafebgbegbb',	'9632104578',	'jsrgnjsr',	'kjsegbkbwekb',	'9630147852',	'jsbgbsbg',	'kjsegbkbwekb',	'Mother',	'9630147852',	'jsbgbsbg',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-27',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-10-27 12:16:31',	NULL),
(12,	24,	'bgkbkerg8787e8',	'ml8787877',	'7',	'2023-10-27',	'cbse',	'rjgjrgregb',	NULL,	'jkrbgbw',	'No',	'uploads/student_images/12.jpeg',	'9555555',	'jwgwjl@gmail.com',	'Chhattisgarh',	'raipur',	'raipur',	'5654646554',	'5',	NULL,	'jjgbjb',	'ljwj',	'2023-10-28',	'Female',	'',	'',	'wlernflwje',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'mother',	'eorgjer',	'5465464644',	'ejgjererh',	'kjrekrhrkeg',	'5654654654',	'erhihreihre',	'kjrekrhrkeg',	'Mother',	'5654654654',	'erhihreihre',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-27',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-10-27 12:38:38',	NULL),
(13,	26,	'1234',	'1234',	'44',	'2023-10-31',	'44',	'student1',	NULL,	'',	'No',	'uploads/student_images/default_female.jpg',	'',	'',	'',	'',	'',	'',	'Select Option',	NULL,	'',	'',	'2023-09-28',	'Female',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'',	'',	'',	'',	'',	'',	'parent1',	'Father',	'7894561230',	'',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-31',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-04 06:13:21',	NULL),
(14,	28,	'1235',	'',	'44',	'2023-10-31',	'44',	'student2',	NULL,	'',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'',	'',	'',	'',	'Select Option',	NULL,	'',	'',	'2023-10-20',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'',	'',	'',	'',	'',	'',	'parent2',	'Father',	'8459763194',	'',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-10-31',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-04 06:13:53',	NULL),
(15,	30,	'kugjkhgjhgfj',	'35453434',	'6',	'2023-11-06',	'Select Opt',	'jhgjhg',	NULL,	'yjjyyhf',	'No',	'uploads/student_images/default_male.jpg',	'9589741036',	'gfghjf@gmail.com',	'Chhattisgarh',	'raipur',	'raipur',	'10000',	'Select Option',	NULL,	'khk,jhj',	'jhjgkhgj',	'2023-11-01',	'Male',	'',	'',	'sdffger',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'mother',	'sedgsd',	'9658741230',	'sdfsd',	'dsfsdf',	'963258740',	'dsfdf',	'dsfsdf',	'Mother',	'963258740',	'dsfdf',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-11-06',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-06 09:51:42',	NULL),
(16,	32,	'54654654',	'65465465645',	'6',	'2023-11-21',	'cbse',	'jhgjgf',	NULL,	'hgfhgfg',	'No',	'uploads/student_images/default_male.jpg',	'9874561203',	'hg9@gmail.com',	'Chhattisgarh',	'raipur',	'jfjgfgf',	'888888',	'5',	NULL,	'hgjfj',	'jhgjhf',	'2023-11-01',	'Male',	'',	'',	'jvhhjgjf',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'hjjgfhgfh',	'9632147850',	'hghjghjghjg',	'',	'',	'',	'hjjgfhgfh',	'Father',	'9632147850',	'hghjghjghjg',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-11-21',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-21 13:23:33',	NULL),
(17,	34,	'8554',	'',	'42',	'2023-11-26',	'cbse',	'ddfdf',	NULL,	'',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'',	'',	'',	'',	'Select Option',	NULL,	'',	'',	'2023-11-10',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'',	'',	'',	'',	'',	'',	'jhbjbhj',	'Father',	'5554545454',	'',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-11-26',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-26 11:02:00',	NULL),
(18,	36,	'5645',	'',	'42',	'2023-11-26',	'4',	'drftyguhji',	NULL,	'',	'No',	'uploads/student_images/default_male.jpg',	'',	'',	'',	'',	'',	'',	'Select Option',	NULL,	'',	'',	'2023-11-09',	'Male',	'',	'',	'',	0,	0,	'',	0,	0,	'',	'',	'',	'',	'',	'father',	'',	'',	'',	'',	'',	'',	'ghgh',	'Father',	'8989898981',	'',	'',	'',	'',	'',	'',	'yes',	'',	'',	'',	'2023-11-26',	0,	'',	'',	NULL,	NULL,	'0000-00-00',	'2023-11-26 11:47:49',	NULL);

DROP TABLE IF EXISTS `student_applyleave`;
CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `docs` text NOT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) NOT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_attendences`;
CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	2,	0,	'2023-10-31',	18,	'',	NULL,	'yes',	'2023-10-31 11:19:13',	NULL),
(2,	22,	0,	'2023-11-26',	1,	'',	NULL,	'no',	'2023-11-26 11:49:17',	NULL),
(3,	22,	0,	'2023-11-27',	1,	'',	NULL,	'no',	'2023-11-27 06:08:03',	NULL);

DROP TABLE IF EXISTS `student_doc`;
CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_edit_fields`;
CREATE TABLE `student_edit_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `student_fees`;
CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_fees_deposite`;
CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_fees_discounts`;
CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_fees_master`;
CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_session`;
CREATE TABLE `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `default_login` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `student_id` (`student_id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(22,	15,	18,	42,	4,	0,	0,	NULL,	0.00,	0.00,	'no',	0,	0,	'2023-11-26 11:47:49',	NULL);

DROP TABLE IF EXISTS `student_sibling`;
CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_subject_attendances`;
CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `attendence_type_id` (`attendence_type_id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `subject_timetable_id` (`subject_timetable_id`),
  CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student_timeline`;
CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'science',	'01',	'theory',	'no',	'2023-11-23 07:55:06',	NULL);

DROP TABLE IF EXISTS `subject_groups`;
CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subject_group_class_sections`;
CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subject_group_subjects`;
CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subject_syllabus`;
CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `session_id` (`session_id`),
  KEY `created_by` (`created_by`),
  KEY `created_for` (`created_for`),
  CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subject_timetable`;
CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  KEY `staff_id` (`staff_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `submit_assignment`;
CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subroute`;
CREATE TABLE `subroute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subroute_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `subroute` (`id`, `subroute_name`) VALUES
(1,	'ad');

DROP TABLE IF EXISTS `teacher_subjects`;
CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `template_admitcards`;
CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(250) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT 1,
  `is_father_name` int(1) NOT NULL DEFAULT 1,
  `is_mother_name` int(1) NOT NULL DEFAULT 1,
  `is_dob` int(1) NOT NULL DEFAULT 1,
  `is_admission_no` int(1) NOT NULL DEFAULT 1,
  `is_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_address` int(1) NOT NULL DEFAULT 1,
  `is_gender` int(1) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES
(1,	'Sample Admit Card',	'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL',	'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION (10+2) 2014',	'ab12c4b65f53ee621dcf84370a7c5be4.png',	'0910482bf79df5fd103e8383d61b387a.png',	'Test',	'Mount Carmel School',	'test dmit card2',	'aa9c7087e68c5af1d2c04946de1d3bd3.png',	'782a71f53ea6bca213012d49e9d46d98.jpg',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	NULL,	'2020-02-28 14:26:15',	NULL);

DROP TABLE IF EXISTS `template_marksheets`;
CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT 1,
  `is_name` int(1) DEFAULT 1,
  `is_father_name` int(1) DEFAULT 1,
  `is_mother_name` int(1) DEFAULT 1,
  `is_dob` int(1) DEFAULT 1,
  `is_admission_no` int(1) DEFAULT 1,
  `is_roll_no` int(1) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(1) NOT NULL DEFAULT 1,
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `template_marksheets` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_customfield`, `background_img`, `date`, `is_class`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1,	'Sample Marksheet',	'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL',	'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL',	'f314cec3f688771ccaeddbcee6e52f7c.png',	'e824b2df53266266be2dbfd2001168b8.png',	'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION',	'Mount Carmel School',	'GOVT GIRLS H S SCHOOL',	'331e0690e50f8c6b7a219a0a2b9667f7.png',	'351f513d79ee5c0f642c2d36514a1ff4.png',	'fb79d2c0d163357d1706b78550a05e2c.png',	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	'',	NULL,	0,	0,	NULL,	NULL,	'2020-02-28 14:26:06',	NULL);

DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `transport`;
CREATE TABLE `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_no` text NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `phone_no` text NOT NULL,
  `address` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `transport_fee` int(11) NOT NULL,
  `class` text NOT NULL,
  `vehicle_name` text DEFAULT NULL,
  `to` text NOT NULL,
  `from` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transport` (`id`, `adm_no`, `name`, `gender`, `phone_no`, `address`, `father_name`, `mother_name`, `transport_fee`, `class`, `vehicle_name`, `to`, `from`, `created_at`, `updated_at`) VALUES
(5,	'10',	'test test',	'Male',	'9874125630',	'raipur',	'test',	'test',	2000,	'7',	NULL,	'Raipur',	'Raipur',	'2023-10-27 07:32:53',	'0000-00-00 00:00:00'),
(6,	'1',	'Rishabh ',	'Male',	'9874563210',	'jrnfjnrg',	'M K',	'Lalita',	54874,	'5',	NULL,	'Raipur',	'Raipur',	'2023-10-27 11:22:14',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `transport_fee`;
CREATE TABLE `transport_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` text NOT NULL,
  `date` text NOT NULL,
  `admission_no` text NOT NULL,
  `name` text NOT NULL,
  `class` text NOT NULL,
  `gender` text NOT NULL,
  `phone_number` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `address` text NOT NULL,
  `transport_from` text NOT NULL,
  `transport_to` text NOT NULL,
  `transport_fee` text NOT NULL,
  `paid_fee` text NOT NULL,
  `remaining_fee` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transport_fee` (`id`, `invoice`, `date`, `admission_no`, `name`, `class`, `gender`, `phone_number`, `father_name`, `mother_name`, `address`, `transport_from`, `transport_to`, `transport_fee`, `paid_fee`, `remaining_fee`, `created_at`) VALUES
(2,	'',	'2023-10-27',	'5',	'test test',	'7',	'Male',	'',	'test',	'test',	'raipur',	'Raipur',	'Raipur',	'2000',	'1000',	'1000',	'2023-10-27 10:46:59'),
(3,	'',	'2023-10-27',	'6',	'Rishabh ',	'5',	'Male',	'9874563210',	'M K',	'Lalita',	'jrnfjnrg',	'Raipur',	'Raipur',	'54874',	'5454',	'545',	'2023-10-27 11:52:30');

DROP TABLE IF EXISTS `transport_route`;
CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	'Raipur',	NULL,	500.00,	NULL,	'no',	'2023-03-03 10:00:59',	NULL),
(2,	'jnjn',	NULL,	8.00,	NULL,	'no',	'2023-11-04 09:25:26',	NULL);

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'157.34.94.233',	'Opera 77.0.4054.203, Windows 10',	'2021-07-11 09:40:28'),
(2,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'157.34.94.233',	'Chrome 91.0.4472.124, Windows 10',	'2021-07-11 09:43:35'),
(3,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.224.186.123',	'Chrome 88.0.4324.152, Android',	'2021-07-17 14:28:26'),
(4,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.223.24',	'Chrome 91.0.4472.124, Windows 10',	'2021-07-19 11:31:15'),
(5,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.223.24',	'Chrome 91.0.4472.124, Windows 10',	'2021-07-19 11:52:04'),
(6,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.223.24',	'Chrome 91.0.4472.124, Windows 10',	'2021-07-19 11:52:38'),
(7,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.200.252',	'Chrome 92.0.4515.159, Windows 10',	'2021-08-28 10:00:03'),
(8,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.200.252',	'Chrome 92.0.4515.159, Windows 10',	'2021-08-28 12:27:03'),
(9,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.136.10',	'Chrome 92.0.4515.159, Windows 7',	'2021-08-30 11:02:27'),
(10,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.213.134',	'Chrome 93.0.4577.63, Windows 10',	'2021-09-10 11:56:59'),
(11,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.213.134',	'Chrome 93.0.4577.63, Windows 10',	'2021-09-10 12:00:45'),
(12,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.213.134',	'Chrome 93.0.4577.63, Windows 10',	'2021-09-10 12:02:50'),
(13,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.223.138',	'Chrome 93.0.4577.63, Windows 10',	'2021-09-14 05:58:11'),
(14,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.164.119',	'Chrome 96.0.4664.110, Windows 10',	'2021-12-18 12:35:41'),
(15,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.197.36',	'Chrome 97.0.4692.87, Android',	'2022-02-22 09:11:43'),
(16,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.197.36',	'Chrome 98.0.4758.102, Windows 10',	'2022-02-22 09:53:37'),
(17,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.192.243',	'Spartan 18.18362, Windows 10',	'2022-03-03 07:17:11'),
(18,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.192.243',	'Chrome 98.0.4758.102, Windows 10',	'2022-03-03 07:44:05'),
(19,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.165.85',	'Chrome 99.0.4844.58, Android',	'2022-03-04 07:54:10'),
(20,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.182.117.179',	'Chrome 97.0.4692.87, Android',	'2022-04-06 07:57:59'),
(21,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'61.0.177.243',	'Chrome 100.0.4896.75, Windows 10',	'2022-04-06 08:45:03'),
(22,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.230.142',	'Chrome 100.0.4896.88, Windows 10',	'2022-04-15 08:30:08'),
(23,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.221.200',	'Chrome 102.0.0.0, Windows 10',	'2022-06-17 07:26:47'),
(24,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.163.245',	'Opera 89.0.4447.38, Windows 10',	'2022-07-15 06:34:16'),
(25,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.163.245',	'Opera 89.0.4447.38, Windows 10',	'2022-07-15 06:36:22'),
(26,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.36.16.46',	'Chrome 103.0.0.0, Android',	'2022-07-15 06:48:40'),
(27,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.36.17.65',	'Chrome 103.0.5060.114, Windows 10',	'2022-07-15 07:19:45'),
(28,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.36.17.65',	'Chrome 103.0.5060.114, Windows 10',	'2022-07-15 07:27:26'),
(29,	'rishabhnayak76@gmail.com',	'Teacher',	NULL,	'49.36.17.65',	'Chrome 103.0.5060.114, Windows 10',	'2022-07-15 07:39:29'),
(30,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.89.53',	'Firefox 102.0, Windows 10',	'2022-07-16 06:16:37'),
(31,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.89.53',	'Chrome 103.0.0.0, Windows 10',	'2022-07-16 07:37:44'),
(32,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.89.53',	'Chrome 103.0.0.0, Windows 10',	'2022-07-16 10:43:12'),
(33,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.224.192.108',	'Firefox 102.0, Windows 10',	'2022-07-18 08:30:35'),
(34,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.36.17.86',	'Chrome 103.0.5060.114, Windows 10',	'2022-07-18 10:06:59'),
(35,	'trustmedraipur@gmail.com',	'Teacher',	NULL,	'110.224.192.108',	'Firefox 102.0, Windows 10',	'2022-07-18 10:10:24'),
(36,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.224.192.108',	'Firefox 102.0, Windows 10',	'2022-07-18 10:11:18'),
(37,	'parent1',	'parent',	NULL,	'110.224.192.108',	'Chrome 103.0.0.0, Windows 10',	'2022-07-18 10:16:03'),
(38,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.175.124',	'Firefox 102.0, Windows 10',	'2022-07-19 04:37:28'),
(39,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.175.124',	'Chrome 103.0.0.0, Windows 10',	'2022-07-19 05:53:47'),
(40,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.175.124',	'Firefox 102.0, Windows 10',	'2022-07-19 11:47:41'),
(41,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.205.48',	'Chrome 97.0.4692.87, Android',	'2022-08-04 07:35:39'),
(42,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.202.197',	'Chrome 97.0.4692.87, Android',	'2022-09-20 06:46:31'),
(43,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.202.197',	'Chrome 105.0.0.0, Windows 10',	'2022-09-20 10:38:31'),
(44,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'47.247.199.198',	'Firefox 107.0, Windows 10',	'2022-12-06 05:44:56'),
(45,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'47.247.199.198',	'Firefox 107.0, Windows 10',	'2022-12-06 05:50:07'),
(46,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'152.58.26.128',	'Chrome 106.0.5249.126, Android',	'2023-02-27 05:07:56'),
(47,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'103.84.129.49',	'Chrome 110.0.0.0, Windows 10',	'2023-02-27 05:28:27'),
(48,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'103.84.129.49',	'Chrome 110.0.0.0, Windows 10',	'2023-02-27 06:36:05'),
(49,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.77.90.143',	'Chrome 110.0.0.0, Windows 10',	'2023-03-03 06:20:46'),
(50,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.208.178.248',	'Firefox 110.0, Windows 10',	'2023-03-03 06:57:58'),
(51,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.36.24.64',	'Chrome 110.0.0.0, Windows 10',	'2023-03-03 07:37:38'),
(52,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'152.58.27.150',	'Firefox 110.0, Windows 10',	'2023-03-03 09:50:08'),
(53,	'trustmedraipur@gmail.com',	'Teacher',	NULL,	'152.58.25.125',	'Chrome 110.0.0.0, Windows 10',	'2023-03-03 10:18:10'),
(54,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'152.58.27.141',	'Firefox 110.0, Windows 10',	'2023-03-10 10:46:45'),
(55,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'::1',	'Chrome 116.0.0.0, Windows 10',	'2023-08-21 04:38:24'),
(56,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.162.91',	'Chrome 116.0.0.0, Windows 10',	'2023-08-23 11:16:31'),
(57,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.212.164.31',	'Chrome 116.0.0.0, Windows 10',	'2023-08-24 05:40:12'),
(58,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 09:54:55'),
(59,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:06:30'),
(60,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:06:51'),
(61,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:14:43'),
(62,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:15:31'),
(63,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:17:18'),
(64,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:19:24'),
(65,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:19:49'),
(66,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:23:23'),
(67,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:24:10'),
(68,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:25:12'),
(69,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:26:00'),
(70,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:26:17'),
(71,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:27:02'),
(72,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:27:54'),
(73,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 11:28:07'),
(74,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.61.175.210',	'Chrome 116.0.0.0, Windows 10',	'2023-08-25 13:50:44'),
(75,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.241.227',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 09:28:30'),
(76,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.241.227',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 09:29:40'),
(77,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.241.227',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:28:04'),
(78,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:36:46'),
(79,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:39:57'),
(80,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:49:01'),
(81,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:49:26'),
(82,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:49:43'),
(83,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:50:32'),
(84,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.242.224',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:55:36'),
(85,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.242.224',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:56:31'),
(86,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.242.224',	'Chrome 116.0.0.0, Windows 10',	'2023-09-07 10:56:40'),
(87,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.173.132.190',	'Chrome 116.0.0.0, Windows 10',	'2023-09-08 05:16:53'),
(88,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.173.132.190',	'Chrome 116.0.0.0, Windows 10',	'2023-09-08 11:20:39'),
(89,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.241.227',	'Chrome 116.0.0.0, Windows 10',	'2023-09-08 11:54:56'),
(90,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.224.185.251',	'Chrome 116.0.0.0, Windows 10',	'2023-09-08 16:29:08'),
(91,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.224.185.251',	'Chrome 116.0.0.0, Windows 10',	'2023-09-08 16:44:47'),
(92,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.207.38',	'Chrome 116.0.0.0, Windows 10',	'2023-09-09 08:25:28'),
(93,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.198.134',	'Chrome 116.0.0.0, Windows 10',	'2023-09-10 13:25:53'),
(94,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.131.199',	'Chrome 116.0.0.0, Windows 10',	'2023-09-11 11:43:03'),
(95,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.91.173',	'Chrome 116.0.0.0, Windows 10',	'2023-09-12 14:03:10'),
(96,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 10:06:57'),
(97,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 11:25:15'),
(98,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:06:15'),
(99,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:27:40'),
(100,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:28:54'),
(101,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:29:14'),
(102,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:33:48'),
(103,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 12:34:19'),
(104,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.236.222',	'Chrome 116.0.0.0, Windows 10',	'2023-09-22 13:02:22'),
(105,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.69.199.195',	'Chrome 116.0.0.0, Windows 10',	'2023-09-23 07:40:56'),
(106,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'171.49.141.144',	'Chrome 117.0.0.0, Windows 10',	'2023-10-07 17:43:58'),
(107,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'49.43.41.248',	'Chrome 117.0.0.0, Windows 10',	'2023-10-08 09:58:09'),
(108,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:25:30'),
(109,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:32:48'),
(110,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:32:59'),
(111,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:33:28'),
(112,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:34:20'),
(113,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:34:58'),
(114,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 10:35:35'),
(115,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 11:18:26'),
(116,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Opera 103.0.0.0, Windows 10',	'2023-10-18 11:34:07'),
(117,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 13:13:04'),
(118,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.181.101.11',	'Chrome 118.0.0.0, Windows 10',	'2023-10-18 13:28:31'),
(119,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.207.248.22',	'Chrome 114.0.0.0, Android',	'2023-10-18 21:42:25'),
(120,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.207.248.22',	'Chrome 114.0.0.0, Android',	'2023-10-18 21:45:55'),
(121,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.206.163',	'Chrome 118.0.0.0, Windows 10',	'2023-10-19 10:20:41'),
(122,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.206.163',	'Chrome 118.0.0.0, Windows 10',	'2023-10-19 10:22:34'),
(123,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.206.163',	'Chrome 118.0.0.0, Windows 10',	'2023-10-19 10:23:01'),
(124,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.177.206.163',	'Chrome 118.0.0.0, Windows 10',	'2023-10-19 11:04:12'),
(125,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 06:16:43'),
(126,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 11:14:24'),
(127,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:02:52'),
(128,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:04:05'),
(129,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:04:15'),
(130,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:20:43'),
(131,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:22:52'),
(132,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:56:11'),
(133,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 12:56:16'),
(134,	'parent1',	'parent',	NULL,	'223.235.193.87',	'Chrome 118.0.0.0, Windows 10',	'2023-10-20 13:50:30'),
(135,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:00:19'),
(136,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:20:55'),
(137,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:55:00'),
(138,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:58:14'),
(139,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:58:41'),
(140,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 07:59:07'),
(141,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:17:00'),
(142,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:21:12'),
(143,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:24:40'),
(144,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:31:51'),
(145,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:33:52'),
(146,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:37:44'),
(147,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:43:20'),
(148,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:44:19'),
(149,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:44:51'),
(150,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:51:11'),
(151,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:51:15'),
(152,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:51:20'),
(153,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:51:42'),
(154,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:51:55'),
(155,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:52:08'),
(156,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:53:07'),
(157,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:53:10'),
(158,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:55:21'),
(159,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:55:53'),
(160,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:56:40'),
(161,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:56:51'),
(162,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:56:57'),
(163,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:57:17'),
(164,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:57:29'),
(165,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:57:59'),
(166,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:58:12'),
(167,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 08:59:32'),
(168,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:02:24'),
(169,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:02:31'),
(170,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:04:40'),
(171,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:47:24'),
(172,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:48:15'),
(173,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:51:46'),
(174,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:52:02'),
(175,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:52:09'),
(176,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:54:08'),
(177,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 09:55:17'),
(178,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 10:12:34'),
(179,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.70.226.18',	'Chrome 118.0.0.0, Windows 10',	'2023-10-21 12:37:35'),
(180,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.227.52.173',	'Chrome 118.0.0.0, Windows 10',	'2023-10-25 07:44:02'),
(181,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.168.235',	'Chrome 118.0.0.0, Windows 10',	'2023-10-26 06:54:36'),
(182,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.168.235',	'Chrome 118.0.0.0, Windows 10',	'2023-10-26 07:09:47'),
(183,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.168.235',	'Chrome 118.0.0.0, Windows 10',	'2023-10-26 08:05:46'),
(184,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.168.235',	'Chrome 118.0.0.0, Windows 10',	'2023-10-26 08:07:39'),
(185,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.168.235',	'Chrome 118.0.0.0, Windows 10',	'2023-10-26 08:48:19'),
(186,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.175.163.8',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 05:45:07'),
(187,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 06:11:51'),
(188,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 07:22:22'),
(189,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 08:16:11'),
(190,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 10:17:39'),
(191,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 10:52:20'),
(192,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 10:56:18'),
(193,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 10:59:39'),
(194,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:14:23'),
(195,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:15:38'),
(196,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:15:50'),
(197,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:20:35'),
(198,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:20:46'),
(199,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:28:37'),
(200,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:29:51'),
(201,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:30:28'),
(202,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:53:17'),
(203,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:54:46'),
(204,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:56:50'),
(205,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:57:06'),
(206,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:59:16'),
(207,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 11:59:51'),
(208,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:00:47'),
(209,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:02:48'),
(210,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:17:00'),
(211,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:20:38'),
(212,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:28:42'),
(213,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:29:57'),
(214,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:30:01'),
(215,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:34:58'),
(216,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:35:49'),
(217,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'106.200.218.48',	'Chrome 118.0.0.0, Windows 10',	'2023-10-27 12:57:38'),
(218,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 06:41:40'),
(219,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 06:41:53'),
(220,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 08:54:04'),
(221,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:02:19'),
(222,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:05:24'),
(223,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:05:32'),
(224,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:05:38'),
(225,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:22:40'),
(226,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:23:32'),
(227,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:24:47'),
(228,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 09:26:35'),
(229,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'122.161.174.40',	'Chrome 118.0.0.0, Windows 10',	'2023-10-28 11:51:22'),
(230,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.227.62.50',	'Chrome 118.0.0.0, Windows 10',	'2023-10-30 07:57:05'),
(231,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'110.227.62.50',	'Chrome 118.0.0.0, Windows 10',	'2023-10-30 09:02:49'),
(232,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 05:45:25'),
(233,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 07:50:16'),
(234,	'raysadmin@gmail.com',	'Super Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 07:55:30'),
(235,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 08:25:29'),
(236,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 10:15:18'),
(237,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 10:18:25'),
(238,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 10:45:54'),
(239,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 10:46:33'),
(240,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 10:52:48'),
(241,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.77.86.63',	'Chrome 118.0.0.0, Windows 10',	'2023-10-31 13:12:07'),
(242,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.144',	'Chrome 118.0.0.0, Windows 10',	'2023-11-01 06:45:23'),
(243,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.144',	'Chrome 118.0.0.0, Windows 10',	'2023-11-01 06:47:35'),
(244,	'trustmedraipur@gmail.com',	'Teacher',	NULL,	'106.200.219.144',	'Chrome 118.0.0.0, Windows 10',	'2023-11-01 06:48:43'),
(245,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.144',	'Chrome 118.0.0.0, Windows 10',	'2023-11-01 07:42:38'),
(246,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 06:26:19'),
(247,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 07:27:04'),
(248,	'raysitatwork@gmail.com',	'Accountant',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 07:27:39'),
(249,	'raysitatwork@gmail.com',	'Accountant',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 07:31:18'),
(250,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 08:09:15'),
(251,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 08:10:26'),
(252,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 08:11:33'),
(253,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 08:12:38'),
(254,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.177.206.19',	'Chrome 118.0.0.0, Windows 10',	'2023-11-03 08:23:47'),
(255,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 06:10:34'),
(256,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 06:15:12'),
(257,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 06:18:53'),
(258,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 06:24:06'),
(259,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 06:58:31'),
(260,	'raysadmin1@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 07:40:07'),
(261,	'rayspoojamahanand@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 07:48:13'),
(262,	'rayspoojamahanand@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 07:49:20'),
(263,	'rayspoojamahanand@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 07:50:24'),
(264,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:42:27'),
(265,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:53:48'),
(266,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:53:52'),
(267,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:53:53'),
(268,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:53:56'),
(269,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:53:58'),
(270,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:54:00'),
(271,	'raysadmin1@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:54:08'),
(272,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:54:30'),
(273,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:55:39'),
(274,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:55:46'),
(275,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:56:15'),
(276,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 08:58:58'),
(277,	'raysitatwork@gmail.com',	'Accountant',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 09:03:47'),
(278,	'trustmedraipur@gmail.com',	'Teacher',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 09:04:49'),
(279,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 09:08:37'),
(280,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 119.0.0.0, Windows 10',	'2023-11-04 10:15:26'),
(281,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 119.0.0.0, Windows 10',	'2023-11-04 10:40:33'),
(282,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.201.138.182',	'Chrome 118.0.0.0, Windows 10',	'2023-11-04 11:24:02'),
(283,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 06:29:08'),
(284,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:20:48'),
(285,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:43:24'),
(286,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:46:09'),
(287,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:47:26'),
(288,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:54:50'),
(289,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 07:56:11'),
(290,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:05:45'),
(291,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:09:55'),
(292,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:15:26'),
(293,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:18:28'),
(294,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:19:19'),
(295,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:20:47'),
(296,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:21:19'),
(297,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:23:56'),
(298,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:24:28'),
(299,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:25:00'),
(300,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:34:12'),
(301,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:37:23'),
(302,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:37:58'),
(303,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:39:20'),
(304,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:39:56'),
(305,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 08:40:31'),
(306,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:38:40'),
(307,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:40:52'),
(308,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:41:44'),
(309,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:43:22'),
(310,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:43:50'),
(311,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:44:40'),
(312,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:45:10'),
(313,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:45:55'),
(314,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 09:46:21'),
(315,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 10:31:11'),
(316,	'parent15',	'parent',	NULL,	'182.70.209.64',	'Chrome 118.0.0.0, Windows 10',	'2023-11-06 10:38:21'),
(317,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 06:16:12'),
(318,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 06:47:05'),
(319,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 06:54:51'),
(320,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 07:06:20'),
(321,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 07:06:34'),
(322,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.224.242',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 07:10:30'),
(323,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 10:50:42'),
(324,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 10:51:37'),
(325,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:14:18'),
(326,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:20:04'),
(327,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:22:47'),
(328,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:28:23'),
(329,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:34:13'),
(330,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 11:34:32'),
(331,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.164.84',	'Chrome 118.0.0.0, Windows 10',	'2023-11-07 12:00:06'),
(332,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.235.24',	'Chrome 119.0.0.0, Windows 10',	'2023-11-08 10:07:46'),
(333,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.235.24',	'Chrome 119.0.0.0, Windows 10',	'2023-11-08 10:42:11'),
(334,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.235.24',	'Chrome 119.0.0.0, Windows 10',	'2023-11-08 10:44:18'),
(335,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.70.235.24',	'Chrome 119.0.0.0, Windows 10',	'2023-11-08 10:45:53'),
(336,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.227.55.179',	'Chrome 119.0.0.0, Windows 10',	'2023-11-17 14:10:42'),
(337,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.224.223.91',	'Chrome 119.0.0.0, Windows 10',	'2023-11-21 07:01:31'),
(338,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.224.223.91',	'Chrome 119.0.0.0, Windows 10',	'2023-11-21 07:20:57'),
(339,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.224.223.91',	'Chrome 119.0.0.0, Windows 10',	'2023-11-21 07:27:01'),
(340,	'hg9831447@gmail.com',	'parents',	NULL,	'110.224.223.91',	'Opera 104.0.0.0, Windows 10',	'2023-11-21 11:00:27'),
(341,	'hg9831447@gmail.com',	'parents',	NULL,	'110.224.223.91',	'Opera 104.0.0.0, Windows 10',	'2023-11-21 11:02:29'),
(342,	'hg9831447@gmail.com',	'Teacher',	NULL,	'110.224.223.91',	'Opera 104.0.0.0, Windows 10',	'2023-11-21 12:42:38'),
(343,	'hg9831447@gmail.com',	'Teacher',	NULL,	'110.224.223.91',	'Opera 104.0.0.0, Windows 10',	'2023-11-21 13:25:52'),
(344,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.231',	'Chrome 119.0.0.0, Windows 10',	'2023-11-22 05:40:23'),
(345,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.231',	'Chrome 119.0.0.0, Windows 10',	'2023-11-22 09:29:43'),
(346,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.200.219.231',	'Chrome 119.0.0.0, Windows 10',	'2023-11-22 12:23:25'),
(347,	'raysadmin@gmail.com',	'Admin',	NULL,	'182.69.89.178',	'Chrome 119.0.0.0, Windows 10',	'2023-11-23 05:46:06'),
(348,	'hg9831447@gmail.com',	'Teacher',	NULL,	'182.69.89.178',	'Opera 104.0.0.0, Windows 10',	'2023-11-23 06:40:59'),
(349,	'hg9831447@gmail.com',	'Teacher',	NULL,	'182.69.89.178',	'Opera 104.0.0.0, Windows 10',	'2023-11-23 06:45:02'),
(350,	'hg9831447@gmail.com',	'Teacher',	NULL,	'182.69.89.178',	'Opera 104.0.0.0, Windows 10',	'2023-11-23 06:45:14'),
(351,	'hg9831447@gmail.com',	'Teacher',	NULL,	'182.69.89.178',	'Opera 104.0.0.0, Windows 10',	'2023-11-23 10:11:11'),
(352,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.175.168.99',	'Chrome 119.0.0.0, Windows 10',	'2023-11-24 06:10:17'),
(353,	'hg9831447@gmail.com',	'Teacher',	NULL,	'122.175.168.99',	'Opera 104.0.0.0, Windows 10',	'2023-11-24 08:41:21'),
(354,	'raysadmin@gmail.com',	'Admin',	NULL,	'122.175.168.99',	'Chrome 119.0.0.0, Windows 10',	'2023-11-24 10:56:15'),
(355,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 10:50:18'),
(356,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 11:49:27'),
(357,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.227.59.113',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 11:57:14'),
(358,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 12:18:01'),
(359,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 12:22:14'),
(360,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:37:12'),
(361,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:39:11'),
(362,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:39:16'),
(363,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:49:38'),
(364,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:49:43'),
(365,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:49:47'),
(366,	'raysadmin@gmail.com',	'Admin',	NULL,	'49.35.159.44',	'Chrome 119.0.0.0, Windows 10',	'2023-11-26 14:50:01'),
(367,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 05:58:33'),
(368,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 06:07:21'),
(369,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 06:12:58'),
(370,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 06:26:51'),
(371,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 08:46:06'),
(372,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.168.82',	'Chrome 119.0.0.0, Windows 10',	'2023-11-27 09:00:53'),
(373,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.49.142.104',	'Chrome 118.0.0.0, Windows 10',	'2023-11-29 06:38:11'),
(374,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.49.142.104',	'Chrome 118.0.0.0, Windows 10',	'2023-11-29 10:43:57'),
(375,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.49.141.19',	'Chrome 119.0.0.0, Windows 10',	'2023-12-04 05:51:36'),
(376,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.49.141.19',	'Chrome 119.0.0.0, Windows 10',	'2023-12-04 09:00:16'),
(377,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.49.141.19',	'Chrome 119.0.0.0, Windows 10',	'2023-12-04 13:27:15'),
(378,	'raysadmin@gmail.com',	'Admin',	NULL,	'110.227.52.99',	'Chrome 119.0.0.0, Windows 10',	'2023-12-04 21:31:46'),
(379,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.61.165.185',	'Chrome 119.0.0.0, Windows 10',	'2023-12-05 09:48:08'),
(380,	'raysadmin@gmail.com',	'Admin',	NULL,	'171.79.38.173',	'Chrome 120.0.0.0, Windows 10',	'2023-12-12 23:37:42'),
(381,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.212.173.45',	'Chrome 120.0.0.0, Windows 10',	'2023-12-28 19:49:47'),
(382,	'raysadmin@gmail.com',	'Admin',	NULL,	'103.197.132.90',	'Opera 106.0.0.0, Windows 10',	'2024-01-12 05:42:48'),
(383,	'raysadmin@gmail.com',	'Admin',	NULL,	'106.214.42.156',	'Chrome 120.0.0.0, Windows 10',	'2024-01-12 13:13:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1,	1,	'std1',	'1xxb72',	'',	'student',	'',	0,	'yes',	'2022-07-18 10:14:42',	NULL),
(2,	0,	'parent1',	'shn1q7',	'1',	'parent',	'',	0,	'yes',	'2022-07-18 10:14:42',	NULL),
(3,	2,	'std2',	'qmqxhs',	'',	'student',	'',	0,	'yes',	'2023-09-22 10:35:46',	NULL),
(4,	0,	'parent2',	'iz4wti',	'2',	'parent',	'',	0,	'yes',	'2023-09-22 10:35:46',	NULL),
(5,	3,	'std3',	'23rxa3',	'',	'student',	'',	0,	'yes',	'2023-09-22 10:55:30',	NULL),
(6,	0,	'parent3',	'd75szu',	'3',	'parent',	'',	0,	'yes',	'2023-09-22 10:55:30',	NULL),
(7,	4,	'std4',	'cys99v',	'',	'student',	'',	0,	'yes',	'2023-09-22 10:57:05',	NULL),
(8,	0,	'parent4',	'ro47lo',	'4',	'parent',	'',	0,	'yes',	'2023-09-22 10:57:05',	NULL),
(9,	5,	'std5',	'q92r32',	'',	'student',	'',	0,	'yes',	'2023-09-22 11:01:08',	NULL),
(10,	0,	'parent5',	'ebhz0t',	'5',	'parent',	'',	0,	'yes',	'2023-09-22 11:01:08',	NULL),
(11,	6,	'std6',	'y0x4lf',	'',	'student',	'',	0,	'yes',	'2023-09-22 11:09:32',	NULL),
(12,	0,	'parent6',	'geh2ve',	'6',	'parent',	'',	0,	'yes',	'2023-09-22 11:09:32',	NULL),
(13,	7,	'std7',	'ovy04z',	'',	'student',	'',	0,	'yes',	'2023-09-22 11:11:06',	NULL),
(14,	0,	'parent7',	'dvppdj',	'7',	'parent',	'',	0,	'yes',	'2023-09-22 11:11:06',	NULL),
(15,	8,	'std8',	'qrc32e',	'',	'student',	'',	0,	'yes',	'2023-09-22 13:03:10',	NULL),
(16,	0,	'parent8',	'ma072p',	'8',	'parent',	'',	0,	'yes',	'2023-09-22 13:03:10',	NULL),
(17,	9,	'std9',	'isd7hf',	'',	'student',	'',	0,	'yes',	'2023-10-18 12:50:53',	NULL),
(18,	0,	'parent9',	'wvq0a1',	'9',	'parent',	'',	0,	'yes',	'2023-10-18 12:50:53',	NULL),
(19,	10,	'std10',	'vhaitf',	'',	'student',	'',	0,	'yes',	'2023-10-20 08:14:49',	NULL),
(20,	0,	'parent10',	'kejt29',	'10',	'parent',	'',	0,	'yes',	'2023-10-20 08:14:49',	NULL),
(21,	11,	'std11',	'4r57mk',	'',	'student',	'',	0,	'yes',	'2023-10-27 12:16:31',	NULL),
(22,	0,	'parent11',	'5e1ozh',	'11',	'parent',	'',	0,	'yes',	'2023-10-27 12:16:31',	NULL),
(23,	12,	'std12',	'7jphwp',	'',	'student',	'',	0,	'yes',	'2023-10-27 12:38:38',	NULL),
(24,	0,	'parent12',	'qupuho',	'12',	'parent',	'',	0,	'yes',	'2023-10-27 12:38:38',	NULL),
(25,	13,	'std13',	'swnj8k',	'',	'student',	'',	0,	'yes',	'2023-10-31 08:36:44',	NULL),
(26,	0,	'parent13',	'fdt4y9',	'13',	'parent',	'',	0,	'yes',	'2023-10-31 08:36:44',	NULL),
(27,	14,	'std14',	'to9jbv',	'',	'student',	'',	0,	'yes',	'2023-10-31 08:37:41',	NULL),
(28,	0,	'parent14',	'fhk003',	'14',	'parent',	'',	0,	'yes',	'2023-10-31 08:37:41',	NULL),
(29,	15,	'std15',	'pyraxy',	'',	'student',	'',	0,	'yes',	'2023-11-06 09:51:42',	NULL),
(30,	0,	'parent15',	'hlol0y',	'15',	'parent',	'',	0,	'yes',	'2023-11-06 09:51:42',	NULL),
(31,	16,	'std16',	'qx8tc2',	'',	'student',	'',	0,	'yes',	'2023-11-21 13:23:33',	NULL),
(32,	0,	'parent16',	'zjk7mz',	'16',	'parent',	'',	0,	'yes',	'2023-11-21 13:23:33',	NULL),
(33,	17,	'std17',	'qzc829',	'',	'student',	'',	0,	'yes',	'2023-11-26 11:02:00',	NULL),
(34,	0,	'parent17',	'8ocki8',	'17',	'parent',	'',	0,	'yes',	'2023-11-26 11:02:00',	NULL),
(35,	18,	'std18',	'0c0icx',	'',	'student',	'',	0,	'yes',	'2023-11-26 11:47:49',	NULL),
(36,	0,	'parent18',	'boofvh',	'18',	'parent',	'',	0,	'yes',	'2023-11-26 11:47:49',	NULL);

DROP TABLE IF EXISTS `users_authentication`;
CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES
(1,	'abc123',	'test',	NULL,	'',	'',	'',	'',	'2023-10-26 08:06:22');

DROP TABLE IF EXISTS `vehicle_routes`;
CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES
(1,	2,	1,	'2023-11-04 09:25:58');

DROP TABLE IF EXISTS `visitors_book`;
CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `visitors_purpose`;
CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2024-01-12 13:13:39
