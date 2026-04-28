create table report as
select * 
from sun_data 

SET SQL_SAFE_UPDATES = 0;
DELETE FROM report WHERE obs IN ('SDOH', 'MMI');
SET SQL_SAFE_UPDATES = 1;

select count(*) from report;

update sun_data
set monthyr ="may 2000"
where monthyr ="May 2000";

select * from df where monthyr ="may 2000";

CREATE TABLE SDOHMMI as
select * from sun_data
WHERE obs IN ('SDOH', 'MMI');