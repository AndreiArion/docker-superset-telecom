echo 'Initialising superset please wait...'
docker exec -it docker-superset-telecom-superset-1 superset-init
echo 'Superset initialisation done'
echo 'Creating exercice tables please wait...'
./create_tables.sh
echo 'Exercices tables done'
echo 'Populating example dashboards, this might take 10-15 minutes'
docker exec -it docker-superset-telecom-superset-1 superset-demo
echo 'Populating example dashboards done'
echo 'All done :) '
