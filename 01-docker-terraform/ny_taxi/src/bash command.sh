 # great db in docker container from psql image
 docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root"\
  -e POSTGRES_DB="my_taxi" \
  -v pga:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:13

# data viewing tools
 less data/yellow_tripdata_2023-01.csv 
 head -n 100 data/yellow_tripdata_2023-01.csv 

# access docker db from cl
pgcli -h localhost -p 5432 -u root -d my_taxi