select a.first_name fname, a.last_name lname
from actor a
where a.first_name like 'J%' and a.last_name like 'D%'
union all 
select c.first_name, c.last_name
from customer c 
where c.first_name like 'J%' and c.last_name like 'D%'
order by lname, fname;