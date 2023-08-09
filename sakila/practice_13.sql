-- select customer_id, first_name, last_name
-- from customer
-- where customer_id = (select max(customer_id) from customer)

-- select city_id, city
-- from city
-- join country on city.country_id = country.country_id
-- where country != 'India'
-- order by city_id;

-- select city_id, city
-- from city
-- where country_id in
--     (
--         select country_id
--         from country
--         where country in ('Canada', 'Mexico')
--     );

-- select customer_id, count(*)
-- from rental
-- group by customer_id
-- having count(*) > any
--     (
--         select count(*)
--         from rental r
--             inner join customer c
--             on r.customer_id = c.customer_id
--             inner join address a
--             on c.address_id = a.address_id
--             inner join city ct
--             on a.city_id = ct.city_id
--             inner join country co
--             on ct.country_id = co.country_id
--         where co.country in ('United States', 'Mexico', 'Canada')
--         group by r.customer_id
--     );

-- select fa.actor_id, fa.film_id
-- from film_actor fa
-- where fa.actor_id in 
--     (select actor_id from actor where last_name = 'MONROE')
--     and fa.film_id in
--     (select film_id from film where rating = 'PG');

-- select c.first_name, c.last_name
-- from customer c
-- where 
--     (select sum(p.amount) from payment p where p.customer_id = c.customer_id)
--     between 180 and 240;

-- update customer c
-- set c.last_update =
--     (
--         select max(r.rental_date) from rental r
--         where r.customer_id = c.customer_id
--     )
--     where exists
--     (
--         select 1 from rental r
--         where r.customer_id = c.customer_id
--     );

delete from customer
where 365 < all
    (
        select datediff(now(), r.rental_date) days_since_last_rental
        from rental r
        where r.customer_id = customer.customer_id
    );