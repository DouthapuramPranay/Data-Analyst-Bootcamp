-- Trigger is a block of code that executes automatically when event takes place on a specific table

DELIMITER $$
CREATE trigger parks_and_recreation.employee_insert
	AFTER insert on parks_and_recreation.employee_salary
    for each row
BEGIN
	Insert into parks_and_recreation.employee_demographics(employee_id,first_name,last_name) values(new.employee_id,new.first_name,new.last_name);
END $$
Delimiter ;

insert into parks_And_recreation.employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id) values(14,'John','Deco','Ceo','100000',null);

select * from parks_and_recreation.employee_demographics;

-- EVENTs event takes place when it scheduled where as a triggers happen when an event takes place 
DELIMITER $$
CREATE EVENT delete_retiree
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE FROM parks_and_recreation.employee_demographics where age>=60;
END $$
DELIMITER ;

select * from parks_And_recreation.employee_demographics;