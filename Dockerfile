FROM ubuntu:18.04
MAINTAINER Cedric DELGEHIER <cedric.delgehier@laposte.net>

ENV container docker

# Install Ansible
RUN \
    (cd /lib/systemd/system/sysinit.target.wants/ || exit; for i in *; do [ "$i" = systemd-tmpfiles-setup.service ] || rm -f "$i"; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*; \
    rm -f /etc/systemd/system/*.wants/*; \
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*; \
    rm -f /lib/systemd/system/anaconda.target.wants/*; \
    apt update; \
    apt install -y software-properties-common git python-pip python-netaddr systemd systemd-cron rsyslog; \
    : Can't log kernel messages unless we're privileged; \
    sed -i 's/^\(module(load="imklog" permitnonkernelfacility="on"\)/#\1/' /etc/rsyslog.conf; \
    pip install "ansible>=2.5,<2.6"; \
    install -d -o root -g root -m 755 /etc/ansible/roles; \
    echo '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts; \
    echo '[defaults]\nretry_files_enabled = False' > /etc/ansible/ansible.cfg

VOLUME ["/sys/fs/cgroup"]
CMD ["/sbin/init"]
