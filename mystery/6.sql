select * from interview where person_id = 67318;

-- 67318|I was hired by a woman with a lot of money. 
-- I don't know her name but I know she's around 5'5" 
-- (65") or 5'7" (67"). She has red hair and she drives 
-- a Tesla Model S. I know that she attended the SQL Symphony 
-- Concert 3 times in December 2017.

select * from person
inner join drivers_license 
on person.license_id = drivers_license.id
where drivers_license.id in (
    select license_id from person 
    where person.id in (
        select person_id from facebook_event_checkin 
        where event_name = 'SQL Symphony Concert' 
        and date between 20171201 and 20171231 
        group by person_id having count(*) == 3
    )
)

