select gender,avg(salary) as avg_salary from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by gender;

select gender,avg(salary) over() as avg_salary from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id order by gender;

select gender,avg(salary) over(partition by gender) as avg_salary from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.first_name,dem.last_name,gender,avg(salary) as avg_salary from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by dem.first_name,dem.last_name,gender  ;

select gender,salary,sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.first_name,dem.last_name,gender,salary, row_number() over() from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.first_name,dem.last_name,gender,salary, row_number() over(partition by gender order by salary desc) from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.first_name,dem.last_name,gender,salary, row_number() over(partition by gender) from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.employee_id,dem.first_name,dem.last_name,gender,salary,row_number() over(partition by gender) as row_num, rank() over(partition by gender order by salary desc) as rank_num from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;

select dem.employee_id,dem.first_name,dem.last_name,gender,salary,row_number() over(partition by gender order by salary desc) as row_num, rank() over(partition by gender order by salary desc) as rank_num,dense_rank() over(partition by gender order by salary desc) as dense_rank_num from parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id;
