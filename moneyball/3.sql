select year, HR from performances 
inner join players
on players.id = performances.player_id
where players.first_name = 'Ken' and players.last_name = 'Griffey'
and players.birth_year = 1969
order by year desc;