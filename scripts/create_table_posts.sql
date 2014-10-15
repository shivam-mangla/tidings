-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root -p dbms_project < create_table_posts.sql

CREATE TABLE  `dbms_project`.`posts` (
`post_id` INT NOT NULL,
`news_id` varchar(32) NOT NULL,
`start_datetime` DATETIME,
`end_datetime` DATETIME,
`source_id` INT,
PRIMARY KEY (  `post_id` ) 
) ENGINE = MYISAM COMMENT = 'It contains all shared posts given in raw database with the corresponding news id.' 
