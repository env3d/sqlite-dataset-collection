select name, round(avg(salary),2)
from salaries inner join teams
on salaries.team_id = teams.id
where salaries.year = 2001
group by team_id
order by avg(salary) asc limit 5