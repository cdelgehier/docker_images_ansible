## Ansible Dockerfile


This repository contains **Dockerfile** of [Ansible](http://www.ansible.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://hub.docker.com/).


### Docker Image

* [Debian 9](https://hub.docker.com/_/debian/)
* [Ansible 2.5](http://docs.ansible.com/ansible/2.5/index.html#stq=&stp=1)


### Usage

`docker run -ti --rm cdelgehier/docker_images_ansible:2.5_debian_9 bash`

or

```
docker run --detach \
  --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro \
  --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE \
  cdelgehier/docker_images_ansible:2.5_debian_9 \
  /sbin/init
```
