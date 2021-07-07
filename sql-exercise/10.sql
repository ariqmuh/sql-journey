show databases;

use sakila;
show tables;

select * from film;
select title, description, length, rating from film 
where title like '%H' and length > (select avg(length) from film) 
limit 10;