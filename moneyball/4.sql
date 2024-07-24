select first_name, last_name, salary 
from players inner join salaries
on players.id = salaries.player_id
where year = 2001
order by salary asc, first_name asc, last_name asc, player_id asc
limit 50;