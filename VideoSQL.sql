create database videoDB;
USE `videoDB`;

CREATE TABLE `tb_videoinfo`(
  `name`  varchar(100) NOT null,
  `company` varchar(100) NOT null,
  `first` varchar(30) NOT null,
  `daoyan` varchar(30) NOT null,
  `bianju` varchar(30) NOT null,
  `zhuyan` varchar(30) NOT null,
  `price` float NOT NULL,
  `INTRODUCE` varchar(2000) default NULL,

   PRIMARY KEY   (`name`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_user`(
  `id`  varchar(15) NOT null,
  `password` varchar(15) NOT null,
  `isMaster` varchar(1) NOT null,
  `name` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `email` varchar(50) default NULL,

   PRIMARY KEY   (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 

CREATE TABLE `tb_myborrow`(
  `borrow_id`  int NOT NULL auto_increment,
  `userid` varchar(15) NOT null,
  `price` float(16) NOT null,
  `borrow_data` varchar(30) NOT null,
   PRIMARY KEY   (`borrow_id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 
CREATE TABLE `tb_borrow`(
  `id`  int NOT NULL auto_increment,
  `borrow_id` int NOT null,
  `videoname`  varchar(20) NOT null,
  `days` int NOT null,
   PRIMARY KEY   (`ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
INSERT INTO tb_user (id, password, isMaster, name)
		VALUES ('root', 'root', 'Y', 'master');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple01', 'company01', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple02', 'company02', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple03', 'company03', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple04', 'company05', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple05', 'company05', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple06', 'company06', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple07', 'company07', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple08', 'company08', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple09', 'company09', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple10', 'company010', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple11', 'company01', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple12', 'company02', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple13', 'company03', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple14', 'company05', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple15', 'company05', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple16', 'company06', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple17', 'company07', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple18', 'company08', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple19', 'company09', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple20', 'company010', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple21', 'company01', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple22', 'company02', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple23', 'company03', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple24', 'company05', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple25', 'company05', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple26', 'company06', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple27', 'company07', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple28', 'company08', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple29', 'company09', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple30', 'company010', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple31', 'company01', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple32', 'company02', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple33', 'company03', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple34', 'company05', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple35', 'company05', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple36', 'company06', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, ,zhuyan, price,INTRODUCE)
		VALUES ('apple37', 'company07', '2016-12', 'A', 'B','C',100,'A good video');

INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan,price, INTRODUCE)
		VALUES ('apple38', 'company08', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple39', 'company09', '2016-12', 'A', 'B','C',100,'A good video');
		
INSERT INTO tb_videoinfo (name, company, first, daoyan, bianju, zhuyan, price,INTRODUCE)
		VALUES ('apple40', 'company010', '2016-12', 'A', 'B','C',100,'A good video');

http://localhost:8888/VideoMangager/index.jsp
