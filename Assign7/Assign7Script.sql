-- Michael Marchetti
-- z1860574
-- CSCI 466
-- Section 1
-- Using limit 50 for all queries where needed to keep 
-- output file readable, can be removed to show
-- all applicable. Unless otherwise

-- Satisfy requirement 1, selects the babyname db
USE BabyName;

-- Satisfy requirement 2, shows all tables in db
SHOW TABLES;

-- Satisfy requirement 3, show all names from 2000
-- each name must only be shown once
-- used DESCRIBE keyword to view column names
-- DISTINCT keyword used to choose only unique values from names
SELECT DISTINCT name, year
    FROM BabyName
    WHERE year = '2000'
    LIMIT 50;  -- testing value to prevent lengthy testing

-- Satisfy requirement 4, show all columns and their types
-- for each table in the database
DESCRIBE BabyName;

-- Satisfy requirement 5, show all of the unique years 
-- where 'Michael' appears
-- using args name, year to show both columns
SELECT DISTINCT name, year
    FROM BabyName
    WHERE name = 'Michael'
    LIMIT 50;

-- Satisfy requirement 6, List how many different names
-- there are for each place 52 places, 95025 names 
SELECT place, COUNT(DISTINCT name) 
    as COUNT FROM BabyName 
    GROUP BY place;

-- Satisfy requirement 7, displays the most popular 
-- names from year column 1983
SELECT name, count, year
    FROM BabyName
    WHERE year = '1983'
    GROUP BY count DESC
    LIMIT 50;

-- Satisfy requirement 8, show all info for 'Michael',
-- sorted in alphabetical order by name, then by count
-- and by year
-- year sorted using DESC to show first years first,
-- could use ASC instead to show current years first
SELECT *
    FROM BabyName
    WHERE name LIKE 'Michael%'  -- accounts for a name such as Michaela
    ORDER BY name ASC, count DESC, year DESC -- had to sort name by ASC, was 
    -- giving issues with DESC, sorting opposite
    LIMIT 100;

-- Satisfy requirement 9, display num rows in the table
SELECT COUNT(*)
    FROM BabyName;

-- Satisfy requirement 10, dislay num names in table for 
-- each sex from year 1972
SELECT year, gender, COUNT(gender)
    FROM BabyName
    WHERE year = '1972'
    GROUP BY gender;


-- Satisfy requirement 11, display num names from year 1974
SELECT year, COUNT(DISTINCT name)
    FROM BabyName
    WHERE year = '1974';

