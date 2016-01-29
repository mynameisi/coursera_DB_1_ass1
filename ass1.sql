--this is just to practice the simpliest form of drop/create
--drop table tbl cascade constraints;
--create table tbl(name VARCHAR(10));
--insert into tbl values('zhiqiao');
--select * from tbl;

DROP TABLE Customer CASCADE CONSTRAINTS;
CREATE TABLE Customer(
  custno VARCHAR(4) CONSTRAINT customer_pk PRIMARY KEY,
  custname VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  Internal CHAR(1) NOT NULL,
  contact VARCHAR(50) NOT NULL,
  phone DECIMAL(7) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(4) NOT NULL,
  zip  DECIMAL(5) NOT NULL
);

DROP TABLE Facility CASCADE CONSTRAINTS;
CREATE TABLE Facility(
  facno VARCHAR(4),
  facname VARCHAR(50) NOT NULL UNIQUE,
  CONSTRAINT facility_pk PRIMARY KEY (facno)
);

DROP TABLE Location CASCADE CONSTRAINTS;
CREATE TABLE Location(
  locno VARCHAR(4),
  facno VARCHAR(4) NOT NULL,
  locname VARCHAR(50) NOT NULL,
  CONSTRAINT location_pk PRIMARY KEY (locno),
  CONSTRAINT location_fk FOREIGN KEY (facno) REFERENCES Facility(facno)
);