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
-- select sum(tab.avg_all)
-- from (select distinct title, avg(payment.amount) avg_all
--     from film
--     inner join inventory on(inventory.film_id = film.film_id)
--     inner join rental on(rental.inventory_id = inventory.inventory_id)
--     inner join payment on(payment.rental_id = rental.rental_id)
--     group by title) as tab


-- 5.
-- select category.name, count(film_category.film_id)
-- from category
-- inner join film_category on(film_category.category_id = category.category_id)
-- group by category.name

-- 6.
-- select country, count(cu.customer_id)
-- from customer cu
-- inner join address a on cu.address_id = a.address_id
-- inner join city ci on a.city_id = ci.city_id
-- inner join country co on ci.country_id = co.country_id
-- group by co.country

-- 7.
-- select tab.store_id, st.address_id
-- from (select i.store_id, count(distinct customer_id) numOfCustomers
--     from store s
--     inner join inventory i on s.store_id = i.store_id
--     inner join rental r on i.inventory_id = r.inventory_id
--     group by i.store_id) tab
-- inner join store st on st.store_id = tab.store_id
-- where tab.numOfCustomers > 100 and tab.numOfCustomers < 600

-- 8.
-- select *
-- from (select r.customer_id, sum(f.length) len
--     from rental r
--     inner join inventory i on r.inventory_id = i.inventory_id
--     inner join film f on i.film_id = f.film_id
--     group by r.customer_id) tab
--     where tab.len > 200

-- 9.
-- select avg(amount)
-- from film
-- inner join inventory on(inventory.film_id = film.film_id)
-- inner join rental on(rental.inventory_id = inventory.inventory_id)
-- inner join payment on(payment.rental_id = rental.rental_id)

-- 10.
-- select category.name, avg(f.length)
-- from category
-- inner join film_category on(film_category.category_id = category.category_id)
-- inner join film f on film_category.film_id = f.film_id
-- group by category.name

-- 11.
-- select ca.name, max(tab.len), title
-- from (select category.name, f.title, length(f.title) len
--     from category
--     inner join film_category on(film_category.category_id = category.category_id)
--     inner join film f on film_category.film_id = f.film_id) tab
-- inner join category ca on ca.name = tab.name
-- group by ca.name

-- 12.
-- select category.name, max(f.length)
-- from category
-- inner join film_category on(film_category.category_id = category.category_id)
-- inner join film f on film_category.film_id = f.film_id
-- group by category.name