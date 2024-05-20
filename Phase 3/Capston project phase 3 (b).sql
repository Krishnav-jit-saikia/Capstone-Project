use capston ;

-- Task 3.4 :	Insert records from 02_District_wise_crimes_committed_against_ST_2001_2012.csv into a new table
-- Here , I have already make a new column by adding values of Robbery and Dacoity for each state .alter

create table ST_crime(
STATE_UT varchar(50),
DISTRICT varchar(50),
Year int (4),
Murder int(10),
Rape int (10),
Kidnapping int (10),
Arson int (10),
Hurt int (10),
PCR_act int (10),
POA_act int (10),
other_st_crime int (10),
Robbery_and_Dacoity int (10));

select * from ST_crime ;

-- Task : 3.5	Write SQL query to find the highest number of dacoity/robbery in which district.

SELECT DISTRICT, STATE_UT, SUM(Robbery_and_Dacoity) AS Total_Robbery_Dacoity_ST
FROM ST_crime 
GROUP BY DISTRICT, STATE_UT
ORDER BY Total_Robbery_Dacoity_ST DESC
LIMIT 1;

-- Task : 3.6	Write SQL query to find in which districts(All) the lowest number of murders happened.-- 

SELECT DISTRICT , COUNT(Murder)
FROM ST_crime
GROUP BY DISTRICT
HAVING MIN(Murder) = (
  SELECT MIN(Murder)
  FROM ST_crime
);

-- 3.7	Write SQL query to find the number of murders in ascending order in district and year wise.

SELECT Year, STATE_UT, DISTRICT, COUNT(Murder) AS Murder_Count
FROM ST_crime
GROUP BY Year, STATE_UT, DISTRICT
ORDER BY Year, STATE_UT, DISTRICT, Murder_Count ASC;