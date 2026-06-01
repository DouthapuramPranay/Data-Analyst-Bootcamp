SELECT avg(age) From parks_and_recreation.employee_demographics group by gender HAVING avg(age)>40;

SELECT occupation,avg(salary) FROM parks_and_recreation.employee_salary WHERE occupation LIKE '%manager%' group by occupation Having Avg(salary)>75000; 

