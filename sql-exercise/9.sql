show databases;

use sakila;
show tables;

select * from film;
select * from category;
select * from film_category;

select category.name as Genre, count(title) as Banyak_Film from ((film
INNER JOIN film_category ON film.film_id = film_category.film_id)
INNER JOIN category ON film_category.category_id = category.category_id) 
group by Genre order by Banyak_Film;
