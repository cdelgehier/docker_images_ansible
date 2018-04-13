[![](https://images.microbadger.com/badges/version/cdelge:wq
hier/docker_images_ansible.svg)](https://microbadger.com/images/cdelgehier/docker_images_ansible "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/cdelgehier/docker_images_ansible.svg)](https://microbadger.com/images/cdelgehier/docker_images_ansible "Get your own image badge on microbadger.com")

## Ansible Dockerfile


This repository contains **Dockerfile** of [Ansible](http://www.ansible.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://hub.docker.com/).


### Base Docker Image

* [Centos 7](https://hub.docker.com/r/_/centos/)


### Usage

`docker run -ti --rm cdelgehier/docker_images_ansible:2.5_centos_7 bash`
or
```
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro cdelgehier/docker_images_ansible:2.5_centos_7 /usr/lib/systemd/systemd
```
