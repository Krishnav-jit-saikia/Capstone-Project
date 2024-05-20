create database capston;

-- Task : 3.1	Insert records from 42_District_wise_crimes_committed_against_women_2001_2012.csv into a table.

-- Here , I have already create a new dataframe from 42_District_wise_crimes_committed_against_women_2001_2012 by 
-- creating a new column adding values of Rape_and Kidnaping 
-- and removing those rows where the DISTRICT does not contain the name of District

USE capston;
create table Crime_in_women
(
STATE_UT varchar(50),
DISTRICT varchar(50),
Year int (5),
Dowry_deaths int (10),
Assault_on_women int (10),
Insult_to_women int (10),
Cruelty_by_husband int (10),
Importion_of_girl int (10),
Rape_kidnapping int (10)
);
select * from Crime_in_women;

-- Task : 3.2	Write SQL query to find the highest number of rapes & Kidnappings
--  that happened in which state, District, and year.

-- I will make the query and then store the output in a table so that I can convert it to a dataframe in python

use capston ;
CREATE TABLE Top_Rape_Cases (
  STATE_UT VARCHAR(50),
  DISTRICT VARCHAR(50),
  Year INT,
  Rape_kidnapping INT
) AS
SELECT STATE_UT, DISTRICT, Year, Rape_kidnapping
FROM Crime_in_women
ORDER BY Rape_kidnapping DESC
LIMIT 1000;

select * from top_rape_cases ;

-- Task : 3.3	Write SQL query to find All the lowest number of rapes & Kidnappings
--  that happened in which state, District, and year.

SELECT STATE_UT, DISTRICT, Year, Rape_kidnapping
FROM Crime_in_women
ORDER BY Rape_kidnapping ASC
LIMIT 1000;