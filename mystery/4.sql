select person_id from get_fit_now_member 
where id in (
    select membership_id from get_fit_now_check_in 
    where check_in_date = 20180109 
    and membership_id like '48Z%'
    );