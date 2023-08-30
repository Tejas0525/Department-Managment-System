-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 12:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--Database: `E&TC Department`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(1, 'HOD', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `year` text NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`co_id`, `course_code`, `name`, `type`, `year`, `credit`) VALUES
(1, '304181', 'Digital Comunnication', 'Theory', '3-1', 3),
(80, '304182', 'Electromagnetic Field Theory', 'Theory', '3-1', 4),
(81, '304183', 'Database Management ', 'Theory', '3-1', 3),
(82, '304184', 'Microcontrollers', 'Theory', '3-1', 3),
(83, '304185', 'Elective-I', 'Theory', '3-1', 3),
(84, '304186', 'Digital Comunnication Lab', 'Lab', '3-1', 1),
(85, '304187', 'Database Management Lab', 'Lab', '3-1', 1),
(86, '304188', 'Microcontroller Lab', 'Lab', '3-1', 1),
(87, '304189', 'Elective-I Lab', 'Lab', '3-1', 1),
(88, '304190', 'Skill Development ', 'Theory', '3-1', 1),
(89, '304191A', 'Mandatory Audit Course 5', 'Theory', '3-1', 0),
(90, '107001', 'Engineering Mathematics-I', 'Theory', '1-1', 4),
(91, '107002/107009', 'Enigneering Physics/ Engineering Chemestry', 'Theory', '1-1', 5),
(92, '102003', 'System in Mechanical Engineering', 'Theory', '1-1', 4),
(93, '103004/104010', 'Basic Electrical Engineering/ Basic Electronic Engineering', 'Theory', '1-1', 4),
(94, '110005/101011', 'Programming & Problem Solving/ Engineering Mechanics', 'Theory', '1-1', 4),
(95, '111006', 'Workshop', 'Lab', '1-1', 1),
(96, '101007', 'Audit Course 1', 'Theory', '1-1', 0),
(97, '107008', 'Engineering Mathematics-II', 'Theory', '1-2', 5),
(98, '107002/107009', 'Enigneering Physics/ Engineering Chemestry', 'Theory', '1-2', 5),
(99, '103004/104010', 'Basic Electrical Engineering/ Basic Electronic Engineering', 'Theory', '1-2', 4),
(100, '110005/101011', 'Programming & Problem Solving/ Engineering Mechanics', 'Theory', '1-2', 4),
(101, '102012', 'Engineering Graphics', 'Theory', '1-2', 2),
(102, '110013', 'Project Based Learning', 'Lab', '1-2', 2),
(103, '101014/107015', 'Audit Course 2', 'Theory', '1-2', 0),
(104, '304192', 'Cellular Networks', 'Theory', '3-2', 3),
(105, '304193', 'Project Management', 'Theory', '3-2', 3),
(106, '304194', 'Power Devices & Circuits', 'Theory', '3-2', 3),
(107, '304195', 'Elective-II', 'Theory', '3-2', 3),
(108, '304196', 'Cellular Networks Lab', 'Theory', '1-1', 1),
(109, '304197', 'Power Devices & Circuits Lab', 'Lab', '3-2', 1),
(110, '304198', 'Elective-II Lab', 'Lab', '3-2', 1),
(111, '304199', 'Internship', 'Lab', '3-2', 4),
(112, '304200', 'Mini Project', 'Lab', '3-2', 2),
(113, '304191B', 'Mandatory Audit Course 6', 'Theory', '3-2', 0),
(114, '204191', 'Siggnals & System ', 'Theory', '2-2', 4),
(115, '204192', 'Control System', 'Theory', '2-2', 3),
(116, '204193', 'Principles of Communication System', 'Theory', '2-2', 3),
(117, '204194', 'Object Oriented Programming', 'Theory', '2-2', 3),
(118, '204195', 'Signal & Control System Lab', 'Lab', '2-2', 1),
(119, '204196', 'Principles of Communication System Lab', 'Lab', '2-2', 1),
(120, '204197', 'Object Oriented Programming Lab', 'Lab', '2-2', 1),
(121, '204198', 'Data Analytics Lab', 'Lab', '2-2', 1),
(122, '204199', 'Employability Skill Development ', 'Lab', '2-2', 3),
(123, '204200', 'Project Based Learning', 'Lab', '2-2', 2),
(124, '204201', 'Mandatory Audit Course 4', 'Theory', '2-2', 0),
(125, '207005', ' Engineering Mathematics-III', 'Theory', '2-1', 5),
(126, '204181', 'Electronic Circuits ', 'Theory', '2-1', 3),
(127, '204182', 'Digital Circuits', 'Theory', '2-1', 3),
(128, '204183', 'Electrical Circuits', 'Theory', '2-1', 3),
(129, '204184', 'Data structures ', 'Theory', '2-1', 3),
(130, '204185', 'Electronic Circuit Lab', 'Lab', '2-1', 1),
(131, '204186', 'Digital circuits Lab', 'Lab', '2-1', 1),
(132, '204187', '204187', 'Lab', '2-1', 1),
(133, '204188', 'Data Structures Lab', 'Lab', '2-1', 1),
(134, '204189', 'Electronic Skill Development', 'Lab', '2-1', 1),
(135, '204190', 'Mandatory Audit Course 3', 'Theory', '2-1', 0),
(136, '404181', ' Radiation & Microwave Theory', 'Theory', '4-1', 3),
(137, '404182', 'VLSI Design and Technology', 'Theory', '4-1', 3),
(138, '404183', 'Cloud Computing', 'Theory', '4-1', 3),
(139, '404184', 'Elective - 3', 'Theory', '4-1', 3),
(140, '404185', 'Elective - 4', 'Theory', '4-1', 3),
(141, '404186', '6 Lab Practice - 1 (RMT & Cloud Computing)', 'Lab', '4-1', 2),
(142, '404187', 'Lab Practice - 2  (VLSI Design & Elective -3)', 'Lab', '4-1', 2),
(143, '404188', 'Project Stage - I', 'Lab', '4-1', 1),
(144, '404189', 'Mandatory Audit Course 7 ', 'Theory', '4-1', 0),
(145, '404190', 'Fiber Optic Communication', 'Theory', '4-2', 3),
(146, '404191 ', 'Elective - 5', 'Theory', '4-2', 3),
(147, '404192', 'Elective - 6', 'Theory', '4-2', 3),
(148, '404193', '404193', 'Theory', '4-2', 2),
(149, '404194 ', 'Digital Business Management', 'Theory', '4-2', 2),
(150, '404195', 'Fiber Optic Lab', 'Lab', '4-2', 1),
(151, '404196', ' Lab Practice - 3 (Elective - 5)', 'Lab', '4-2', 1),
(152, '404197', 'Project Stage - II', 'Lab', '4-2', 5),
-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE IF NOT EXISTS `hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(255) NOT NULL,
  `provost_name` varchar(50) NOT NULL,
  `capability` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `hall_name`, `provost_name`, `capability`) VALUES
(1, 'Seminal Hall', 'Mr.P.C.Jagtap', '150'),
(2,'Common Room','Mr.P.C.Jagtap','150'),

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `message`, `time`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `roll` int(15) NOT NULL,
  `individual_result` text NOT NULL,
  `total_result` double NOT NULL,
  `grade` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `session`, `year`, `semester`, `roll`, `individual_result`, `total_result`, `grade`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `room_type` text NOT NULL,
  `room_capacity` int(11) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `room_no` (`room_no`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_name`, `room_type`, `room_capacity`) VALUES
(1, 119, 'TE Class', 'Theory', 80),
(2, 120, 'SE Class', 'Theory', 80),

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` text NOT NULL,
  `year` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `type` text NOT NULL,
  `course_code` int(11) NOT NULL,
  `time` text NOT NULL,
  `teacher_id` text NOT NULL,
  `room_no` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`r_id`, `day`, `year`, `session`, `type`, `course_code`, `time`, `teacher_id`, `room_no`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `hall_id` int(10) DEFAULT NULL,
  `gpa` double DEFAULT NULL,
  PRIMARY KEY (`s_id`,`roll`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `roll`, `session`, `year`, `hall_id`, `gpa`) VALUES
(1, 'Tejas Rajendra Patil', '55', '2022-23', 'TE', 0, 0),

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `ssc_gpa` double NOT NULL,
  `hsc_gpa` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `Present_address`, `permanent_address`, `fathers_name`, `mothers_name`, `mobile`, `ssc_gpa`, `hsc_gpa`) VALUES
(1, 'Sinhgad Purandar Boys Hostel', 'Jalgaon', 'Rajendra', 'Hemlata', '9158084406', 70.20, 61.40),

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `qualification` text NOT NULL,
  `course` varchar(255) NOT NULL,
  `research` text NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `name`, `type`, `qualification`, `course`, `research`, `status`) VALUES
(1, 'Dr.Makarand M.Jadhav', 'HOD', 'M.E.,Ph.D(E&TC)', 'Data Science,Wireless Communication,Optimization  Techniques', '-', 'Present'),
(2, 'Mr.S.D.Sawant', 'Asst.Prof.', 'M.Tech', 'Wireless Sensor Network & IOT,Power Electronics,Devices & Circuits,Green Technology', 'Lab', 'Present'),
(3,'Mr.S.Y.Tamboli','Asst. Prof.','M.E','Robotics,Automation & Mechatronics,Basic Electronics Engineering','Lab','Present'),
(4,'Mrs.S.M.Jog','Asst. Prof.','M.E','Virtual  & Augmented Reality,Java Programming,Artificial Intelligence','Lab','Present'),
(5,'Mr.K.B.Kharat','Asst. Prof.','M.E,Ph.D(Pursuing)','Block Chain Technology,5G Antenna Design,Electromagnetic Theory','Lab','Present'),
(6,'Mr.H.N.Lokhande','Asst. Prof.','M.E ,Ph.D(Pursuing)','Artificial Intelligence & Machine Learning,Data Structures,Cloud Computing','Lab','Leaved'),
(7,'Mrs.R.S.Mule','Asst.Prof','M.E','Digital Systems & Computer Architecture,Cyber Security','Lab','Present'),
(8,'Ms.S.P.Deshmukh','Asst.Prof.','M.E, Ph.D(Pursuing)','VLSI & Material Science,Digital Systems,Soft Computing','Lab','Present'),
(9,'Mrs.U.J.Suryawanshi','Asst.Prof.','M.E','Cyber Security,Data Structures,Data Base Management Systems','Lab','Present'),
(10,'Mrs.G.P.Brahmankar','Asst.Prof.','M.E','Wired&  Wireless  Communication,Smart Communication Technology,Mechatronics','Lab','Present'),
(11,'Mr.Brijeshkumar Yadav','Asst.Prof.','M.E','Digital Communication','Lab','Present'),
(12,'Mrs.Urvashi Bhat','Asst.Prof.','M.E','Artificial Intelligence & Machine Learning','Lab','Present'),
(13,'Mrs.C.H.Khairnar','Asst.Prof.','M.E','Embedded System Design,Cloud Computing','Lab','Present'),


-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE IF NOT EXISTS `teacher_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`id`, `user_name`, `password`) VALUES
(1, 'gpb@nbnstic', 1234),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `age` varchar(20) NOT NULL,
  `roll_number` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `cgpa` double DEFAULT NULL,
  `hall` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `fathers_name`, `mothers_name`, `present_address`, `permanent_address`, `age`, `roll_number`, `session`, `year`, `cgpa`, `hall`, `image`) VALUES
(17, 'Tejas Patil', 'tp07474@gmail.com', '1234', 'Rajendra', 'Hemlata', 'Sinhgad Purandar Boys Hostel', 'Jalgaon', '20', '55', '2022-23', 'TE', 0, ' ', 'pics/tp07474@gmail.com.jpg'),


--
--Table structure for table 'library'
--

CREATE TABLE IF NOT EXISTS 'library' (
  'id' int(11)NOT NULL AUTO_INCREMENT,
  'accession_no' varchar(255)NOT NULL,
  'title' VARCHAR(255)NOT NULL,
  'author'VARCHAR(255)NOT NULL,
  'publication'VARCHAR(255)NOT NULL,
  'status'VARCHAR(255)NOT NULL,
  UNIQUE KEY'id'('id'),
  KEY'accession_no'('accession_no'),
)ENGINE=InnoDB  DEFAULT CHARSET=latin AUTO_INCREMENT=29 ;

--
--Dumping data for table 'library'
--

INSERT INTO'library'('id','accession_no','title','author','publication','status')VALUES
(1, 'DL-01', 'Power Electronics', 'P.C.Sen', 'MccGraw Hill Edu. Pvt. Ltd.', 'Avaliable'),
(2, 'DL-02', 'Informaton Theory and Coding Tech', 'G.R.Patil', 'Nirali Prakashan', 'Avaliable '),
(3, 'DL- 03', 'Antenna & Wave Propagation', 'Dr.Sachin Ruikar ', 'Nirali Prakashan', 'Available'),
(4, 'DL-04', 'Power Electronics', 'Singh Kanchandani', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(5, 'DL-05', 'Power Electronics', 'V.K.Moorthi', 'Oxford', 'Available'),
(6, 'DL-06', 'Linear Integrated Circuits', 'D.Roy Choudhury , Shali B.Jain', 'New Age International Publication', 'Available'),
(7, 'DL-07', 'Modern Television Practice', 'R.R.Gulati', 'New Age International Publication', 'Available'),
(8, 'DL-08', 'System Programming ', 'John J.Donovan', 'Tata MccGraw Hill', 'Available'),
(9, 'DL-09', 'Let Us C', 'Yashvant Kanetkar', 'BPB Publication', 'Available'),
(10, 'DL-10', 'A Monograph On Electronics Design Principal', 'N.C.Goyal, R.R.Khetan', 'Khanna Publication', 'Available'),
(11, 'Dl-11', 'Microwave & Engineering', 'M.Kulkarni', 'Umesh Publication', 'Available'),
(12, 'Dl-12', 'Active Server Pages 3.0', 'SAMS', 'Tech Media', 'Available'),
(13, 'DL-13', 'Electronics Device & Circuits ', 'Shalivahan , Suresh Kumar', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(14, 'DL-14', 'Elements Of Power Electronics', 'Krein', 'Oxford', 'Available'),
(15, 'DL-15', 'Circuit Theory', 'A.Chakrabharti', 'Dhanpatrai Publication', 'Available'),
(16, 'DL-16', 'Electronics Devices & Circuits ', 'Devid A.Bell', 'Oxford', 'Available'),
(17, 'Dl-17', 'Electronics & Communication Engineering', 'J.B.Gupta', 'Kataria Publication', 'Available'),
(18, 'DL-18', 'Electronic Devices & Circuits ', 'David A.Bell', 'Oxford', 'Available'),
(19, 'DL-19', 'Power Electronics', 'Joseph Vithayathil', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(20, 'DL-20', 'OP Amp & Integrated Circuits', 'James M.Fiore', 'Cegage Learning', 'Available'),
(21, 'DL-21', 'Electronics & Electrical Measurements & Instruments', 'J.B.Gupta ', 'Kataria Publication', 'Available'),
(22, 'DL-22', 'Monocrom & Colour Television', 'R.R.Gulati', 'New Age Internashnal Publication', 'Available'),
(23, 'DL-23', 'Electronics Device & Circuits', 'S.K.Sahadev', 'Dhanpatrai Publication', 'Not available '),
(24, 'DL-24', 'Electromagnetics And Trasmission Lines', 'R.A.Barapate', 'Tech-Max Publication', 'Available'),
(25, 'DL-25', 'System Programming & Operating System', 'D.M.Dhamdere', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(26, 'DL-26', 'Power Electronics', 'Daniel W.Hart', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(27, 'Dl-27', 'Integrated Circuits', 'K.R.Botkar', 'Khanna Publication', 'Not available '),
(28, 'DL-28', 'Projects Using C', 'PVN. Varalashmi', 'Scitech Publication', 'Available'),
(29, 'DL-29', 'Introductory VHDL From Simulation to Synthesis', 'Sudhakar yalmanchili', 'Persan Education', 'Available'),
(30, 'DL-30', 'Digital Signal Processing', 'John G.Proakis, Dimitris G.Monalakis', 'PHI Publication', 'Available'),
(31, 'DL-31', 'Visual Basic 6 Desktop Application', 'Syngress', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(32, 'DL-32', 'Electronic Devices & Circuits ', 'Jacob Millman , Christon C.Halkies', 'Tata MccGraw Hill', 'Available'),
(33, 'DL-33', 'Jakatra Strusts 1.1', 'Jems Goodwill, Richard Hightower', 'Wiley Publication', 'Available'),
(34, 'DL-34', 'Using Assembly Language', 'Wyatt ', 'Micro Tech Publication', 'Available'),
(35, 'DL-35', 'Modern Digital Electronics', 'R.P.Jan', 'Tata MccGraw Hill', 'Available'),
(36, 'DL-36', 'SQL PL/SQL', 'Ivan Bygross', 'BPB Publication', 'Available'),
(37, 'DL-37', 'Understanding Pointer in C', 'Yashvant Kanetkar', 'BPB Publication', 'Available'),
(38, 'DL-38', 'Computer Organization', 'V.Carl Hamacher, Z.Vanko G.Vranesic,Safwant G.Zaky ', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(39, 'DL-39', 'Java 2 Platform', 'SAMS', 'Tech Media', 'Available'),
(40, 'DL-4 ', 'Java Script 1.3', 'SAMS', 'Tech Media', 'Available'),
(41, 'DL-41', 'Java 2: The Complete Refrence', 'Herbert Schildt', 'Tata MccGraw Hill', 'Available'),
(42, 'DL-42', 'Head First Servelets & JSP', 'Bryan Bashma, Kathy Serria & Bert Beats', 'Shorff Publication', 'Available'),
(43, 'DL-43', 'Unix Concepts & Applications', 'Sumitabha Das', 'Tata MccGraw Hill', 'Available'),
(44, 'DL-44', 'HTML-4', 'SAMS', 'Tech Media', 'Available'),
(45, 'DL-45', 'The C Programming Language(Ansi- C version)', 'brain W.Kernighan, Dennis M.Ritchee', 'Prentice Hall Of India', 'Available'),
(46, 'DL-46', 'Visual C++ 5', 'Mickey Villiams', 'Tech Media', 'Available'),
(47, 'DL-47', 'Electronics Communication System', 'Kenedy,Davis', 'Tata MccGraw Hill', 'Available'),
(48, 'DL-48', 'Quantitative Aptitude ', 'R.S.Aggrawal', 'S.Chand & Company Ltd.', 'Available'),
(49, 'DL-49', 'Mental Ability & Quantitative Aptitude', 'Edgar Thorpe', 'Tata MccGraw Hill', 'Available'),
(50, 'DL-50', 'Analog Sysytem Lab Manual', 'Dr.K.R.K.Rao, Dr.C.P.Ravikumar', 'Wiley Publication', 'Available'),
(51, 'DL-51', 'Programming In C ', 'Stephen G.Kochan', 'CBS Publication', 'Available'),
(52, 'DL-52', 'Circuits & Systems', 'Dr.K.M.Soni', 'S.K.Katriya & Sons', 'Available'),
(53, 'DL-32', 'Electronic Principal', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(54, 'DL-54', 'Data Structures Using C', 'Udit Agrawal', 'S.K.Katriya & Sons', 'Available'),
(55, 'DL-55', 'Digital Electronics & Logic Design', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(56, 'DL-56', 'Communication System (Analog & Digital)', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(57, 'DL-57', 'Digital Cmmunications', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(58, 'DL-58', 'Analog Commuication System', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(59, 'DL-59', 'Wireless & Cellular Communication', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(60, 'DL-60', 'Digital Signal Processing ', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(61, 'DL-61', 'Mobile Computing', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(62, 'DL-62', 'Probability Random Variables & Sctochastic Method', 'Himanshu Chaurasiya, Dr.K.M.Soni', 'S.K.Katriya & Sons', 'Available'),
(63, 'DL-63', 'Electronics & Communication Engineering ', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(64, 'DL-64', 'Electrical & Electronics Measurements & Instrumentation ', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(65, 'DL-65', 'Electronics & Communication Engineering ', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(66, 'DL-66', 'Data Structure Using C ', 'Udit Agrawal', 'S.K.Katriya & Sons', 'Available'),
(67, 'DL-67', 'VHDL Programming by Examples', 'Douglus Perry', 'Tata MccGraw Hill', 'Not Available'),
(68, 'DL-68', 'Data communications & Computer Networks', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(69, 'DL-69', 'Communication System (Analog & Digital)', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(70, 'DL70', 'Engineering Your Success ', 'Vidyalankar', 'Vidyalankar', 'Available'),
(71, 'DL-71', 'Engineering  Your Success (General Aptitude & Verbal Ability)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(72, 'DL-72', 'Engineering Your Success (General Aptitude & Numerical Ability)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(73, 'DL-73', 'Engineering Your Success (General Aptitude & Quantitative Ability)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(74, 'DL-74', 'Engineering Your Success (Compendium of Important Results & Foular)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(75, 'DL-75', 'Engineering Your Succcess( Engineering Mthematicas Module-II)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(76, 'DL-76', 'Engineering Your Success(Engineering Mathematics Modul-III)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(77, 'DL-77', 'Engineering your success(EC,IN module-VII,communication)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(78, 'DL-78', 'Engineering your success(EC,IN,EE modul-V,Signal & system)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(79, 'DL-79', 'Engineering your success(EC,IN,EE modul-VI,Control & system)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(80, 'DL-80', 'Engineering your success(EC,IN modul-VI,Analog Integrated circuit)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(81, 'DL-81', 'Engineering your success(GQ, Electronics & communication)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(82, 'DL-82', 'Engineering your success(EC module-III,Digital Circuits)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(83, 'DL-83', 'Engineering your success(EC module-II, Electronics Devices)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(84, 'DL-85', 'Engineering your success(Gate Home assignment, Electronics & communication)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(86, 'DL-86', 'Engineering your success(Electronics & communication ,Module 8:Electromagnetics)', 'Vidyalankar', 'Vidyalankar', 'Available'),
(87, 'DL-87', 'System programming and operating system', 'D.M.Dhamdere', 'Tata MccGraw Hill', 'Available'),
(88, 'DL-88', 'Electronics Communication system', 'George Kennedy', 'Tata MccGraw Hill', 'Available'),
(89, 'DL-89', 'Microwave Engineering', 'David M.Pozer', 'Wiley Publication', 'Available'),
(90, 'DL-90', 'Digital communications Fundamental & Applications', 'Barnard Sklar', 'Pearson Education Asia', 'Available'),
(91, 'DL-91', 'Network Analysis & Synthesis', 'P.V.Gupta, P.C.Dhar', 'Dhanpat Rai', 'Available'),
(92, 'DL-92', 'Guide to BSNL JTO', 'Rakesh Mittal', 'G.K.Publications ', 'Available'),
(93, 'DL-93', 'Quantitative Aptitute', 'R.S.Agarawal', 'S.Chand & Company Ltd.', 'Available'),
(94, 'DL-94', 'Digital Design Principal & Practice', 'Jhon F.Wakerly', 'Pearson Education Asia', 'Available'),
(95, 'DL-95', 'Measurements systems applications & design', 'Earnest O.Doebelin', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(96, 'DL-96', 'Computer Organization ', 'Zaky, Hamacher', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(97, 'DL-97', 'Basic elctronics', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(98, 'DL-98', 'Automatic control system', 'S.Hasan Saeed', 'S.K.Katriya & Sons', 'Available'),
(99, 'DL-99', 'C++ Handbook', 'SSI Lim.', '-', 'Available'),
(100, 'DL-100', 'Micropossesor Techniques', 'A.P.Godse', 'Tech-Max Publication', 'Available'),
(101, 'DL-101', 'Digital signal processing(with Matlab Programing)', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(102, 'DL-102', 'Power elctronics', 'Singh Kanchandani', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(103, 'DL-103', 'Go Embeded', 'A.Dani , Yashvant kanetkar', 'BPB Publication', 'Available'),
(104, 'DL-104', 'Microcontroller based projects', '-', 'EFY Group', 'Available'),
(105, 'DL-105', 'Computer Networks', 'Andrew Tannenbaum ', 'Pearson Education Asia', 'Available'),
(106, 'DL-106', 'Digital communication', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(107, 'DL-107', 'Wireless and cellular communication', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(108, 'DL-108', 'Basic Electronics', 'Ravish Aradhya H.V', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(109, 'DL-109', 'Data communication and computer networks', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(110, 'DL-110', 'Principal of electronics', 'V.K.Mehata', 'S.Chand & Company Ltd.', 'Available'),
(111, 'DL-111', 'Communications systems(Analog & Digital)', 'Dr.Sanjay Sharma', 'S.K.Katriya & Sons', 'Available'),
(112, 'DL-112', 'Electronics devices circuits', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(113, 'DL-113', 'Question bank in Electronics & Communiction engineering', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(114, 'DL-114', 'AN integrated course in elctronics engineering', 'J.B.Gupta', 'S.K.Katriya & Sons', 'Available'),
(115, 'DL-115', 'Optical fiber communication', 'V.S.Bagad', 'Technical publication', 'Available'),
(116, 'DL-116', 'Telecommunication switching system', 'Jayashri Joshi', 'Tech-Max Publication', 'Available'),
(117, 'DL-117', 'VLSI design & technology', 'V.S.Bagad', 'Technical publication', 'Available'),
(118, 'DL-118', 'Embeded systems & RTOS', 'Deepa Pandit', 'Nirali Prakashan', 'Available'),
(119, 'DL-119', 'Wave theory & antenna', 'Sandeep wali', 'Tech-Max Publication', 'Available'),
(120, 'DL-120', 'Electroni Instrument Design', 'Kim R.Fowlor', 'Oxford Uni. press', 'Available'),
(121, 'DL-121', 'System programing & operating system', 'I.A.Dhotre, A.A.Puntambekar', 'Tech-Max Publication', 'Available'),
(122, 'DL-122', 'Gate 2002 Electronics & communication engineering(SET-1)', '-', 'Brilliant Tutorials ', 'Available'),
(123, 'DL-123', 'Gate 2002 Electronics & communication engineering(SET-2)', '-', 'Brilliant Tutorials ', 'Available'),
(124, 'DL-124', 'Network analysis & synthesis', 'Dr.R.M.Jalnekar, J.S.Chitode', 'Technical publication', 'Available'),
(125, 'DL-125', 'Automotive Electronics  ', 'Mahesh Navale,Valmik Giri, Pratik Chandwani', 'Tech Easy Publication', 'Available'),
(126, 'Dl-126', 'Wave theory & antenna ', 'Sandeep wali', 'Tech-Max Publication', 'Available'),
(127, 'DL-127', 'PLC & Automation', 'S.B.Jagtap, V.M.Sardar', 'Nirali Prakashan', 'Available'),
(128, 'DL-128', 'Integrated circuit & application', 'J.S.Katre', 'Tech-Max Publication', 'Available'),
(129, 'DL-129', 'Signal conditioning & estimation theory', 'Patil-Jaiswal', 'Nirali Prakashan', 'Available'),
(130, 'DL-130', 'Industrial managment', 'B.V.Pathak.', 'Nirali Prakashan', 'Available'),
(131, 'DL-131', 'Communication Skills For Engineering', 'C.Murlikrishnana, Sanita Mishra', 'Pearson Education India', 'Available'),
(132, 'DL-132', 'Peripheral components -Intel Handbook', 'B.V.Pathak.', 'Nirali Prakashan', 'Available'),
(133, 'DL-133', 'Fundamental of microcontroller & applications in embeded system (with PIC18 microcontroller family)', 'Ramesh Goonkar', 'Penram International Publishing(India) Pvt. Ltd.', 'Available'),
(134, 'DL-134', 'Fields & wave in communication electronics', 'Simon ramo, John R.Whinnery Theodore Van Duzer', 'John Willey & sons (SEA)', 'Available'),
(135, 'DL-135', 'Electromagnetic wave & radiating system', 'Eduard C.Jordan', 'Patience Hall India', 'Available'),
(136, 'DL-136', 'Electromagnetics', 'John D.Kraus', 'MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(137, 'DL-137', 'Electronic circuits:Disourte & integrated', '-', '-', 'Available'),
(138, 'DL-138', 'Circuit theory', 'Umesh Sinha', 'Satya Prakashan', 'Available'),
(139, 'DL-139', 'Elements of engineering electromagnetics', 'Nannapenni Narayan Rao', 'Prentice Hall Of India', 'Available'),
(140, 'DL-140', 'Theory & problems of electromagnetics 2/ed', 'Joseph A.Eolministon', 'International Edition', 'Available'),
(141, 'DL-141', 'Electromagnetics', 'S.L.Chavan', 'Tech Easy Publication', 'Available'),
(142, 'DL-142', 'Electromagnetic Field Theory', 'S.P.Ghosh, Lijuka Dutta', 'Tata MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(143, 'DL-143', 'Electromagnetic Field', 'T.V.S Arun Murthy', 'S.Chand & Company Ltd.', 'Available'),
(144, 'DL-144', 'Engineering electromagnetics', 'W.H.Hayt, J.A.Buck', 'Tata MccGraw Hill', 'Available'),
(145, 'DL-145', 'Electromagnetic Fields', 'K.B.Madhu Shahu', 'Scitech Publication', 'Available'),
(146, 'DL-146', 'Introduction to elctromagnetic field', 'Claython R.Paul, Keith W.Whites, Syed A.Nasar', 'WCB/MccGraw Hill', 'Available'),
(148, 'DL-148', 'Introduction to Radar system', 'Mooull I.Skolnik', 'MccGraw Hill Book', 'Available'),
(149, 'DL-149', 'Probability,Random variables & Random prcessess', 'HWEI.P.HSU', 'Tata MccGraw Hill', 'Available'),
(150, 'DL-150', 'Network,Lines & Field', 'John D.Ryder', 'Asia Publishing House', 'Available'),
(151, 'DL-151', 'Electromagnetic theory ', 'P.P.Gupta ', 'Krushna prakashan', 'Available'),
(152, 'DL-152', 'Brilliant Jigars', '-', 'Technical publication', 'Available'),
(153, 'DL-153', 'Electromagnetics', 'S.D.Ruikar , R.B.Kakkeri, V.K.Karra', 'Nirali Prakashan', 'Available'),
(154, 'DL-154', 'Electromagnetic Engineering', 'G.K.Kharate, S.S.Narkhede', 'Technical publication', 'Available'),
(155, 'DL-155', 'Electromagnetic field theory', 'H.Parthrarthy', 'I.K.Internet Pvt. Ltd.', 'Available'),
(156, 'DL-156', 'Electromagnetic filed and wave', 'Paul Lorain , Dale carson', 'CBS Publisher & Distributers', 'Available'),
(157, 'DL-157', 'The structure & properties of matouls', 'Robert.M.Rose ,Lawrence.A.Shepherd, John wauff', 'wiley estern Pvt. Ltd.', 'Available'),
(158, 'DL-158', 'Electromagnetics', 'S.L.Chavan', 'Tech Easy Publication', 'Available'),
(159, 'DL-159', 'Electromagnetics', 'S.D.Ruikar , R.B.Kakkeri, V.K.Karra', 'Nirali Prakashan', 'Available'),
(160, 'DL-160', 'Electromagnetics', 'S.D.Ruikar , R.B.Kakkeri, V.K.Karra', 'Nirali Prakashan', 'Available'),
(161, 'DL-161', 'Electromagnetic field & wave', 'v.v.sarvate', 'wiley estern Pvt. Ltd.', 'Available'),
(162, 'DL-162', 'Microwave engineering', 'A.K.Gautam', 'S.K.Katriya & Sons', 'Available'),
(163, 'DL-163', 'Fundamentals of electromagnetic field ', 'A.U.Tinguria', 'Denetl & Co.', 'Available'),
(164, 'DL-164', 'Introduction to electromagnetics', 'K.K.Shah', 'Dhanpatrai Publication', 'Available'),
(165, 'DL-165', 'Electronics communication-II', 'R.A.Borapte', 'Technova', 'Available'),
(166, 'DL-166', 'The structure & properties of matouals', 'Wiliam.G.Motfatt,George.W.Pearson,john wulff', 'wiley estern Pvt. Ltd.', 'Available'),
(167, 'DL-167', 'Statistical & quantitative methods', 'Ranjeet Chitale', 'Nirali Prakashan', 'Available'),
(168, 'DL-168', 'Optical communication', 'Anusaya Kalavre', 'Tech-Max Publication', 'Available'),
(169, 'DL-169', 'Communication System-II', 'J.S.Chitode', 'Nirali Prakashan/Technical Prakashan', 'Available'),
(170, 'DL-170', 'The world of satellite TV', 'Mark long & Jeffrey keating', 'MLE INC', 'Available'),
(171, 'DL-171', 'Electronics analog & digital', 'I.J.Nagrath', 'Prentice Hall Of India', 'Available'),
(172, 'DL-172', 'Problems & solutions in electronics & comminication engineering', 'S.Ramanhardran', 'Satya Prakashan', 'Available'),
(173, 'DL-173', 'Principal of communication system', 'Herlert Taub,Denald.L.Sehilling', 'Tata MccGraw Hill', 'Available'),
(174, 'DL-174', 'Electronic communication(Third edition)', 'Dennis Roddy,John coolen', 'Prentice Hall Of India', 'Available'),
(175, 'DL-175', 'Digital communication', 'J.S.Katre', 'Tech-Max Publication', 'Available'),
(176, 'DL-176', 'Introduction to probability & statistics for engineers & scientists ', 'Shedon.M.Roes', 'Elsevier', 'Available'),
(177, 'DL-177', 'Solid wave microwave devices & applications', 'A.K.Kamal', 'Khanna Publication', 'Available'),
(178, 'DL-178', 'Transistors', 'Dennis Le, Croissetle', 'Prentice Hall Of India', 'Available'),
(179, 'DL-179', 'Pragati-Perfect guide to power electronics', 'Prof.Joshi,Prof.Kulkarni', 'Pragati publication', 'Available'),
(180, 'DL-180', 'Introduction to system analysis', 'T.H.Glisson', 'MccGraw Hill Book', 'Available'),
(181, 'DL-181', 'Neteork synthesis & flutter design', 'P.V.Bhat,S.D.Ruikar, M.V.Munot, Vijaykumar karra', 'Nirali Prakashan', 'Available'),
(182, 'DL-182', 'Modern control engineering', 'Katsuhiko ogata', 'Patience Hall India', 'Available'),
(183, 'DL-183', 'Introduction to system analysis', 'T.H.Glisson', 'MccGraw Hill Book', 'Available'),
(184, 'DL-184', 'Signals & system', 'I.I.Nagrath,N.S.Sharan,Rakesh Ranjan,Sukhlinder kumar', 'Tata MccGraw Hill', 'Available'),
(185, 'DL-185', 'Signal & system', 'P.Ramesh Babu,R.Ananda,Natarajan', 'satech Publication(India)Pvt. Ltd.', 'Available'),
(186, 'DL-186', 'Electromagnetic wave & radiating system', 'R.A.Barapate', 'Tech-Max Publication', 'Available'),
(187, 'DL-187', 'Electromagnetic Engineering ', 'R.A.Barapate', 'Tech-Max Publication', 'Available'),
(189, 'DL-189', 'Engineering electromagnetics', 'William.H.Hayt,JR', 'MccGraw Hill Book ', 'Available'),
(190, 'DL-190', 'Network Analysis & Synthesis', 'Franklin.F.Kuo', 'John Willey & sons ', 'Available'),
(191, 'DL-191', 'Network & Lines', 'P.V.Bhat', 'Nirali Prakashan', 'Available'),
(192, 'DL-192', 'Instrumentation & process control', '-', 'Pragati Books Pvt. Ltd.', 'Available'),
(193, 'DL-193', 'Networks theory analysis & synthesis', 'S.Satyanarayana ', 'Technical publication', 'Available'),
(194, 'DL-194', 'Electronics devices & circuit-I(Dec-98 to May-2002)', '-', 'Technical publication/Pragati Books', 'Available'),
(195, 'DL-195', 'Signal & systems', 'M.J.Roberts', 'MccGraw Hill Book', 'Available'),
(196, 'DL-196', 'Signal & system(Continuos & Disoute)', 'Rodger.E.Zeimor, William.H.Tranten,D.Ronald Fannin', 'McMillan Publishing Collier MacMillan Publishers /Tata MccGraw Hill', 'Available'),
(197, 'DL-197', 'System Modelling & Analysis', 'I.J.Nagrath,M.Gopal', 'Tata MccGraw Hill', 'Available'),
(198, 'DL-198', 'Control System', 'Naresh.K.Sinha', 'wiley estern Pvt. Ltd.', 'Available'),
(199, 'DL-199', 'Introduction to system analysis', 'T.H.Glisson', 'MccGraw Hill Book', 'Available'),
(200, 'DL-200', 'Signal & systems', 'J.S.Chitode', 'Technical publication', 'Available'),
(201, 'DL-201', 'Signal & Systems', 'R.A.Barapate', 'Technova Publication', 'Available'),
(202, 'DL-202', 'Signal & systems', 'Farooq Hussain', 'Umesh Publication', 'Available'),
(203, 'DL-203', 'Signal & systems', 'Dr.Y.Ravindra', 'Nirali Prakashan', 'Available'),
(204, 'DL-204', 'Signal & systems', 'J.B.Gurang', 'PHI Publication', 'Available'),
(205, 'DL-205', 'Signal & systems', 'Rodger.E.Zeimor, William.H.Tranten,D.Ronald Fannin', 'Pearson Education Asia', 'Available'),
(206, 'Dl-206', 'Fundamental of semi conductors devices', 'Joseph Lindmayar,Charlos.Y.Wruglay', 'Litton Educational Publishing Inc.', 'Available'),
(207, 'DL-208', 'Linear System analysis', 'A.N.Trupathi', 'wiley estern Pvt. Ltd.', 'Available'),
(209, 'DL-209', 'Solid State Physical Electronics', 'Aldert van der ziel', 'Prentice Hall Of India', 'Available'),
(210, 'DL-210', 'Microwave semi-conductor devices', 'H.V.Shurmer', 'Pitman Publishing', 'Available'),
(211, 'DL-211', 'Electronic Instrumentation ', 'S.K.Khedekar', 'Pune Vidyarthi Griha Prakashan', 'Available'),
(212, 'DL-212', 'The Atomic Nucleus', 'M.Korsunsky', 'Forien Languages Publishing House', 'Available'),
(213, 'DL-213', 'Elements of Electronics Engineering', 'P.V.Bhat,M.Raju', 'Technova Publication', 'Available'),
(214, 'DL-214', 'Probability,Random variable & Random signal principales', 'Peyton.Z.Peebles', 'MccGraw Hill Education', 'Available'),
(215, 'DL-215', 'Signal & systems', 'B.Kumar', 'New Age International Publication', 'Available'),
(216, 'DL-216', 'Linear Integrated Circuits ', 'U.A.Bokshi,A.P.Godse', 'Technical publication', 'Available'),
(217, 'DL-217', 'Signal & systems', 'Y.Ravinder,G.K.Kharate', 'Nirali Prakashan', 'Available'),
(218, 'DL-218', 'Principal of digital communication', 'Jacob Millman , Christon C.Halkies', 'wiley estern Pvt. Ltd.', 'Available'),
(220, 'DL-220', 'Signal & systems', 'D.D.Shah, A.C.Bhagali, H.L.Shashidar', 'Mahalaxmi Publishing House', 'Available'),
(221, 'DL-221', 'Summary of salmond s jwuisprudence', 'A.K.Sarkar', 'N.M.Trupathi Pvt.Ltd.', 'Available'),
(222, 'DL-222', 'Microwave & radar engineering', 'M.Kulkarni', 'Umesh Publication', 'Available'),
(223, 'DL-223', 'Jigars-Signals & system', '-', 'Technical publication', 'Available'),
(224, 'DL-224', 'Electronics communication', 'Dennis Roddy,John coolen', 'Reston Publishing Company ', 'Available'),
(225, 'DL-225', 'Communication System', 'B.P.Lathi', 'wiley estern Pvt. Ltd.', 'Available'),
(226, 'DL-226', 'Probability,statistics & random processes', 'T.Vera rajan', 'Tata MccGraw Hill', 'Available'),
(227, 'DL-227', 'Brilliant jigars feedback control system(Dec-92 - May-98)', '-', 'Technical Publication/Pragati Prakashan', 'Available'),
(229, 'DL-229', 'Elements of electronics engineering', 'G.K.Kharate, S.S.Narkhede', 'Golden Publication', 'Available'),
(231, 'DL-231', 'Digital signal processing', 'John.G.Prokis,Dimitus.G.Morolkis', 'Patience Hall India', 'Available'),
(232, 'DL-232', 'Network theory & flutter design', 'Vasudev.K.Atre', 'New Age International Publication', 'Available'),
(233, 'DL-233', 'Principales of active networks synthesis & design', 'Gobind Daryanani', 'wiley India Pvt. Ltd.', 'Available'),
(234, 'DL-234', 'Network Analysis', 'Purushottam.V.Bhatt,mrs.Mousami.V.Marot,Mrs.Sunita.M.Irgawale,Vaibhav.S.Hendre', 'Nirali Prakashan', 'Available'),
(235, 'DL-235', 'कामगार संघ आणि औद्योगिक संबंध', 'वसंत भगवंत कर्णिक', 'कोन्तिलेन्तल प्रकाशन', 'Available'),
(236, 'DL-236', 'Brilliant jigars SE(E&TC) Network theory (2004-2008)', '-', 'Technical Publication', 'Available '),
(237, 'DL-237', 'Brilliant jigars SE(E&TC) Electronic devices (May 19 - Dec 2001)', '-', 'Technical Publication/ Pragati Publication', 'Available'),
(238, 'DL-238', 'Brilliant jigars TE(E&TC) Information theory & coding technique ', 'NA', 'Technical publication/Pragati Publication', 'Available'),
(239, 'DL-239', 'Brilliant jigars TE(E&TC) Electromagnetic wave & radiating system (May 2006 - Dec 2006)', '-', 'Technical publication', 'Available'),
(240, 'DL-240', 'Brilliant jigars TE(E&TC) Electromagnetic engineering (May 2000 - Dec 2000)', '-', 'Technical publication/Pragati Publication', 'Available'),
(241, 'DL-241', 'Briliant jigars TE(E&TC) Electromagnetics engineering', '-', 'Technical publication/Pragati Publication', 'Available'),
(242, 'DL-242', 'Electromagnetics', 'U.A.Bokshi,A.V.Bhakshi', 'Technical publication', 'Available'),
(243, 'DL-243', 'Elements & Electronic engineering', 'S.K.Khedekar', 'Pune Vidyarthi Griha Prakashan', 'Available'),
(244, 'DL-244', 'Signals & System', 'A.Nagoor Kani', 'Tata MccGraw Hill Edu. Pvt. Ltd.', 'Available'),
(245, 'DL-245', 'Briliant jigars TE(E&TC) Network analysis & synthesis(Dec 1999- May 2004)', '-', 'Technical publication/Pragati Prakashan', 'Available'),
(246, 'DL-246', 'Brilliant jigars SE(E&TC) Signal & system ', '-', 'Technical publication', 'Available'),
(247, 'DL-247', 'Continuos Time Signals & system ', 'Shailesh Chaskar, Sanidha Raut', 'Student Book Depo', 'Available'),
(248, 'DL-248', 'Brilliant jigars SE(E&TC) Networks & Lines', '-', 'Technical publication/Pragati Publication', 'Available'),
(249, 'DL-249', 'Brilliant Jigars TE(E&TC) Linear integrated circuits', '-', 'Technical publication/Pragati Publication', 'Available'),
(250, 'DL-250', 'Brilliant jigars TE(E&TC) Integrated Circuits & Applications', '-', 'Technical publication/Pragati Publication', 'Available'),
(251, 'DL-251', 'Elements of electronics engineering', 'A.P.Godse , U.A.Bakshi', 'Technical publication', 'Available'),
(252, 'DL-252', 'रेडियो टी.वी सोल्वड पेपर्स', 'ए.के.जैन', 'न्यू हाईत्स', 'Available'),
(253, 'DL-253', 'Handbooks for radio operations', '-', 'S.Chand & Company Ltd.', 'Available'),
(254, 'DL-254', 'Brilliant jigars SE (E&TC) Electronics devices & circuits-II(May 99-Dec 2000)', '-', 'Technical publication/Pragati Publication', 'Available'),
(255, 'DL-255', 'Brilliant jigars SE(E&TC) Feedback control system', 'Prof.Joshi,Prof.Kulkarni', 'Pragati publication', 'Available'),
(256, 'DL-256', 'Jigars(TE E&TC) Signals & system', 'Prof.Joshi,Prof.Kulkarni', 'Pragati publication', 'Available'),
(257, 'DL-257', 'स्वामी विवेकानंदांचा सहवासात', 'श्री.शरदचंद्र चक्रवर्ती', 'रामकृष्ण मठ', 'Available'),
(258, 'DL-258', 'Notes on data-communication', '-', '-', 'Available'),
(259, 'DL-259', 'Optical fiber communication', 'Gard Keise', 'MccGraw Hill,Inc', 'Available'),
(260, 'DL-260', 'Brilliant jigars(FE) Elements of electronics engineering(May 98- Dec 2001)', '-', 'Technical publication/Pragati Publication', 'Not available '),
(261, 'DL-261', 'An introduction to analog & digital communication', 'Simon Haykin', 'John & Sons', 'Available'),
(262, 'DL-262', 'Notes on data communication', '-', '-', 'Available'),
(263, 'DL-263', 'Proceeding of seminar on digital electronics', '-', 'The Institution of Telecommunication Engineering', 'Available'),
(264, 'DL-264', 'Notes on Data communication', '-', '-', 'Available'),
(265, 'DL-265', 'Calculus(Volume-I)', 'S.Narayanam, T.K.Manicarachagom Pillay', 'S.Vishwanath', 'Available'),
(266, 'DL-266', 'Transistors(Theory & Practice)', 'Rufus.P.Turner', 'D.B.Tarapurwala sons & co.', 'Available'),
(267, 'DL-267', 'Electrical engineering material', 'Adrianus.J.Dekkar', 'Prentice Hall Of India', 'Available'),
(268, 'DL-268', 'Principal of Telephony', 'N.N.Biswas', 'Radiant Books', 'Available'),
(269, 'DL-269', 'Radio & Tv (Mechanical) Solved papers', 'Jain', 'New Heights', 'Available'),
(270, 'DL-270', 'Transistor Circuit', 'Rufus.P.Turner', 'D.B.Tarapurwala sons & co. Pvt. Ltd.', 'Available'),
(271, 'DL-271', 'Examples & exercises in Telecommunication', 'S.Ramanhardran', 'S.Chand & Company Ltd.', 'Available'),
(272, 'DL-272', 'Fundamental Electronics', 'Prof.P.C.Rao, Prof.D.V.Satrawe', 'Nirali Prakashan', 'Available'),
(273, 'DL-273', 'Brilliant jigars TE(E&TC) Electromagnetics engineering(May 2000-Dec 2000)', '-', 'Technical publication/Pragati Publication', 'Available'),
(274, 'DL-274', 'Modern Satellites & Cable Tv Manual', 'Manohar Lotia', 'BPB Publication', 'Available'),
(275, 'DL-275', 'Introduction to microwave', 'Goshon.J.Wheeler', 'Patience Hall India', 'Available'),
(276, 'DL-276', 'Electronics Paper Solution', 'Prof.Kelkar', 'Sameer Prakashan', 'Available'),
(277, 'DL-277', 'Electronics paper solution', 'Prof.Kelkar', 'Sameer Prakashan', 'Available'),
(278, 'DL-278', 'Electronics ITI solutions', 'Prof.Amit Kumar', 'Pragati publication', 'Available'),
(279, 'DL-279', 'Jigars TE(E&TC)Electromagnetic Engineering', 'Prof.Joshi,Prof.Kulkarni', 'Pragati publication', 'Available'),
(280, 'DL-280', 'Jigars SE(Mechanical)Electronics', 'Prof.Joshi,Prof.Kulkarni', 'Pragati publication', 'Available'),
(281, 'DL-281', 'Question paper set (Dec 1993 - May 1996)SE(Mechanical)Sem-I', '-', '-', 'Available'),
(282, 'DL-282', 'Brilliant jigars continuos time signal &n system(Dec 2003-May2004)', '-', 'Technical publication/Pragati Publication', 'Available'),
(283, 'DL-283', 'Brilliant jigars BE (E&TC) Sem-II Telematics', '-', 'Brilliant Jigars', 'Available'),
(284, 'DL-284', 'Pulse,Digital & Switvhing waveform', 'Jacob Millman,Herlert Taub', 'MccGraw Hill Book', 'Available'),
(285, 'DL-285', 'Network Analysis(second Edition)', 'M.E.Van,Valkenluru', 'Asia Publishing House', 'Available'),
(286, 'DL-286', 'Basic electrical engineering', 'M.L.Anwani,I.Anwani', 'Dhanpatrai Publication', 'Available'),
(287, 'DL-287', 'Patent Laws', 'P.Narayanan', 'Eastern Law House', 'Available'),
(288, 'DL-288', 'Electronic & radio engineering ', 'Frederivk.E.Terman', 'MccGraw Hill Book', 'Available'),
(289, 'DL-289', 'मोटार रीवाय्न्दिंग', 'प्रकाश शहा', 'अर्न विद्युत शाळा प्रकाशन,पुणे', 'Available'),
(290, 'DL-290', 'प्लास्टिक - गुणधर्म आणि उपयोग', 'वि.वि.मराठे', 'विद्यादान प्रकाशन', 'Available'),
(291, 'DL-291', 'The Trade Union Act(1926)', '-', 'Central Press Mumbai', 'Available'),
(292, 'DL-292', 'The Bombay Industrial Relation Act,1946', '-', 'Law Agency', 'Available'),
(293, 'DL-293', 'System,Modeling & Analysis', 'I.J.Nagrath,Madan Gopal', 'Tata MccGraw Hill', 'Available'),
(294, 'DL-294', 'Antenna Theory Analysis & Design', 'Constantine.A.Balanis', 'John Willey & sons ', 'Available'),




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
