-- To run this type in terminal (from /path/to/tidings/web/scripts)
-- mysql -u root -p dbms_project < top_news_headlines.sql 

SET @current_datetime=cast('2014-03-10 06:47:00' as datetime );

SELECT headline,source_link,news_posts from(SELECT posts.news_id,COUNT(*) AS news_posts FROM posts WHERE start_datetime <= @current_datetime AND @current_datetime<=end_datetime GROUP BY posts.news_id ORDER BY news_posts DESC,start_datetime,end_datetime) AS topnews STRAIGHT_JOIN news ON topnews.news_id=news.news_id;