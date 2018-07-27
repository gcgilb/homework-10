use sakila;

select * from actor;

select first_name, last_name from actor;

select concat(concat(first_name, ' '), last_name) as 'Actor Name'
from actor;

select * from actor where first_name = "JOE";

select * from actor where last_name REGEXP "GEN";

select last_name, first_name from actor where last_name REGEXP "LI"
group by last_name;

select * from country;

select country_id, country from country
where country in ('Afghanistan', 'Bangladesh', 'China');

alter table actor add column middle_name varchar(50) After first_name;

select * from actor;

ALTER TABLE actor MODIFY middle_name blob;

ALTER TABLE actor drop middle_name;

select * from actor;

SELECT last_name,COUNT(*) as count FROM actor GROUP BY last_name;

SELECT last_name,COUNT(*) as count FROM actor 
GROUP BY last_name 
HAVING count >2;

select actor_id, first_name, last_name from actor
where first_name in ('GROUCHO');

update actor
set first_name = "HARPO"
where actor_id = 172;

UPDATE actor 
set first_name = "MUCHO GROUCHO"
where first_name = "GROUCHO";

update actor
set first_name = "GROUCHO"
where actor_id = 172;

select * from address;

select staff.first_name, staff.last_name, address.address
from staff
inner join address on
staff.address_id = address.address_id;

SELECT staff_id, SUM(amount) AS 'total'
FROM payment
GROUP BY staff_id
where payment_date like '%2005-05';

select * from rental








