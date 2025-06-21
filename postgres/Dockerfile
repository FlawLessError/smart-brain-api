FROM postgres

COPY /tables/ /docker-entrypoint-initdb.d/
COPY deploy-schemas.sql /docker-entrypoint-initdb.d/
