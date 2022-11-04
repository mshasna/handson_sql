use handson3;

SELECT concat( FIRSTNAME,'works for',LASTNAME) AS FIRSTNAME
FROM demo_table;

SELECT concat(Employee.lastname, 'works for', Department.Mgrno) as 'Hierarchy' from Employee
join Department on Employee.Workdept=Department.Deptno order by Employee.Lastname asc;
