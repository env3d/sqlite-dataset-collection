with witnesses as (
    select id from person 
    where name like 'Annabel%' and 
    address_street_name='Franklin Ave'
    UNION
    select id from person 
    where address_street_name = 'Northwestern Dr' and
    address_number = (
        select max(address_number) 
        from person where 
        address_street_name = 'Northwestern Dr')
)
select transcript from interview 
where person_id in (select * from witnesses)

-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".
-- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
