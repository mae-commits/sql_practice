-- select customer_id, count(*)
-- from rental
-- group by customer_id
-- having count(*) >= 40;

-- select 
--     customer_id,
--     max(amount) max_amt,
--     min(amount) min_amt,
--     avg(amount) avg_amt,
--     sum(amount) tot_amt, 
--     count(*) num_payments
-- from payment
-- group by customer_id;

-- select 
--     count(customer_id) num_rows,
--     count(distinct customer_id) num_customers
-- from payment;

-- select max(datediff(return_date, rental_date))
-- from rental;

drop table number_tbl;

create table number_tbl
    (val smallint);

insert into number_tbl
values
    (1),
    (3),
    (5);

select 
    count(*) num_rows,
    count(val) num_vals,
    sum(val) total,
    max(val) max_val,
    avg(val) avg_val
from number_tbl;

insert into number_tbl values (null);

select 
    count(*) num_rows,
    count(val) num_vals,
    sum(val) total,
    max(val) max_val,
    avg(val) avg_val
from number_tbl;