# volume instruction
docker build -t novaari20/volume volume

docker image inspect novaari20/volume

docker container create --name volume --env APP_PORT=8080 -p 8080:8080 novaari20/volume