use capston ;

-- Task : 3.8.1	Insert records of STATE/UT, DISTRICT, YEAR, MURDER, ATTEMPT TO MURDER, and RAPE
--  columns only from 01_District_wise_crimes_committed_IPC_2001_2012.csv into a new table.

create table Murders (
STATE_UT varchar (50),
DISTRICT varchar (50),
Year int (4),
Murder int (10),
Attempt_to_murder int (10)
);

select * from Murders ;

-- 3.8.2	Write SQL query to find which District in each state/UT has the highest number of
--  murders year wise. Your output should show STATE/UT, YEAR, DISTRICT, and MURDERS.

-- I apologise , I can not do the 3.8.2 task