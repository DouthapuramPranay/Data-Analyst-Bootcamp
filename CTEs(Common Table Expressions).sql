
with cte_example as 
(select dem.gender,avg(sal.salary) as avg_sal,max(salary) as max_sal,min(salary) as min_sal,count(salary) as count 
from
parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by dem.gender
)
select avg(avg_sal)
from cte_example;





with cte_example as 
(select dem.gender,avg(sal.salary) as avg_sal,max(salary) as max_sal,min(salary) as min_sal,count(salary) as count 
from
parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by dem.gender
)
select *
from cte_example;

with cte_example (Gender,Avg_Sal,Max_Sal,Min_Sal,Count_Sal) as 
(select dem.gender,avg(sal.salary) as avg_sal,max(salary) as max_sal,min(salary) as min_sal,count(salary) as count 
from
parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by dem.gender
)
select *
from cte_example;

with cte_example (Gender,Avg_Sal,Max_Sal,Min_Sal,Count_Sal) as 
(select dem.gender,avg(sal.salary),max(salary),min(salary),count(salary) 
from
parks_and_recreation.employee_demographics dem join parks_and_recreation.employee_Salary sal on dem.employee_id=sal.employee_id group by dem.gender
)
select *
from cte_example;

with cte_example as 
(select employee_id,gender,birth_date
from parks_and_recreation.employee_demographics
where birth_date>'1985-01-01'
),
cte_example2 as
(
select employee_id,salary
from parks_and_recreation.employee_salary
where salary>50000
)
select *
from cte_example
join cte_example2
on cte_example.employee_id=cte_example2.employee_id;