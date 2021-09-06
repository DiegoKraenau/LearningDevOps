CREATE USER diego WITH PASSWORD 'diego2009';
DROP DATABASE IF EXISTS diegobd_test;
CREATE DATABASE diegobd_test;
GRANT ALL PRIVILEGES ON DATABASE diegobd_test TO diego;

\c diegobd_test;
CREATE TABLE  users (
   id SERIAL PRIMARY KEY,
   name VARCHAR (250)
);

GRANT ALL PRIVILEGES ON TABLE users TO diego;

INSERT INTO users (id,name) values(1,'Preproducción');