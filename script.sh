# FROM instruction
docker build -t novaari20/from from

# RUN instruction
docker build -t novaari20/run run

# command
docker build -t novaari20/command command

docker image inspect novaari20/command

docker container create --name command novaari20/command

docker container start command

docker container logs command

# Label INstruction
docker build -t novaari20/label label

# untuk melihat detail dari image yang di build
docker image inspect novaari20/label

# add instruction
docker build -t novaari20/add add

# copy instruction
docker build -t novaari20/copy copy

# expose instruction
# create container and listen on 8080
sudo docker container create --name expose -p 8080:8080 novaari20/expose

# env
docker build -t novaari20/env env

# ubah env
sudo docker container create --name env --env APP_PORT=9090 -p 9090:9090 novaari20/env