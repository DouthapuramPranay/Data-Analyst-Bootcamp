Select first_name,last_name,age,case when age>80 then "death door"  when age between 30 and 80 then "old" when age<30 then "young" end as age_bracket from parks_and_recreation.employee_demographics;

select first_name,last_name,salary,case when salary<50000 then salary*1.06 when salary>50000 then salary*1.07  end as new_salary from parks_and_recreation.employee_salary;

select first_name,last_name,salary,case when dept_id=6 then salary*0.06 end as bonus from parks_and_recreation.employee_salary;