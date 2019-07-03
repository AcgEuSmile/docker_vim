# Docker vim & plugins environment

## Build vim environment
docker build --rm -t chu/vim_env .

docker run -d -P --name vim -v /home/ketercy:/root/ketercy chu/vim_env /usr/bin/vim

docker exec -it vim bash
