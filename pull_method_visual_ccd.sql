create view method_visual as
select 
Obs,method
 from sun_header 
 where method in ("direct","projection")
 group by Obs,method;
 
 create view method_ccd as
select 
Obs,method
 from sun_header 
 where method = "CCD"
 group by Obs,method;
 
 CREATE VIEW roport_visual AS
 select 
 v.Obs,d.year,d.ymd,v.method,d.W
 from method_visual v
 left join df d
 on v.Obs = d.Obs;
 
 CREATE VIEW roport_ccd AS
 select 
 v.Obs,d.year,d.ymd,v.method,d.W
 from method_ccd v
 left join df d
 on v.Obs = d.Obs;
 
 SELECT * from roport_visual;