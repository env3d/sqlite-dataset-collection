select schools.name from graduation_rates inner join schools on graduation_rates.school_id = schools.id where graduated 
= 100; 