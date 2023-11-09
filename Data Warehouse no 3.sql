CREATE TABLE fact_post_performance (
    post_id INT REFERENCES dim_post(post_id),
    date_id DATE REFERENCES dim_date(date_id),
    views INT,
    likes INT
);