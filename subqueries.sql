select * from parks_and_recreation.employee_demographics where employee_id IN(select employee_id from parks_and_recreation.employee_salary where salary >7000);

select * from parks_and_recreation.employee_demographics where employee_id IN(select employee_id from parks_and_recreation.employee_salary where dept_id=1);

select first_name,last_name,salary,(Select Avg(Salary) from parks_and_recreation.employee_Salary) as average_Salary from parks_and_recreation.employee_salary;

select gender,avg(age) as avg_age,max(age) as max_age,min(age) as min_age,count(age) from parks_and_recreation.employee_demographics group by gender;

select gender,avg(max_age) from(
select gender,avg(age) as avg_age,max(age) as max_age,min(age) as min_age,count(age) from parks_and_recreation.employee_demographics group by gender) as agg_table group by gender;

select avg(max_age) from(
select gender,avg(age) as avg_age,max(age) as max_age,min(age) as min_age,count(age) from parks_and_recreation.employee_demographics group by gender) as agg_table;

select * from parks_and_recreation.employee_demographics;