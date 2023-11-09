-- Dimension Table: dim_user
CREATE TABLE dim_user (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    country VARCHAR(50)
);

-- Dimension Table: dim_post
CREATE TABLE dim_post (
    post_id INT PRIMARY KEY,
    post_text VARCHAR(500),
    post_date DATE,
    user_id INT REFERENCES dim_user(user_id)
);

-- Dimension Table: dim_date
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY
);