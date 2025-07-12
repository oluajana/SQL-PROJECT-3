/*-- Which district and city report the highest population figure recorded?*/
SELECT District, Population  
FROM city
WHERE Population;

/*--2. Identify the city and district with the smallest documented population count.*/


/*---3) List cities that exceed 100,000 in population, and arrange them by size in increasing order*/
SELECT ID, Name, CountryCode, District, Population
FROM city
WHERE Population > 100000;

/* --- 4 Find all cities with fewer than 2,000 inhabitants. Display them in descending order of population.*/
 
SELECT ID, Name, CountryCode, District, Population
FROM city
WHERE Population
ORDER BY Population DESC;


/*-- 5.Which districts and their corresponding cities fall within a mid-sized population range of 150,000 to 200,000*/
SELECT District, Population
FROM city
WHERE Population BETWEEN 150000 AND 200000;

/*--Using the emptable
6.	Which employees have a salary above $60,000?*/

RENAME table `employee-table_023054`
TO `emptable`;
SELECT first_name, last_name, salary
FROM emptable 
WHERE salary >60000;

/*-- 8. Retrieve employees whose job title is either 'Manager' or 'Analyst'.*/
SELECT first_name, last_name, job_title
FROM emptable
WHERE job_title = 'Manager' OR job_title = 'Analyst';

/* --9.	List all employees ordered by salary from highest to lowest.*/
SELECT first_name, last_name, salary
FROM emptable
ORDER BY salary DESC;

/*10.	Order employees alphabetically by last name*/
SELECT first_name, last_name
FROM emptable
ORDER BY last_name ASC;

/*--11.	List employees with salaries under $70,000 ordered by job title.*/

SELECT first_name, last_name, salary
FROM emptable
WHERE salary < 70000;

/*>> Using global health stati
12.	Which countries appear most urbanized according to the data, and how do they rank?*/


RENAME table global_health_statistics_part_1 (1) TO `GHS`;

SELECT Country, `Urbanization Rate (%)`
FROM ghs
ORDER BY Urbanization Rate (%);



/* -- 13.	Which five conditions are most successfully treated, based on recovery percentages?*/
SELECT Disease Name, Urbanization Rate (%)
FROM ghs
ORDER BY Urbanization Rate (%);



RENAME table `bajaj-2003-2020` TO `finance`;
RENAME table `ghs` TO `health data`;
RENAME table `tablecustomersql_124634` TO `customers`;
RENAME table `paymentsql_124636 (1)` TO `payments`;
RENAME table `samplestore assignment (1)` TO `sales dataset`;

/*--6.	Which employees have a salary above $60,000?*/
SELECT employee_id, first_name, last_name, salary
FROM emptable
WHERE salary > 60000;


/*-- 14. Read the record in the bajaj-2003-2020 dataset
15. Read the data in the global_health_statistics dataset */

USE world;
SELECT * FROM `health data`;
SELECT * FROM finance;


/*
1.	Which district and city report the highest population figure recorded?
2.	Identify the city and district with the smallest documented population count.
12.	Which countries appear most urbanized according to the data, and how do they rank?
13.	Which five conditions are most successfully treated, based on recovery percentages?
18. Change the customers_124634 to customers */


























































* FROM world.city;