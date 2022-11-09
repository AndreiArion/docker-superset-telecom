1. Git clone repository
```
git clone git@github.com:AndreiArion/docker-superset-telecom.git
```
2. Go to the folder and start docker composer 
```
cd docker-superset-telecom
docker compose up
```
3. Wait that the superset server has initialized (you can see the UI at http://localhost:8088)
4. In another terminal execute the configuration script
```
./configure.sh
```
5. Configure a Superset datasource and follow the TP exercices