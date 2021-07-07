show databases;

use sakila;
show tables;

select * from film;
select * from film_actor;
select * from actor;

-- display title (from movie table), first name and last name (from actor table) 
-- with actor having actor_id = 14
select film.title as Judul_Film, actor.first_name, actor.last_name from ((film
INNER JOIN film_actor ON film.film_id = film_actor.film_id)
INNER JOIN actor ON actor.actor_id = film_actor.actor_id) where actor.actor_id = 14;