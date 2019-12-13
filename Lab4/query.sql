-- 1.
-- select country.country
-- from country
-- where country like 'P%'

-- 2.
-- select country.country
-- from country
-- where country like 'P%s'

-- 5
-- select a.last_name
-- from actor a
-- where a.last_name ~ '(P|C)' and length(a.last_name) = 5

-- 6
-- select f.title
-- from film f
-- where f.title ~~ '%Trip%' or  f.title ~~ '%Alone%'