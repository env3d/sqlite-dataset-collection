select districts.name, expenditures.per_pupil_expenditure 
from expenditures inner join districts 
on expenditures.district_id = districts.id 
order by expenditures.per_pupil_expenditure 
desc limit 10;