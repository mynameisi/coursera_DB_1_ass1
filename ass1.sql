--this is just to practice the simpliest form of drop/create
drop table tbl cascade constraints;
create table tbl(name VARCHAR(10));
insert into tbl values('zhiqiao');
select * from tbl;

DROP TABLE Customer CASCADE CONSTRAINTS;
CREATE TABLE Customer(
  custno VARCHAR(4) NOT NULL,
  custname VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  Internal CHAR(1) NOT NULL,
  contact VARCHAR(50) NOT NULL,
  phone DECIMAL(7) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(4) NOT NULL,
  zip  DECIMAL(5) NOT NULL
);