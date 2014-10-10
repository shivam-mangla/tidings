-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root -p dbms_project < create_index_newsid_posts.sql 

ALTER TABLE posts ADD INDEX news_id(news_id);
-- Fast search by news_id attribute