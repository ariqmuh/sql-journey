show databases;

use sakila;
show tables;

select * from film;

WITH total_film_category as (
SELECT f.name, 
count(fc.film_id) as total_film 
FROM sakila.category f
JOIN sakila.film_category fc
ON fc.category_id = f.category_id
JOIN sakila.film f2
ON f2.film_id = fc.film_id
GROUP BY 1
),
stage_1 AS (
SELECT name, total_film, RANK() OVER (ORDER BY total_film DESC) AS rank_count
FROM total_film_category
)
SELECT f2.rating, AVG(f2.rental_duration) as avg_rental_duration
FROM sakila.category f
JOIN sakila.film_category fc
ON fc.category_id = f.category_id
JOIN sakila.film f2
ON f2.film_id = fc.film_id
WHERE f.name IN (SELECT name FROM stage_1 WHERE rank_count <=3)
GROUP BY f2.rating
ORDER BY 2 DESC;





