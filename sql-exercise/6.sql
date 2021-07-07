show databases;

use sakila;
show tables;

select * from film;
select * from language;

-- display a list of 15 movies that have the letter "K" at the end of the title, 
-- then display the title, duration, and language of the movie.
select film.title as Judul, 
film.length as Durasi, 
language.name as Bahasa from film 
INNER JOIN language ON film.language_id = language.language_id 
WHERE film.title like '%K' limit 15;