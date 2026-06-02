-- string functions
Select LENGTH('Pranay');

Select first_name,length(first_name) as length from parks_and_recreation.employee_demographics order by 2;

Select first_name,upper(first_name) as upper_case from parks_and_recreation.employee_demographics order by 2;

Select first_name,lower(first_name) as lower_case from parks_and_recreation.employee_demographics order by 2;

Select first_name,left(first_name,3) as left_letters from parks_and_recreation.employee_demographics order by 2;

Select first_name,right(first_name,3) as right_letters from parks_and_recreation.employee_demographics order by 2;

Select first_name,birth_date,substring(birth_date,6,2) as birth_month from parks_and_recreation.employee_demographics order by 2;

Select ltrim('                hello                   ') as trim;
Select rtrim('                hello                   ') as trim;

Select first_name,replace(first_name,'a','z') from parks_and_recreation.employee_demographics order by 2;

select first_name,locate('a',first_name) from parks_and_recreation.employee_demographics;

select first_name,last_name,concat(first_name," ",last_name) as full_name from parks_and_recreation.employee_demographics;

