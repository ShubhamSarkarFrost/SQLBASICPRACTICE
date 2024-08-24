CREATE TABLE  IF NOT EXISTS covid_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(50),
    total_cases VARCHAR(100),
    total_deaths VARCHAR(100),
    total_recovered VARCHAR(100),
    active_cases VARCHAR(100),
    serious_cases VARCHAR(100),
    top_cases VARCHAR(100),
	deaths_cases VARCHAR(100),
    total_tests VARCHAR(100),
    tested_positive VARCHAR(100),
    population VARCHAR(100)
);

SHOW VARIABLES LIKE 'secure_file_priv';


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CovidData.csv'
INTO TABLE covid_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

DESCRIBE covid_data;  -- to Describe the columns 

select * from covid_data