use handson3;
delimiter go

SELECT Employee.Firstname,Employee.Lastname,Employee.Salary
FROM Employee JOIN Department
WHERE Employee.Workdept=Department.Deptno AND Department.Location='New York' ORDER BY Employee.Firstname ASC go