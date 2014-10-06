-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root --local-infile -uroot -pandsoon -p dbms_project < import.sql 

LOAD DATA LOCAL INFILE '/home/mangla/Data/Learning/dbms_project/news_raw_db.csv' 
INTO TABLE `dbms_project`.`news`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 0 ROWS
(news_id, headline, @start_date_time_variable, @end_date_time_variable, source_id, source_link) -- read one of the field to variable
SET 
start_datetime = STR_TO_DATE(@start_date_time_variable, '%d/%m/%Y %H:%i'), -- format this date-time variable
end_datetime = STR_TO_DATE(@end_date_time_variable, '%d/%m/%Y %H:%i'); -- format this date-time variable
