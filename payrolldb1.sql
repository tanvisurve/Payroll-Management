
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  EmpID int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact_No` int NOT NULL,
  `Email` varchar(40) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Position` varchar(20) NOT NULL,
  PRIMARY KEY (`EmpID`),
  UNIQUE KEY `NIC` (`NIC`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Contact_No` (`Contact_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Name`, `Address`, `Contact_No`, `Email`, `NIC`, `Department`, `Position`) VALUES
(1, 'Tanvi', 'Shetty', 770239410, 'sajithd784@gmail.com', '962001040v', 'finance', 'manager');
(2, 'Viraj', 'aluthgama', 770231569, 'sad@gmail.com', '3546874654v', 'HR', 'assisten');
(3, 'Raj', 'Parikh', 985476231, 'abc1@gmail.com', '123456987v', 'Tech', 'manager');
(4, 'Bright', 'Sheth', 320779401, 'jjp84@gmail.com', '98754123b', 'Tech', 'developer');
(5, 'Aditya', 'Choksi', 523146987, 'abc78@gmail.com', '555632147p', 'finance', 'Treasurer');
(6, 'Chris', 'Shetty', 739854126, 'pqrjp5@gmail.com', '624539870m', 'HR', 'recruiter');
(7, 'Prachi', 'Shah',963258741 , 'shah75@gmail.com', '968742135p', 'Legal Compliance', 'manager');
(8, 'Ramesh', 'Shah', 135284907, 'bjpjp1997@gmail.com', '890213504b', 'Staff', 'manager');
(9, 'Ram', 'Patel', 359026871, 'klh0920@gmail.com', '963258741a', 'Manufacturing', 'manager');
(10, 'Prachi', 'Parker', 931704286, 'pjap97@gmail.com', '900020214l', 'Tech', 'Coder');



--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
CREATE TABLE IF NOT EXISTS `salary` (
  `Sid` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `empID` int NOT NULL,
  `Month` varchar(20) NOT NULL,
  `wages` int NOT NULL,
  `OT` int NOT NULL,
  `allowance` int NOT NULL,
  `arrival` int NOT NULL,
  `epf` int NOT NULL,
  `etf` int NOT NULL,
  `net` int NOT NULL,
  `tax` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`Sid`),
  KEY `empID` (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`Sid`, `Name`, `empID`, `Month`, `wages`, `OT`, `allowance`, `arrival`, `epf`, `etf`, `net`, `tax`, `total`) VALUES
(1, 'Tanvi', 1, 'August', 800, 1200, 200, 160, 96, 64, 2200, 100, 2100);
(2, 'Viraj', 2, 'August', 700, 1100, 100, 150, 96, 64, 2200, 100, 2100);
(3, 'Raj', 3, 'August', 600, 1000, 200, 140, 96, 64, 2200, 100, 2100);
(4, 'Bright', 4, 'August', 900, 1300, 300, 160, 96, 64, 2200, 100, 2100);
(5, 'Aditya', 5, 'August', 800, 1200, 100, 130, 96, 64, 2200, 100, 2100);
(6, 'Chris', 6, 'August', 900, 1100, 200, 120, 96, 64, 2200, 100, 2100);
(7, 'Prachi', 7, 'August', 600, 1200, 400, 150, 96, 64, 2200, 100, 2100);
(8, 'Ramesh', 8, 'August', 700, 1300, 100, 170, 96, 64, 2200, 100, 2100);
(9, 'Ram', 9, 'August', 900, 1000, 200, 150, 96, 64, 2200, 100, 2100);
(10, 'Prachi', 10, 'August', 800, 1100, 100, 140, 96, 64, 2200, 100, 2100);




-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `question` varchar(30) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `usertype`, `question`, `answer`) VALUES
(1, 'admin1', '12345678', 'admin', 'what is your city?', 'induruwa'),
(2, 'user1', '87654321', 'user', 'what is your city', 'aluthgama');
(3, 'user2', '98563214', 'user', 'what is your birthplace', 'pune');
(4, 'user3', '12587469', 'user', 'what is your school name', 'best');
(5, 'user4', '69213478', 'user', 'what is your birthdate', '7');
(6, 'user5', '23196548', 'user', 'what is your lastname', 'vanga');
(7, 'user6', '98745621', 'user', 'what is your hobby', 'reading');
(8, 'user7', '91375624', 'user', 'what is your favorite color', 'pink');
(9, 'user8', '73985201', 'user', 'what is your favorite movie', 'RRR');
(10, 'user9', '36214598', 'user', 'what is your state', 'texas');


-- --------------------------------------------------------

--
-- Table structure for table `wages`
--

DROP TABLE IF EXISTS `wages`;
CREATE TABLE IF NOT EXISTS `wages` (
  `WID` int NOT NULL,
  `Name` varchar(40) NOT NULL,
  `EmpID` int NOT NULL,
  `Month` varchar(20) NOT NULL,
  `basicsalary` int NOT NULL,
  `OT` int NOT NULL,
  PRIMARY KEY (`WID`),
  KEY `EmpID` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `wages` (`WID`, `Name`, `EmpID`, `Month`, `basicsalary`, `OT`) VALUES
(1, 'tanvi', 1, '12331', 1000, 1200);
(2, 'viraj', 2, '12331', 1500, 1400);
(3, 'raj', 3, '12331', 1200, 1100);
(4, 'bright', 4, '12331', 1300, 1200);
(5, 'aditya', 5, '12331', 1000, 900);
(6, 'chris', 6, '12331', 1400, 1300);
(7, 'prachi', 7, '12331', 1600, 1200);
(8, 'ramesh', 8, '12331', 1400, 1200);
(9, 'ram', 9, '12331', 1000, 1000);
(10, 'prachi', 10, '12331', 1500, 1300);



ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `employee` (`EmpID`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wages`
  ADD CONSTRAINT `wages_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee` (`EmpID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
