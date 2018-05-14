 
Show title and special_features of films that are PG-13

select title,special_features,rating 
from film 
where rating like "PG-13" ;



Get a list of all the different films duration.

select distinct length 
from film 
order by 1;



Show title, rental_rate and replacement_cost of films that have replacement_cost from 20.00 up to 24.00

select title, rental_rate, replacement_cost 
from film 
where replacement_cost between 20 and 24 
order by 3;



Show title, category and rating of films that have 'Behind the Scenes'   as special_features 

select f.title, c.name, f.rating 
from film f, film_category, category c 
where special_features like "Behind the Scenes" 
and f.film_id=film_category.film_id 
and film_category.category_id=c.category_id 
order by 1; 



Show first name and last name of actors that acted in 'ZOOLANDER FICTION'

select first_name, last_name 
from actor, film, film_actor 
where actor.actor_id=film_actor.actor_id 
and film.film_id=film_actor.film_id 
and film.title like "ZOOLANDER FICTION" 
order by 2;



Show the address, city and country of the store with id 1.

select address, city, country 
from address, city, country, store 
where country.country_id=city.country_id 
and city.city_id=address.city_id 
and address.address_id=store.address_id 
and store_id = 1;


Show pair of film titles and rating of films that have the same rating.


SELECT film1.title, film1.rating, film2.rating, film2.title
FROM film film1, film film2
WHERE film1.rating = film2.rating
AND film1.title != film2.title;


Get all the films that are available in store id 2 and the manager first/last name
 of this store (the manager will appear in all the rows).

select distinct title,store.store_id, first_name, last_name 
from film, store, staff, inventory 
where film.film_id=inventory.film_id 
and store.store_id=inventory.store_id 
and staff.store_id=store.store_id  
and store.store_id = 2;


