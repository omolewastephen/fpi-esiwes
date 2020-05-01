CREATE TABLE `staffrole` (
  `staffRoleId` int PRIMARY KEY AUTO_INCREMENT,
  `staffNum` varchar(255),
  `staffRoleNo` int,
  `loginTime` datetime,
  `staffDelete` varchar(255)
);

CREATE TABLE `logbook` (
  `logbookId` int PRIMARY KEY AUTO_INCREMENT,
  `logbookMat` varchar(255),
  `logbookDesc` text,
  `logbookAttach` varchar(255),
  `logbookComment` text,
  `logDeleteReason` varchar(255),
  `logbookDelete` varchar(255),
  `logbookDate` date,
  `logbookTime` timestamp
);

CREATE TABLE `siwespost` (
  `siwesPostId` int PRIMARY KEY AUTO_INCREMENT,
  `siwesOfficer` varchar(255),
  `siwesMat` varchar(255),
  `siwesCompName` varchar(255),
  `siwesCompAdd` text,
  `siwesCompCountry` varchar(255),
  `siwesCompState` varchar(255),
  `siwesCompDate` date,
  `siwesCompTime` time,
  `siwesCompLetter` varchar(255),
  `siwesSupervisor` varchar(255),
  `siwesSupervisorNo` varchar(255),
  `siwesSupervisorSkype` varchar(255),
  `siwesStudentSkype` varchar(255)
);

CREATE TABLE `reglist` (
  `matno` int,
  `fname` varchar(255),
  `sname` varchar(255),
  `mname` varchar(255),
  `sex` varchar(255),
  `college` varchar(255),
  `dept` varchar(255),
  `program` varchar(255),
  `yog` int,
  `level` varchar(255),
  `studentshipStatus` varchar(255)
);

CREATE TABLE `countries` (
  `countryid` int PRIMARY KEY AUTO_INCREMENT,
  `countryname` varchar(255)
);

CREATE TABLE `states` (
  `stateid` int PRIMARY KEY AUTO_INCREMENT,
  `statename` varchar(255)
);

CREATE TABLE `roles` (
  `roleId` int PRIMARY KEY AUTO_INCREMENT,
  `roleName` varchar(255)
);

CREATE TABLE `stafflist` (
  `staffId` int PRIMARY KEY AUTO_INCREMENT,
  `fname` varchar(255),
  `sname` varchar(255),
  `mname` varchar(255),
  `sex` varchar(255),
  `college` varchar(255),
  `dept` varchar(255),
  `program` varchar(255)
);

ALTER TABLE `reglist` ADD FOREIGN KEY (`matno`) REFERENCES `siwespost` (`siwesMat`);

ALTER TABLE `reglist` ADD FOREIGN KEY (`matno`) REFERENCES `logbook` (`logbookMat`);

ALTER TABLE `reglist` ADD FOREIGN KEY (`matno`) REFERENCES `staffrole` (`staffNum`);
