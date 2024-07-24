select teams.name, sum(h) as 'total hits' 
from performances inner join teams
on performances.team_id = teams.id
group by team_id
order by sum(h) desc
limit 5