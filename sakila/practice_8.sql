select 'ACTR' posi, a.first_name, a.last_name
from actor a
where a.last_name like 'L%'
union all
select 'CUST' posi, c.first_name, c.last_name
from customer c
where c.last_name like 'L%'
order by last_name