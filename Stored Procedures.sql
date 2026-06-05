-- save the sql code to use over and over again when you save it you can call it as stored procedure
-- helpful to solve complex queries


CREATE procedure parks_and_recreation.large_salaries1()
select * from parks_and_recreation.employee_salary
where salary>50000;

call parks_and_recreation.large_salaries1();


CREATE procedure parks_and_recreation.large_salaries2()
select * from parks_and_recreation.employee_salary
where salary>50000;
select * from parks_and_recreation.employee_salary
where salary>10000;

CALL parks_and_recreation.large_salaries2();

DELIMITER $$
CREATE procedure parks_and_recreation.large_salaries3()
BEGIN
	select * from parks_and_recreation.employee_salary
	where salary>50000;
	select * from parks_and_recreation.employee_salary
	where salary>10000;
END $$
Delimiter ;
CALL parks_and_recreation.large_salaries3();


DELIMITER $$
CREATE procedure parks_and_recreation.large_salaries4(employee_id_params INT)
BEGIN
	select salary from parks_and_recreation.employee_salary WHERE employee_id=employee_id_params;
END $$
Delimiter ;
CALL parks_and_recreation.large_salaries4(1);
