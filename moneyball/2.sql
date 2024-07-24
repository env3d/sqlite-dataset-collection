select year, salary from salaries 
inner join players on salaries.player_id = players.id
where first_name like 'Cal' and last_name = 'Ripken'
order by year desc;