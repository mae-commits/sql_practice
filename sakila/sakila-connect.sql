select a.address_id, a.address, ct.city
from address a
    inner join city ct on a.city_id = ct.city_id
    where a.district = 'California';