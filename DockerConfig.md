### PostgreSQL Setup

# Run PostgreSQL container
docker run --name postgresql-container -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

# Inside PostgreSQL
CREATE DATABASE university_pg;

CREATE USER uni_admin WITH PASSWORD 'password123';
GRANT ALL PRIVILEGES ON DATABASE university_pg TO uni_admin;


### Oracle 21c XE Setup

# Run Oracle XE 21c container (basic)
docker run --name oracle-xe-21c -p 1521:1521 -p 5500:5500 -e ORACLE_PWD=Oracle21c -d container-registry.oracle.com/database/express:21.3.0-xe

# Run Oracle XE 21c container with volume
docker run --name oracle-xe-21c \
  -p 1521:1521 -p 5500:5500 \
  -e ORACLE_PWD=Oracle21c \
  -v oracle_data:/opt/oracle/oradata \
  -d container-registry.oracle.com/database/express:21.3.0-xe

# Inside Oracle XE (after connecting to SQLPlus)
ALTER SESSION SET CONTAINER = XEPDB1;

CREATE USER uni_orcl IDENTIFIED BY password123;
GRANT CONNECT, RESOURCE TO uni_orcl;
ALTER USER uni_orcl QUOTA UNLIMITED ON USERS;


### PostgREST Setup (API for PostgreSQL)

# Run PostgREST container
docker run --name postgrest-server \
  -p 3000:3000 \
  -e PGRST_DB_URI="postgres://uni_admin:password123@postgresql-container:5432/university_pg" \
  -e PGRST_DB_SCHEMA="public" \
  -e PGRST_DB_ANON_ROLE="uni_admin" \
  -d postgrest/postgrest

# Grant necessary privileges in PostgreSQL
GRANT USAGE ON SCHEMA public TO uni_admin;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO uni_admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO uni_admin;

# API Endpoint
http://localhost:3000/students


### Oracle FDBO Instance Setup

# Run Oracle XE container for FDBO integration
docker run -d --name oracle-fdbo --network my-network -p 1522:1521 -p 5501:5500 -e ORACLE_PWD=Oracle21c -v oracle_fdbo_data:/opt/oracle/oradata container-registry.oracle.com/database/express:21.3.0-xe


### MongoDB + RESTHeart Setup

# Start MongoDB container
docker run -d --name mongo-db --network my-network -p 27017:27017 mongo:6

# Start RESTHeart container (MongoDB API Layer)
docker run -d --name restheart \
  --network my-network \
  -p 8080:8080 \
  -e MONGO_URI=mongodb://mongo-db \
  -e RH_DEFAULT_MOUNT_WHAT=mds \
  -e RH_DEFAULT_MOUNT_WHERE=/mds \
  softinstigate/restheart


### ORDS (Oracle REST Data Services)

# Start ORDS locally
cd C:\Users\simin\ords\ords-24.4.0.345.1601\bin
ords --config C:\Users\simin\ords\config serve --port 8085

# ORDS Endpoints
http://localhost:8085/ords/
http://localhost:8085/ords/sql-developer
