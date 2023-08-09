select customer_id, count(*), sum(amount)
from payment
group by customer_id
having count(*) >= 40;