select first_name, last_name 
from ( 
    select 
    players.id, 
    players.first_name, players.last_name,
    performances.player_id, 
    performances.year, 
    performances.HR, salaries.salary, 
    salaries.salary / performances.RBI as 'dollars per hit'
    from performances
    inner join salaries 
    on performances.year = salaries.year
    and performances.player_id = salaries.player_id
    inner join players
    on players.id = performances.player_id
    where performances.HR > 0
    and performances.year = 2001
    order by salaries.salary / performances.HR asc
    limit 10
) order by id