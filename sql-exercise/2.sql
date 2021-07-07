
show databases;

use sakila;
show tables;

select * from film;

-- From film table show 10 title, release_year, and rental_duration where the movie titles shown start with the letter "S"
select title, release_year, rental_duration from film 
where title like 'S%' limit 10;