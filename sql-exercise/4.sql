show databases;

use sakila;
show tables;

select * from film;

-- from the "film" table, show title, length, and rating whose duration is more than the average total film duration
-- show 25 data sorted from longest duration
select title, length, rating from film 
where length > (select avg(length) from film) 
order by length desc limit 25;