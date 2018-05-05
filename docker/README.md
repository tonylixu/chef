### Download the Ubuntu 14.04 image from DockerHub
```bash
$ docker pull ubuntu:17.10
```

### Launch a container from the image
```bash
$ docker run -it -v $(pwd):/root/chef-repo -p 8100:80 ubuntu:17.10 /bin/bash
```

### Download latest packages
```bash
$ apt-get update
```