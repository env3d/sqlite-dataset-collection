-- What are the contents of the Forgotten Gift?:
-- Who has the Forgotten Gift?:

select scans.action, scans.timestamp, drivers.name 
from scans 
inner join packages on scans.package_id = packages.id 
inner join addresses t on to_address_id = t.id 
inner join drivers on scans.driver_id = drivers.id 
where t.address = '728 Maple Place';