# volume instruction
docker build -t novaari20/volume volume

docker image inspect novaari20/volume

docker container create --name volume --env APP_PORT=8080 -p 8080:8080 novaari20/volume

# workdir
docker build -t novaari20/workdir workdir

docker container create --name workdir -p 8080:8080 novaari20/workdir

docker container start workdir

# mengakses shel / terminal dari containernya
docker container exec -i -t workdir /bin/sh

# argument instruction
docker build -t novaari20/arg arg --build-arg app=test

docker container create --name arg -p 8080:8080 novaari20/arg

docker container start arg