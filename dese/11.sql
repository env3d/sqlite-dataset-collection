select schools.name, expenditures.per_pupil_expenditure, graduation_rates.graduated 
from expenditures 
inner join districts on expenditures.district_id = districts.id 
inner join schools on districts.id = schools.district_id 
inner join graduation_rates on schools.id = graduation_rates.school_id 
order by expenditures.per_pupil_expenditure desc, schools.name;