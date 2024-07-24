-- At what type of address did the Lost Letter end up?:
-- At what address did the Lost Letter end up?:

select t.type, t.address from scans 
inner join packages on scans.package_id = packages.id 
inner join addresses f on packages.from_address_id = f.id  
inner join addresses t on packages.to_address_id = t.id 
where f.address = '900 Somerville Avenue' 
and t.address = '2 Finnigan Street' 
and scans.action = 'Drop';
