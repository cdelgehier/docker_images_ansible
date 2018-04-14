[![](https://images.microbadger.com/badges/version/cdelgehier/docker_images_ansible.svg)](https://microbadger.com/images/cdelgehier/docker_images_ansible "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/cdelgehier/docker_images_ansible.svg)](https://microbadger.com/images/cdelgehier/docker_images_ansible "Get your own image badge on microbadger.com")

## Ansible Dockerfile


This repository contains **Dockerfile** of [Ansible](http://www.ansible.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://hub.docker.com/).


### Docker Image

* [Ubuntu 16.04](https://hub.docker.com/_/ubuntu/)
* [Ansible 2.5](http://docs.ansible.com/ansible/2.5/index.html#stq=&stp=1)


### Usage

`docker run -ti --rm cdelgehier/docker_images_ansible:2.5_ubuntu_16.04 bash`

or

```
docker run --detach \
  --volume=/run --volume=/run/lock --volume=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro \
  --cap-add=SYS_ADMIN --cap-add=SYS_RESOURCE \
  cdelgehier/docker_images_ansible:2.5_ubuntu_16.04 \
  /sbin/init
```
