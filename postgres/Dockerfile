FROM postgres

COPY /tables/ /docker-entrypoint-initdb.d/tables/
COPY deploy-schemas.sql /docker-entrypoint-initdb.d/
