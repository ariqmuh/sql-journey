show databases;

use sakila;
show tables;

WITH rental_duration_avg
AS (SELECT AVG(rental_duration) AS avg_duration
FROM sakila.film),
stage_1 as (
select c.name, SUM(f.rental_duration) as total_rental_duration
from sakila.film f
JOIN sakila.film_category fc
ON fc.film_id = f.film_id
JOIN sakila.category c 
ON fc.category_id = c.category_id
WHERE f.rental_duration <= (select avg_duration from rental_duration_avg)
GROUP BY 1
)
SELECT name, 
total_rental_duration, 
SUM(total_rental_duration) OVER (ORDER BY total_rental_duration DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cum_sum,
AVG(total_rental_duration) OVER (ORDER BY total_rental_duration DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS moving_avg
FROM stage_1
LIMIT 5;

 
