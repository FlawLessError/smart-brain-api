-- Create Db
SELECT 'CREATE DATABASE smart-brain' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'smart-brain')\gexec

-- Deploy fresh database tables schemas
\i /docker-entrypoint-initdb.d/users.sql
\i /docker-entrypoint-initdb.d/login.sql
