-- select count(category_id) from category
-- select name from category order by name 
-- select release_year, title from film order by release_year desc
-- select count(rental_date) from rental where rental.rental_date >= '2005-07-01' and rental.rental_date <= '2005-08-01'   
-- select count(*) from rental where rental.rental_date > '2010-01-01' and rental.rental_date < '2011-02-01'   
-- select *  from payment order by amount desc limit 1

-- 7.
-- select customer.address_id, address.city_id, city.country_id, country.country
-- from customer 
-- inner join address on (address.address_id = customer.address_id)
-- inner join city on (city.city_id = address.city_id)
-- inner join country on (country.country_id = city.country_id)
-- where country.country = 'Poland' or country.country = 'Nigeria' or country.country = 'Bangladesh'

-- 8.
-- select staff.last_name, address.address, city.city, country.country
-- from staff
-- inner join address on (address.address_id = staff.address_id)
-- inner join city on (city.city_id = address.city_id)
-- inner join country on (country.country_id = city.country_id)

-- 9.
-- select count(country.country)
-- from staff
-- inner join address on (address.address_id = staff.address_id)
-- inner join city on (city.city_id = address.city_id)
-- inner join country on (country.country_id = city.country_id)
-- where country.country = 'Spain' or country.country = 'Argentina'

-- 10.
-- select distinct category.name 
-- from rental
-- inner join inventory on (inventory.inventory_id = rental.inventory_id)
-- inner join film_category on (film_category.film_id = inventory.film_id)
-- inner join category on (category.category_id = film_category.category_id)

-- 11.
-- select distinct category.name
-- from rental
-- inner join inventory on(inventory.inventory_id = rental.inventory_id)
-- inner join film_category on(film_category.film_id = inventory.film_id)
-- inner join category on(category.category_id = film_category.category_id)

-- inner join store on(store.store_id = inventory.store_id)
-- inner join address on(address.address_id = store.address_id)
-- inner join city on(city.city_id = address.city_id)
-- inner join country on(country.country_id = city.country_id)
-- where country.country = 'Canada'

-- 12.
-- select film.title
-- from film
-- inner join film_actor on(film_actor.film_id = film.film_id)
-- inner join actor on(actor.actor_id = film_actor.actor_id)
-- where actor.first_name = 'Olympia' and actor.last_name = 'Pfeiffer' 
-- or actor.first_name = 'Julia' and actor.last_name = 'Zellweger'
-- or actor.first_name = 'Ellen' and actor.last_name = 'Presley'

