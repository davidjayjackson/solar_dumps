select obs,monthyr,day,s,g,w 
from sun_data 
where date=2459397 and obs ='DUBF';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM sun_data
WHERE date = 2459397 AND obs = 'DUBF' AND w = 2655;



select obs,monthyr,day,s,g, s*g as Wolf
from sun_data 
where date=2459397 and obs ='DUBF';

SET SQL_SAFE_UPDATES = 0;
update sun_data
set w=s*g
where date=2459397 and obs ='DUBF';
SET SQL_SAFE_UPDATES = 1;