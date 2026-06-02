#union takes directly distinct values
select * from parks_and_recreation.employee_demographics Union Select * from parks_and_recreation.employee_salary;

#in that case union all comes into play
select * from parks_and_recreation.employee_demographics Union all Select * from parks_and_recreation.employee_salary;

select age,gender from parks_and_recreation.employee_demographics Union Select first_name,last_name from parks_and_recreation.employee_salary;

select first_name,last_name from parks_and_recreation.employee_demographics Union Select first_name,last_name from parks_and_recreation.employee_salary;

select first_name,last_name from parks_and_recreation.employee_demographics Union all Select first_name,last_name from parks_and_recreation.employee_salary;

select first_name,last_name,'old Man' as label from parks_and_recreation.employee_demographics where age>40 and gender='male'
union 
select first_name,last_name,'old Lady' as label from parks_and_recreation.employee_demographics where age>40 and gender='female' 
union 
select first_name,last_name,'High paid employee' as label from parks_and_recreation.employee_salary where salary>70000 order by first_name,last_name;