-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql dbms_project < create_table.sql

CREATE TABLE  `dbms_project`.`news` (
`news_id` INT NOT NULL AUTO_INCREMENT,
`headline` varchar(512),
`start_datetime` DATETIME,
`end_datetime` DATETIME,
`source_id` INT,
`source_link` varchar(512), 
PRIMARY KEY (  `news_id` ) ,
UNIQUE (
`news_id`
)
) ENGINE = MYISAM COMMENT = 'It contains news items given in raw database' 
