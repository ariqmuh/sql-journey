show databases;

use sakila;
show tables;

select * from film;
-- from the "film" table, display rating, Replacement_Cost_Highest, Rental_Rate_Lowest, and average duration
-- group them by film rating
select rating, MAX(replacement_cost) as Replacement_Cost_Tertinggi, 
MIN(rental_rate) as Rental_Rate_Terendah, 
AVG(length) as Rata_Rata_Durasi_Film from film
group by rating;