create database handson3;
use handson3;
create table Department(
Deptno char(3) primary key,
Deptname varchar(36) not null,
Mgrno char(6),
Admrdept char(3) not null,
Location char(16)
);
insert into Department values(1,'Dept-1','M1','11','Delhi'),(2,'Dept-2','M2','12','Banglore');

create table Employee(
Empno char(6) not null,
Firstname varchar(12) not null,
Midinit char(1) not null,
Lastname varchar(15) not null,
Workdept char(3),
Foreign key (Workdept) references Department(Deptno),
Phoneno char(10), check(Phoneno >= 0000000000 and Phoneno <= 9999999999),
Hiredate Date,
Job char(9),
Edlevel smallint,
sex char(1),
Birthdate date,
Salary decimal(9,2),
Bonus decimal(9,2),
Comm decimal(9,2)
);
insert into Employee values
(7,'F7','A','LN0','11','9876543210','2022-12-09','JOB',2,'F','2000-12-06'10000.00,50000.00,2000.00);
select * from department;
select * from Employee;

select a.Mgrno,b.Deptname as 'Manager_Department' from Department a join Department b where a.Admrdept=b.Deptno;
select Employee.Empno,Department.Mgrno, Department.Deptname as 'Worker_Department', Department.Location
from Department join Employee on Employee.Workdept=Department.Deptno;

select q1.Worker_Department,q1.Location,q2.Manager_Department
from (select Employee.Empno,Department.Mgrno,Department.Deptname as 'Worker_Department',Department.Location
from Department join Employee on Employee.Workdept=Department.Deptno)q1
join (select a.Mgrno,b.Deptname as 'Manager_Department' from Department a join Department b where a.Admrdept=b.Deptno)q2
on q1.Mgrno=q2.Mgrno where q1.Worker_Department!=q2.Manager_Department order by q1.Worker_Department asc;
