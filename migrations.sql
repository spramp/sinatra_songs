CREATE DATABASE songs_db;
CREATE TABLE songs (id SERIAL PRIMARY KEY, artist TEXT, title TEXT, release_year TEXT);
\c songs
SELECT * FROM songs
