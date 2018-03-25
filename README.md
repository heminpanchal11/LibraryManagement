# LibraryManagement

CREATE SCHEMA `librarymaindb` ;
here is sql statements

CREATE TABLE `BookIssues` (
  `i_id` int(11) NOT NULL,
  `i_b_id` varchar(45) DEFAULT NULL,
  `i_b_name` varchar(45) DEFAULT NULL,
  `i_u_id` varchar(45) DEFAULT NULL,
  `i_date` date DEFAULT NULL,
  `i_returndate` date DEFAULT NULL,
  `BookIssuecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Books` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(45) DEFAULT NULL,
  `b_year` int(11) DEFAULT NULL,
  `b_publicher_name` varchar(45) DEFAULT NULL,
  `b_edition` varchar(45) DEFAULT NULL,
  `b_discription` longtext,
  `b_price` int(11) DEFAULT NULL,
  `b_totalcopies` int(11) DEFAULT NULL,
  `b_remainingcopies` int(11) DEFAULT NULL,
  `b_author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Users` (
  `u_id` int(11) NOT NULL,
  `u_firstname` varchar(45) DEFAULT NULL,
  `u_lastname` varchar(45) DEFAULT NULL,
  `u_semester` int(11) DEFAULT NULL,
  `u_email` varchar(45) DEFAULT NULL,
  `u_gender` varchar(45) DEFAULT NULL,
  `u_address` varchar(45) DEFAULT NULL,
  `u_contact` int(11) DEFAULT NULL,
  `u_bookcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `LibraryMainDb`.`BookIssues`
(`i_id`,
`i_b_id`,
`i_b_name`,
`i_u_id`,
`i_date`,
`i_returndate`,
`BookIssuecol`)
VALUES
(<{i_id: }>,
<{i_b_id: }>,
<{i_b_name: }>,
<{i_u_id: }>,
<{i_date: }>,
<{i_returndate: }>,
<{BookIssuecol: }>);

INSERT INTO `LibraryMainDb`.`Books`
(`b_id`,
`b_name`,
`b_year`,
`b_publicher_name`,
`b_edition`,
`b_discription`,
`b_price`,
`b_totalcopies`,
`b_remainingcopies`,
`b_author`)
VALUES
(<{b_id: }>,
<{b_name: }>,
<{b_year: }>,
<{b_publicher_name: }>,
<{b_edition: }>,
<{b_discription: }>,
<{b_price: }>,
<{b_totalcopies: }>,
<{b_remainingcopies: }>,
<{b_author: }>);

INSERT INTO `LibraryMainDb`.`Users`
(`u_id`,
`u_firstname`,
`u_lastname`,
`u_semester`,
`u_email`,
`u_gender`,
`u_address`,
`u_contact`,
`u_bookcount`)
VALUES
(<{u_id: }>,
<{u_firstname: }>,
<{u_lastname: }>,
<{u_semester: }>,
<{u_email: }>,
<{u_gender: }>,
<{u_address: }>,
<{u_contact: }>,
<{u_bookcount: }>);

