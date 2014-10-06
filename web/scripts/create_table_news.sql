-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql dbms_project < create_table_news.sql

CREATE TABLE  `dbms_project`.`news` (
`news_id` INT NOT NULL,
`headline` varchar(512),
`source_link` varchar(512), 
FOREIGN KEY (`news_id`) REFERENCES posts(`news_id`),
UNIQUE (
`headline`
)
) ENGINE = MYISAM COMMENT = 'It contains all news items corresponding to a news_id to reduce data redundancy'
