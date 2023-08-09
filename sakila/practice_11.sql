-- select actor_id, count(*)
-- from film_actor
-- group by actor_id;

-- select fa.actor_id, f.rating, count(*)
-- from film_actor fa 
--     inner join film f
--     on fa.film_id = f.film_id
-- group by fa.actor_id, f.rating
-- order by 1,3;

-- select extract(year from rental_date) year, 
--     count(*) how_many
-- from rental
-- group by extract(year from rental_date);

-- select * from
-- (
--     select fa.actor_id, f.rating, count(*)
--     from film_actor fa 
--         inner join film f
--         on fa.film_id = f.film_id
--     group by fa.actor_id, f.rating with rollup
-- ) as db
-- order by 1,2;

select fa.actor_id, f.rating, count(*)
from film_actor fa
    inner join film f
    on fa.film_id = f.film_id
where f.rating in ('G', 'PG')
group by fa.actor_id, f.rating
having count(*) > 9;