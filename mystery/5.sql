with gym_members as (
    select person_id from get_fit_now_member 
    where id in (
        select membership_id from get_fit_now_check_in 
        where check_in_date = 20180109 
        and membership_id like '48Z%'
    )
) 
select person.* from person 
inner join drivers_license
on person.license_id = drivers_license.id
where person.id in (select * from gym_members)
