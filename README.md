# Docker vim & plugins environment

## Build vim environment
docker build --rm -t chu/vim_env .

## Run container and link local data to docker
docker run -d -P --name vim -v /home/ketercy:/root/ketercy chu/vim_env /usr/bin/vim
## Run in vim environment
docker exec -it vim bash
