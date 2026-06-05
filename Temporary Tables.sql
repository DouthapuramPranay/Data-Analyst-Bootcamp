-- are only visible to the session they are created in,if you exit out of mysql and comeback it will not be there anymore
-- used to store intermediate results to solve complex queries,we can easily manipulate before sending it to permanent table

create temporary table temp_table(
first_name varchar(50),last_name varchar(50),favourite_movie varchar(100));

select * from temp_table;

insert into temp_table values('Arun','DIOXY','bahubali');

select * from temp_table;

select * from parks_and_recreation.employee_salary;

create temporary table salary_over_50k
select * from parks_and_recreation.employee_salary
where salary>50000;
select * from salary_over_50k;

