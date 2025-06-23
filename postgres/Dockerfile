FROM postgres

COPY /tables/ /docker-entrypoint-initdb.d/
# won't work idk why
COPY deploy-schemas.sql /docker-entrypoint-initdb.d/
