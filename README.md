It's my docker preset

Use nginx, php-fpm, mongo, rockmongo, memcached, redis
=============================

If you don't install docker:

For Linux - http://docs.docker.com/linux/step_one/

For Mac OS, Windows - https://www.docker.com/docker-toolbox


### Run automatically
Linux
```sh
docker/linux.sh
```

Mac OS 
```sh
docker/macos.sh
```

For Windows maybe write later


### Run manually

For Mac OS:
```sh
docker-machine create --driver VirtualBox default
eval "$(docker-machine env default)"
docker-compose build
docker-compose up -d
```

For Linux:
```sh
docker-compose build
docker-compose up -d
```

For Windows:

I really don't know how docker working on Windows, so maybe write later
