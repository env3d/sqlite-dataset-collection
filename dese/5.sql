select city from schools where type='Public School' group by city having count(*) <= 3;