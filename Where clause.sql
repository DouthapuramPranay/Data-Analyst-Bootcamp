SELECT * FROM employee_salary WHERE first_name='Leslie';

SELECT * FROM employee_salary WHERE salary>=50000;

SELECT * FROM employee_salary WHERE salary<=50000;

SELECT * FROM employee_salary WHERE salary=50000;

SELECT * FROM employee_salary WHERE salary!=50000;

SELECT * FROM employee_demographics WHERE gender='Female';

SELECT * FROM employee_demographics WHERE birth_date >'1981-07-01';

SELECT * FROM employee_demographics WHERE birth_date >'1981-07-01' AND gender='male';

SELECT * FROM employee_demographics WHERE birth_date >'1981-07-01' AND gender='Female';

SELECT * FROM employee_demographics WHERE birth_date >'1981-07-01' OR gender='male';

SELECT * FROM employee_demographics WHERE NOT gender='male';

SELECT * FROM employee_demographics WHERE birth_date >'1981-07-01' OR NOT gender='male';

SELECT * FROM employee_demographics WHERE (birth_date >'1981-07-01' AND gender='male') OR age>44;

SELECT * FROM employee_demographics Where first_name LIKE 'Jer%';

SELECT * FROM employee_demographics Where first_name LIKE '%er%';

SELECT * FROM employee_demographics Where first_name LIKE 'a%';

SELECT * FROM employee_demographics Where first_name LIKE 'a__';

SELECT * FROM employee_demographics Where first_name LIKE 'a___%';

SELECT * FROM employee_demographics Where birth_date LIKE '1989%';