FROM mysql:8

COPY world.sql.gz /docker-entrypoint-initdb.d/
