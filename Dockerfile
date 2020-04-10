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
    apt install -y git python-pip python-netaddr systemd systemd-cron rsyslog iproute2 python3-minimal sudo jq; \
    : Can't log kernel messages unless we're privileged; \
    sed -i 's/^\(module(load="imklog" permitnonkernelfacility="on"\)/#\1/' /etc/rsyslog.conf; \
    pip install "ansible>=2.9,<2.10" yq; \
    install -d -o root -g root -m 755 /etc/ansible/roles; \
    echo '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts; \
    echo '[defaults]\nretry_files_enabled = False\nstdout_callback = yaml\ncallback_whitelist = profile_tasks\ndeprecation_warnings = True\n[colors]\ndiff_remove = purple\n[diff]\nalways = yes' > /etc/ansible/ansible.cfg

VOLUME ["/sys/fs/cgroup"]
CMD ["/sbin/init"]
