show databases;

use sakila;
show tables;

select * from film;

-- From the film table show rental_duration, the number of films per rental duration, and the average duration of the film. 
-- Group the number of films and the average duration of films by rental duration.
-- Round 2 numbers after the comma in the average duration of the movie.
select rental_duration as durasi_rental, 
count(title) as banyak_film, 
round(avg(length), 2) as rata_rata_durasi_film 
from film group by durasi_rental order by durasi_rental;
