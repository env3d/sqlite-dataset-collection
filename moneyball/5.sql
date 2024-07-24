select distinct(teams.name) from teams
inner join salaries on teams.id = salaries.team_id
inner join players on salaries.player_id = players.id
where players.first_name = 'Steve' and players.last_name = 'Parris';