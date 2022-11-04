CREATE DATABASE handson2;
USE handson2;
CREATE TABLE Supplier1(
Supplier_id numeric(5) NOT NULL,
Supplier_name VARCHAR(150) NOT NULL,
Address VARCHAR(150) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(15) NOT NULL,
Country VARCHAR(15) NOT NULL,
Contact VARCHAR(10) NOT NULL
);

insert into Supplier1 values
(1,'Hasna','Mukkath','Ernakulam','Kerala','India','7012447376'),
(2,'Mary','Nehru Villa','Kollam','Kerala','India','9459948041'),
(3,'Nakul','Rajput','Coorg','Karnataka','India','7907082296');
 
 SELECT * FROM Supplier1;

ALTER TABLE supplier1 ADD CONSTRAINT check_key CHECK(length(Contact) = 10);