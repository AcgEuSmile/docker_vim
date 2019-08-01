# Docker vim & plugins environment

## 1.Get images
### Get image from docker hub
```
docker pull acgeusmile/vim_env_ubuntu
```
### Build image by yourself
```bash
docker build --rm -t acgeusmile/vim_env_ubuntu .
```

## 2.Run container and link local data to docker
### Run the vim container into terminal mode
If using windows docker path
```bash
docker run -it -P --name vim -v D:\Code:/root/ketercy acgeusmile/vim_env_ubuntu bash
```
If using ubuntu docker path
```bash
docker run -it -P --name vim -v /home/ketercy:/root/ketercy acgeusmile/vim_env_ubuntu bash
```
## Restart the vim container if the status of the vim container is exited
```bash
docker container start -ai vim
```
