-- Populate dim_user
INSERT INTO dim_user (user_id, user_name, country) SELECT user_id, user_name, country FROM raw_users;

-- Populate dim_post
INSERT INTO dim_post (post_id, post_text, post_date, user_id) SELECT post_id, post_text, post_date, user_id FROM raw_posts;

-- Populate dim_date
INSERT INTO dim_date (date_id) SELECT DISTINCT post_date FROM raw_posts;