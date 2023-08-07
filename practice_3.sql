select f.title, f_prnt.title prequel
from film f
    inner join f as f_prnt
    on f_prnt.film_id = f.prequel_film_id
    where f.prequel_film_id is not null;