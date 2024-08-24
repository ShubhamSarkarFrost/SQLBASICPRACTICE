SELECT DISTINCT * from covid_data;
SELECT COUNT(*) AS total_records from covid_data where length(total_cases) > 4;  -- select the rows where length of the total cases exceed the length of 4 

-- select the Maximum number of serious cases 
SELECT MAX(serious_cases) from covid_data where length(serious_cases) > 3;
SELECT MAX(active_cases) from covid_data where length(active_cases) > 4;

-- select Maximum of total cases and print them in group country descending 
select total_cases , country from covid_data where total_cases > 400000 order by country DESC;

-- select the Total Number of Cases where the number starts from 9 and is a three digit number
select serious_cases from covid_data where serious_cases like '9%';

-- select top 50% of the total cases 
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY country DESC) AS row_num,
           COUNT(*) OVER() AS total_count
    FROM covid_data
) AS ranked
WHERE row_num <= total_count / 2;

-- Update the Data of Belgium 
update covid_data set serious_cases=12 where country like 'Belgium';
select serious_cases from covid_data where country='Belgium';

-- SHOW VARIABLES LIKE 'secure_file_priv';
-- CREATE TABLE  IF NOT EXISTS covid_users_data (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     country VARCHAR(50),
--     associatedprimepatient_records VARCHAR(100),
--     associatedprimepatient_name VARCHAR(100)
-- );

-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Covid_associated_Email.csv'
-- INTO TABLE covid_users_data
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- select * from covid_users_data;

