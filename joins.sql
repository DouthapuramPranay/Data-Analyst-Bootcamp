Select * from parks_and_recreation.employee_demographics AS E1 Inner Join parks_and_recreation.employee_salary AS E2 On E1.employee_id=E2.employee_id;

Select * from parks_and_recreation.employee_demographics;

Select * from parks_and_recreation.employee_salary;

Select E1.employee_id,age,occupation from parks_and_recreation.employee_demographics AS E1 Inner Join parks_and_recreation.employee_salary AS E2 On E1.employee_id=E2.employee_id;

-- outer join
Select * from parks_and_recreation.employee_demographics AS E1 Left Outer Join parks_and_recreation.employee_salary AS E2 On E1.employee_id=E2.employee_id;
Select * from parks_and_recreation.employee_demographics AS E1 Right outer Join parks_and_recreation.employee_salary AS E2 On E1.employee_id=E2.employee_id;

-- self join
select * from parks_and_recreation.employee_salary emp1 join parks_and_recreation.employee_salary emp2 on emp1.employee_id+1=emp2.employee_id;

select emp1.employee_id AS emp_santa,emp1.first_name AS first_name_Santa,emp1.last_name AS last_name_Santa,emp2.employee_id AS emp_name,emp2.first_name AS first_name,emp2.last_name AS last_name from parks_and_recreation.employee_salary as emp1 join parks_and_recreation.employee_salary as emp2 on emp1.employee_id+1=emp2.employee_id;

-- joining multiple tables 
select * from parks_and_recreation.employee_salary emp1 join parks_and_recreation.employee_salary emp2 on emp1.employee_id=emp2.employee_id Inner join parks_and_recreation.parks_departments pd On emp2.dept_id=pd.department_id;
