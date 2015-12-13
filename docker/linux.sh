#!/bin/sh
IP="$(docker-machine ip default)"
if [[ -z "$IP" ]]; then
    IP=127.0.0.1
fi

echo "Stop all current docker container"
docker stop $(docker ps -q) > /dev/null 2>&1

echo "Build all docker containers"
docker-compose build > /dev/null 2>&1
echo "Start all docker container"
docker-compose up -d

echo ""
echo "Docker stop and build logs: ~/docker.log"
echo "Docker container logs: docker-compose logs"

echo ""
echo "RockMongo: http://$IP:8081 admin/admin"
echo "Site: http://$IP:8080"
