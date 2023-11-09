CREATE TABLE fact_daily_posts (
    user_id INT REFERENCES dim_user(user_id),
    date_id DATE REFERENCES dim_date(date_id),
    posts INT
);