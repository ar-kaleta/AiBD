-- 1.
-- select staff.first_name, staff.last_name
-- from staff
-- inner join address on(address.address_id = staff.address_id)
-- inner join city on(city.city_id = address.city_id)
-- inner join country on(country.country_id = city.country_id)
-- where country = 'Canada' and store_id = '1'

-- 2.
-- select title, film.length 
-- from film
-- where film.length = 49

-- 3.
-- select customer.first_name, customer.last_name, city_id
-- from customer
-- inner join address on(address.address_id = customer.address_id)
-- where city_id = 10

-- 4.
-- select sum(avg_all) from
-- (select title, avg(amount) avg_all
-- from film
-- inner join inventory on(inventory.film_id = film.film_id)
-- inner join rental on(rental.inventory_id = inventory.inventory_id)
-- inner join payment on(payment.rental_id = rental.rental_id)
-- group by title) as tab

-- 5. 
-- select category.name, count(film_category.film_id)
-- from category
-- inner join film_category on(film_category.category_id = category.category_id)
-- group by category.name

-- 6. 
select
from customer

-- 9.
-- select avg(amount)
-- from film
-- inner join inventory on(inventory.film_id = film.film_id)
-- inner join rental on(rental.inventory_id = inventory.inventory_id)
-- inner join payment on(payment.rental_id = rental.rental_id)
