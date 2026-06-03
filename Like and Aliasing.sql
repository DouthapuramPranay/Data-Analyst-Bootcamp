select * from parks_and_recreation.employee_demographics LIMIT 3;

select * from parks_and_recreation.employee_demographics LIMIT 2,1;

SELECT gender,avg(age) from parks_and_recreation.employee_demographics group by gender having avg(age)>40;

SELECT gender,avg(age) AS Avg_Age from parks_and_recreation.employee_demographics group by gender having Avg_Age>40;
 
