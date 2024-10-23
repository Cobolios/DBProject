# Database component

## Steps for build and run a single database

### 1. Create sql files:

- 'schema.sql': Contains the SQL statements for create tables (using DDL)
- 'data.sql': COntains the SQL statements for inser initial data (using DML) 

### 2. Create 'Dockerfile'

Set postgres imagen base
- FROM postgres:14

Add lines for copy files into container:
- COPY ./db/schema.sql
- COPY ./db/data.sql clea

### 3. Build database iamge

Inside database folder:

'''
docker build -t username/facturion
'''

### 4. Run server with postgres

'''
docker run --name facturion -p 5432:5432 -e POSTGRES_PASSWORD=password username/facturion
'''