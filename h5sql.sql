use handson3;

DELIMITER $$
CREATE procedure `EmployeesDept`(IN Deptno char(3))
Begin
	Select lastname as 'Names' from Employee where Workdept=Deptno;
    
End$$

DELIMITER;

CALL EmployeesDept(11);
