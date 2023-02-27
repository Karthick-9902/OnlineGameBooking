CREATE TABLE `admininfo` (
  `adminid` int NOT NULL AUTO_INCREMENT,
  `adminmail` varchar(45) NOT NULL,
  `adminname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `adminphone` varchar(45) NOT NULL,
  PRIMARY KEY (`adminid`,`adminmail`),
  KEY `Fk_adminmail` (`adminmail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `facility` (
  `facilityid` int NOT NULL AUTO_INCREMENT,
  `facilityname` varchar(45) NOT NULL,
  `facilityowner` varchar(45) NOT NULL,
  `facilitypnumber` varchar(45) NOT NULL,
  `facilitysport` varchar(45) NOT NULL,
  `facilityloc` varchar(45) NOT NULL,
  `facilitymail` varchar(45) NOT NULL,
  `facilityownermailid` varchar(45) NOT NULL,
  PRIMARY KEY (`facilityid`,`facilityname`),
  KEY `foreign_id_mail_idx` (`facilityownermailid`),
  CONSTRAINT `Fk_adminmail` FOREIGN KEY (`facilityownermailid`) REFERENCES `admininfo` (`adminmail`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `hostinginfo` (
  `bookdate` date NOT NULL,
  `facilityname` varchar(45) NOT NULL,
  `usermail` varchar(45) NOT NULL,
  `hostmail` varchar(45) NOT NULL,
  `joinstatus` varchar(45) NOT NULL,
  PRIMARY KEY (`bookdate`,`facilityname`,`usermail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `inbox` (
  `msgid` int NOT NULL AUTO_INCREMENT,
  `usermail` varchar(45) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `userinfo` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `usermail` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `userphone` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`,`usermail`),
  UNIQUE KEY `usermail_UNIQUE` (`usermail`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `bookings` (
  `bookdate` date NOT NULL,
  `facilityname` varchar(45) NOT NULL,
  `usermail` varchar(45) NOT NULL,
  `booktype` varchar(45) NOT NULL,
  PRIMARY KEY (`bookdate`,`facilityname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
