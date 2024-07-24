
-- make sure to go over the use of subquery vs limit

select players.first_name, players.last_name
from players inner join salaries
on players.id = salaries.player_id
where salary = (
    select max(salary)
    from salaries
)
