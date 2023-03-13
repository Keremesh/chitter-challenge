DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name text,
    username text, 
    email text,
    password text
    );

TRUNCATE TABLE users RESTART IDENTITY; 

INSERT INTO users (name, username, email, password) VALUES ('Anna', 'Anna1', 'anna@a.com', 'password_anna'),
('Ben', 'Ben2', 'ben@b.com', 'password_ben');
