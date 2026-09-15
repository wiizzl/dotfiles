FROM registry.fedoraproject.org/fedora:latest
RUN dnf install -y systemd sudo ansible python3 python3-dnf && dnf clean all

RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel_nopasswd && chmod 0440 /etc/sudoers.d/wheel_nopasswd
RUN useradd -m -G wheel -s /bin/bash docker_user

CMD ["/sbin/init"]
