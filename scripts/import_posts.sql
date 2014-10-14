-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root --local-infile -uroot -pandsoon -p dbms_project < import_posts.sql 

LOAD DATA LOCAL INFILE '../../news_raw_db.csv' 
INTO TABLE `dbms_project`.`posts`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 0 ROWS
(post_id, @news_headline, @post_start_date_time_variable, @post_end_date_time_variable, source_id, @news_source_link) -- read one of the field to variable
SET 
news_id = MD5(@news_headline),
-- we can safely use MD5 because
-- http://stackoverflow.com/questions/1756004/can-two-different-strings-generate-the-same-md5-hash-code
start_datetime = STR_TO_DATE(@post_start_date_time_variable, '%d/%m/%Y %H:%i'), -- format this date-time variable
end_datetime = STR_TO_DATE(@post_end_date_time_variable, '%d/%m/%Y %H:%i'); -- format this date-time variable
