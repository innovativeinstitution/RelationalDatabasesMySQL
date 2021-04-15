use sakila;

select * from actor limit 10;

select * from actor;
select last_name from actor order by last_name desc;

select * from actor order by 3 desc;

select first_name, last_name from actor;

select * from actor order by last_name, last_update;

select count(*) as 'Total Actor Count' from actor;

select actor_id as ActorId, first_name as FirstName, last_name as LastName from actor;
select count(last_name) from actor;

select * from country;
select * from country
where country like 'C%';

select * from country
where country = 'Argentina';

select * from country
where country like 'Argentin%';

select * from country
where country not like 'C%';

select concat(first_name, ' ', last_name) as ActorFullName from actor;

select max(amount) as MaxPayment from payment;

select amount from payment order by 1 desc limit 1;

select * from actor;
select * from film;

select * from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id;

select concat(a.first_name, ' ', a.last_name) as ActorName, f.title as FilmTitle
from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id;

select count(*)
from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
where f.rating = 'PG';

select concat(a.first_name, ' ', a.last_name) as ActorName, f.title as FilmTitle
from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
where f.rating = 'PG'
order by 1;


select * from actor a
join film_actor fa on a.actor_id = fa.actor_id;

select * from actor a
right join film_actor fa on a.actor_id = fa.actor_id
where fa.film_id = 3;

select * from customer c
join address a on c.address_id = a.address_id;

select * from customer;
select * from address;

select * from customer c
right join address a on c.address_id = a.address_id
where c.customer_id is NULL;

select * from address a
left join customer c on c.address_id = a.address_id
where c.customer_id is null;

select GetActorFullName(a.actor_id)
from actor a;






