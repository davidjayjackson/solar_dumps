library(tidyverse)
library(DBI)
library(RMariaDB)
library(arrow)

rm(list=ls())
# 
con <- dbConnect(
  MariaDB(),
  host     = "localhost",
  user     = "root",
  password = "dJj135790",
  dbname   = "solar"
)



dbListTables(con)

# Export SQL Tables
## sun_data
sun_data <- dbGetQuery(con,"SELECT * FROM sun_data")
write_parquet(sun_data,"./sun_data.parquet")
## sun_header
sun_header <- dbGetQuery(con,"SELECT * FROM sun_header")
write_parquet(sun_header,"./sun_header.parquet")
## sun_obsconst
sun_obsconst <- dbGetQuery(con,"SELECT * FROM sun_obsconst")
write_parquet(sun_obsconst,"./sun_obsconst.parquet")