-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root -p dbms_project < recent_posts.sql 

SET @current_datetime=cast('2014-03-10 06:47:00' as datetime );

SELECT headline,source_link FROM (SELECT news_id FROM posts WHERE start_datetime<=@current_datetime AND @current_datetime<=end_datetime ORDER BY start_datetime DESC) AS recentposts STRAIGHT_JOIN news ON recentposts.news_id=news.news_id;