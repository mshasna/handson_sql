use Handson3;

DELIMITER $$
CREATE PROCEDURE `AvailableDepts`()
begin
	select Deptname as 'name' from Department;
end$$

DELIMITER;

CALL AvailableDepts();
