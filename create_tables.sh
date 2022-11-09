docker exec -it docker-superset-telecom-db-1 /bin/bash -c '
set +x
psql -v ON_ERROR_STOP=1 --username superset --dbname superset -f tables.sql 
'