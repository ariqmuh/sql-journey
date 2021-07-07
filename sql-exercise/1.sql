
show databases;

use sakila;
show tables;

-- From "payment" table, show 10 first row data of customer_id, rental_id, amount, and payment_date
select customer_id, rental_id, amount, payment_date from payment limit 10;
