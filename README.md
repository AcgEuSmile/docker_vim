# Docker vim & plugins environment

## Get images
### Get image from docker hub
```
docker pull acgeusmile/vim_env_ubuntu
```
### Build image by yourself
```bash
docker build --rm -t chu/vim_env .
```

## Run container and link local data to docker
### Method 1 | Run vim directorily
If using ubuntu docker path
```bash
docker run -it -P --name vim -v D:\Code:/root/ketercy chu/vim_env /usr/bin/vim
```
If using ubuntu docker path
```bash
docker run -it -P --name vim -v /home/ketercy:/root/ketercy chu/vim_env /usr/bin/vim
```
### Method 2 | Let container always open
### alwakys open docker container
If using windows docker path
```bash
docker run -d -P --name vim -v D:\Code:/root/ketercy chu/vim_env tail -f /dev/null
```
If using ubuntu docker path
```bash
docker run -d -P --name vim -v /home/ketercy:/root/ketercy chu/vim_env tail -f /dev/null
```
## Run in vim environment
```bash
docker exec -it vim bash
```
