SELECT gender,avg(age) From parks_and_recreation.employee_demographics group by gender;

SELECT occupation,avg(salary) FROM parks_and_recreation.employee_salary GROUP BY occupation;

SELECT occupation,salary FROM parks_and_recreation.employee_salary GROUP BY occupation,salary;

SELECT occupation,avg(salary),max(salary),min(salary) FROM parks_and_recreation.employee_salary GROUP BY occupation;

SELECT gender,avg(age),count(age) From parks_and_recreation.employee_demographics group by gender;

Select age,gender from parks_and_recreation.employee_demographics order by age ASC;

select age,gender from parks_and_recreation.employee_demographics order by age DESC;

select age,gender from parks_and_recreation.employee_demographics order by gender,age DESC;

SELECT age, gender 
FROM parks_and_recreation.employee_demographics 
ORDER BY 1, 2 DESC;  #using column numbers 