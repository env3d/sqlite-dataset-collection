select players.first_name, players.last_name, salaries.salary, performances.HR, performances.year
from players 
inner join salaries
on players.id = salaries.player_id
inner join performances
on players.id = performances.player_id and salaries.year = performances.year
order by players.id asc, performances.year desc, performances.HR desc, salaries.salary desc