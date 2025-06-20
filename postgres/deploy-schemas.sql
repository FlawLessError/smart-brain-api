-- Create Db
SELECT 'CREATE DATABASE smart-brain' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'smart-brain')\gexec

-- Create tables schemas
BEGIN TRANSACTION;

  CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email TEXT UNIQUE NOT NULl,
    entries BIGINT DEFAULT 0,
    joined TIMESTAMP NOT NULL
  );

COMMIT;

BEGIN TRANSACTION;

  CREATE TABLE IF NOT EXISTS login (
    id SERIAL PRIMARY KEY,
    hash VARCHAR(100) NOT NULL,
    email TEXT UNIQUE NOT NULl
  );

COMMIT;
