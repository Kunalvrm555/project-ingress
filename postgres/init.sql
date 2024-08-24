-- Create database ingress
DO $$ 
BEGIN 
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'ingress') THEN 
        CREATE DATABASE ingress; 
    END IF; 
END $$;
-- Connect to database ingress
\c ingress;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    rollno TEXT NOT NULL,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    dept TEXT NOT NULL,
    PRIMARY KEY (rollno)
);

-- Create logs table
CREATE TABLE IF NOT EXISTS logs (
    rollno TEXT,
    name TEXT,
    checkintime TIMESTAMP,
    checkouttime TIMESTAMP
);
