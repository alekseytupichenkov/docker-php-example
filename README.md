It's my docker preset

Use nginx, php-fpm, mongo, rockmongo, memcached, redis


If you don't install docker:

For Linux - http://docs.docker.com/linux/step_one/

For Mac OS, Windows - https://www.docker.com/docker-toolbox


You can run script for automatically run docker:

For Linux docker/linux.sh

For Mac OS docker/macos.sh

For Windows maybe write later


Or run manually:

For Mac OS:

{code}
docker-machine create --driver VirtualBox default
eval "$(docker-machine env default)"
docker-compose build
docker-compose up -d
{code}

For Linux:

{code}
docker-compose build
docker-compose up -d
{code}

For Windows:

I really don't know how docker working on Windows, so maybe write later
