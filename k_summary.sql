CREATE TABLE ksummary AS
select 
Obs, min(k) as mink,
max(k) as maxk, 
round(avg(k),3) as avgk,
round(max(k) - min(k),3) as diffk
from sun_obsconst
group by Obs;

SELECT ymd,k,s,g,w 
from sun_data limit 10;