
## Ansible Dockerfile


This repository contains **Dockerfile** of [Ansible](http://www.ansible.com/) for [Docker](https://www.docker.com/)'s automated build published to the public [Docker Hub Registry](https://hub.docker.com/).


### Docker Image

* [Centos 7](https://hub.docker.com/r/_/centos/)
* [Ansible 2.5](http://docs.ansible.com/ansible/2.5/index.html#stq=&stp=1)


### Usage

`docker run -ti --rm cdelgehier/docker_images_ansible:2.5_centos_7 bash`

or

```
docker run --detach --privileged \
  --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro \
  cdelgehier/docker_images_ansible:2.5_centos_7 \
  /usr/lib/systemd/systemd
```
