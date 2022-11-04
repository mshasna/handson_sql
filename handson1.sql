CREATE DATABASE handson;
USE handson;
CREATE TABLE salesman(
id INT NOT NULL,
name VARCHAR(30) NOT NULL,
city VARCHAR(15) NOT NULL,
commission DECIMAL(5,2) NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE orders(
ord_no INT NOT NULL AUTO_INCREMENT,
purch_amt DECIMAL(8,2) NOT NULL,
ord_date DATE,
cust_id INT NOT NULL,
sales_id INT NOT NULL,
PRIMARY KEY (ord_no),
FOREIGN KEY (sales_id) REFERENCES salesman (id)
);
drop table orders;
drop table sales;

INSERT INTO salesman(id,name,city,commission)
VALUES(101,'Michael','Trivandrum',5.2),
(102,'Sachin','Mumbai',4.1),
(121,'Naveen','Kochi',6.3),
(156,'Suraj','Pune',3.5);

SELECT * FROM salesman;

INSERT INTO orders(ord_no,purch_amt,ord_date,cust_id,sales_id)
VALUES(21223,561.75,"2019-08-21",397,156),
(23456,1083.50,"2019-08-15",369,121),
(29438,1051,"2019-09-25",321,121),
(24561,2009,"2019-10-03",316,101),
(27413,1987.50,"2019-06-11",354,102);

SELECT * FROM orders;

SELECT salesman.name,salesman.city,salesman.commission, orders.ord_no, orders.purch_amt, orders.ord_date, orders.cust_id
FROM salesman
LEFT  JOIN orders
ON salesman.id = orders.sales_id;