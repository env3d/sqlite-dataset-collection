-- At what type of address did the Devious Delivery end up?:
-- What were the contents of the Devious Delivery?:

select contents, t.address from scans 
inner join packages on scans.package_id = packages.id 
inner join addresses t on to_address_id = t.id 
where from_address_id is null 
and scans.action = 'Drop';