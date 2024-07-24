select salary
from performances
inner join salaries 
on performances.player_id = salaries.player_id
inner join players
on performances.player_id = players.id
where HR = (select max(HR) from performances where year = 2001)
and salaries.year = 2001