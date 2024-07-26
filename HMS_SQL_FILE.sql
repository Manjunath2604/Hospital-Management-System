create database hospital;
use hospital;
DROP TABLE IF EXISTS `adminreg`;
CREATE TABLE `adminreg` (
  `username` varchar(50) default NULL,
  `password` varchar(35) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `adminreg` WRITE;
INSERT INTO `adminreg` VALUES ('admin','admin');
select * from adminreg;
UNLOCK TABLES;
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `city` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `age` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `qualification` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `doctor` VALUES (0,'Merl','Monahan',NULL,'783.088.3543','East Palmashire','smith.cary@example.net','54101','1156 Stacey Canyon\nWest Nikolas, IA 01099-3303','1997-05-10T00:25:37+0000','g'),
                            (1,'Jovani','Hoeger',NULL,'+25(0)1975528419','West Devinview','oferry@example.com','836717','4929 Doyle Alley\nNew Russellmouth, AR 72160-9505','2017-07-31T08:32:04+0000','w'),
                            (2,'Rasheed','Bayer',NULL,'862-171-5489x623','Port Minervamouth','bruen.malcolm@example.net','15074761','535 Chandler Meadow\nArloview, PA 38199-3938','2015-05-26T04:00:50+0000','p'),
                            (3,'Crystel','McClure',NULL,'570.939.0831','Port Katarinaberg','kmarvin@example.com','59863','66303 Deangelo Isle Suite 983\nDevantemouth, CT 67143-0164','1978-01-19T11:34:37+0000','t'),
                            (5,'Daphney','Schaefer',NULL,'878.832.1826x762','Danielbury','rosina62@example.com','32600','701 Marc Expressway\nVivianeland, ID 91879','1999-01-06T18:56:39+0000','b'),
                            (7,'Floyd','Waters',NULL,'645-061-1656','Lake Rose','adolfo67@example.org','773339','08030 Jakubowski Unions\nPort Erling, NE 50242','2000-09-28T05:17:59+0000','i'),
                            (8,'Christophe','Sporer',NULL,'477-034-7283','Mayrachester','arely28@example.net','8344','39969 Pollich River Apt. 741\nWest Marcelinohaven, RI 67945-3924','1970-03-17T22:49:44+0000','m'),
                            (9,'Edgardo','Rogahn',NULL,'632-332-0127x54791','North Nikitamouth','andre96@example.com','80','4158 Tia Extension\nPort Enricostad, RI 38378','2015-05-18T02:10:09+0000','b');

CREATE TABLE `login` (
  `username` varchar(15) default NULL,
  `password` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `login` VALUES ('123','123'),('1234','1234');

select * from login;

CREATE TABLE `patient` (
  `fname` varchar(30) default NULL,
  `lname` varchar(30) default NULL,
  `gender` varchar(10) default NULL,
  `city` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `age` varchar(15) default NULL,
  `address` varchar(50) default NULL,
  `date` varchar(50) default NULL,
  `mobile` varchar(50) NOT NULL,
  PRIMARY KEY  (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `patient` VALUES ('Delmer','Gaylord',NULL,'New Cadenside','vivienne46@example.net','10918382','6283 Gaylord Shoal\nAnkundington, MA 27273-0351','1984-07-03','(012)180-2417x2320');

select * from patient;