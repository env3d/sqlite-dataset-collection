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

