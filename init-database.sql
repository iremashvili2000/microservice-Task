-- Create schema if not exists
CREATE SCHEMA IF NOT EXISTS dbo;
CREATE SCHEMA IF NOT EXISTS "order";

-- Create User table if it doesn't exist
CREATE TABLE IF NOT EXISTS dbo."user" (
                                          id BIGSERIAL PRIMARY KEY,
                                          username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(50),
    about TEXT
    );
/*
-- Insert data into User table if it doesn't exist
INSERT INTO dbo."user" (username, email, password, role, age, gender, about)
SELECT 'user1', 'user1@example.com', 'hashedpassword1', 'USER', 25, 'Male', 'About user1'
WHERE NOT EXISTS (SELECT 1 FROM dbo."user" WHERE username = 'user1');

INSERT INTO dbo."user" (username, email, password, role, age, gender, about)
SELECT 'admin', 'admin@example.com', 'hashedpassword2', 'ADMIN', 30, 'Female', 'About admin'
WHERE NOT EXISTS (SELECT 1 FROM dbo."user" WHERE username = 'admin');
*/

-- Create Order table if it doesn't exist
CREATE TABLE IF NOT EXISTS "order".order (
                                             id BIGSERIAL PRIMARY KEY,
                                             user_id BIGINT NOT NULL,
                                             quantity INT NOT NULL,
                                             price DOUBLE PRECISION NOT NULL,
                                             status VARCHAR(30) NOT NULL,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    product VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES dbo."user" (id)
    );

