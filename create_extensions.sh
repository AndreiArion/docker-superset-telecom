docker exec -it docker-superset-telecom-db-1 /bin/bash -c '
echo "Creating database and installing extensions"
  
psql -v ON_ERROR_STOP=1 --username superset --dbname superset <<-EOSQL
    CREATE DATABASE telecom_tp1;
    CREATE EXTENSION IF NOT EXISTS tablefunc; 
    CREATE EXTENSION IF NOT EXISTS dict_xsyn;
    CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
    CREATE EXTENSION IF NOT EXISTS pg_trgm;
    CREATE EXTENSION IF NOT EXISTS cube;
EOSQL

'