show databases;

use sakila;
show tables;

select * from city;

-- from "city" table show city and country_id
-- show only cities whose names have the letter "D" in any position and end with the letter "A"
-- display 15 data sorted by city name in ascending order
select city, country_id from city where city like '%d%a' limit 15;