DROP SCHEMA IF EXISTS `investment-portal`;

CREATE SCHEMA `investment-portal`;

use `investment-portal`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `investor_review`;

CREATE TABLE IF NOT EXISTS `investor_review` (
  `id` INT NOT NULL,
  `comment` VARCHAR(255) NULL DEFAULT NULL,
  `date_posted` VARCHAR(45) NULL,
  `investor_id` INT  NULL,
  PRIMARY KEY (`id`),
  KEY `FK_INVESTOR_ID_idx` (`investor_id`),

  CONSTRAINT `FK_INVESTOR` 
  FOREIGN KEY (`investor_id`) 
  REFERENCES `investor` (`id`) 

  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `fund_detail`;

CREATE TABLE `fund_detail` (
  `id` INT NOT NULL,
  `category` VARCHAR(255) NULL DEFAULT NULL,
  `fund_status` VARCHAR(45) NULL DEFAULT NULL,
  `fund_inception` VARCHAR(45) NULL DEFAULT NULL,
  `manager` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

DROP TABLE IF EXISTS `fund`;

CREATE TABLE `fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_name` varchar(255) DEFAULT NULL,
  `fund_symbol` varchar(255) DEFAULT NULL,
  `fund_detail_id` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`),
  KEY `FK_DETAIL_idx` (`fund_detail_id`),
  CONSTRAINT `FK_DETAIL` FOREIGN KEY (`fund_detail_id`) 
  REFERENCES `fund_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS `investor`;

CREATE TABLE `investor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `fund_investor`;

CREATE TABLE `fund_investor` (
  `fund_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  
  PRIMARY KEY (`fund_id`,`investor_id`),
  
  KEY `FK_INVESTOR_idx` (`investor_id`),
  
  CONSTRAINT `FK_FUND_05` FOREIGN KEY (`fund_id`) 
  REFERENCES `fund` (`id`) 
  ON DELETE NO ACTION ON UPDATE NO ACTION,
  
  CONSTRAINT `FK_INVESTOR_05` FOREIGN KEY (`investor_id`) 
  REFERENCES `investor` (`id`) 
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------


INSERT INTO fund (fund_name, fund_symbol)
VALUES ('Fidelity ZERO Large Cap Index', 'FNILX');

INSERT INTO fund (fund_name, fund_symbol)
VALUES ('Shelton NASDAQ-100 Index Direct', 'NASDX');

INSERT INTO fund (fund_name, fund_symbol)
VALUES ('SPDR S&P 500 ETF Trust ', 'SPY');

INSERT INTO fund (fund_name, fund_symbol)
VALUES ('iShares Core S&P 500 ETF', 'IVV');

INSERT INTO fund (fund_name, fund_symbol)
VALUES ('Schwab S&P 500 Index Fund', 'SWPPX');

INSERT INTO fund (fund_name, fund_symbol)
VALUES ('Vanguard S&P 500 ETF', 'VOO');

INSERT INTO investor (first_name, last_name, email)
VALUES ('John', 'Smith', 'john.smith@gmail.com');

INSERT INTO investor (first_name, last_name, email)
VALUES ('Mary', 'Anne', 'Mary.Anne@gmail.com');

INSERT INTO investor (first_name, last_name, email)
VALUES ('William', 'ShakeSpeare', 'Will.Shakespeare@gmail.com');

INSERT INTO investor (first_name, last_name, email)
VALUES ('Isaac', 'Newton', 'Isaac.Newton@gmail.com');

INSERT INTO investor (first_name, last_name, email)
VALUES ('Sam', 'Jackson', 'Samuel.Jackson@gmail.com');




