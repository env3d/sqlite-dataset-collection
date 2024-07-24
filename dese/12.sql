select districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary 
from districts 
inner join expenditures on districts.id = expenditures.district_id
inner join staff_evaluations on districts.id = staff_evaluations.district_id
where districts.id in ( 
    select district_id from expenditures where per_pupil_expenditure > (select avg(per_pupil_expenditure) from expenditures)
    INTERSECT 
    select district_id from staff_evaluations where exemplary > (select avg(exemplary) from staff_evaluations)
) order by staff_evaluations.exemplary desc, expenditures.per_pupil_expenditure desc;