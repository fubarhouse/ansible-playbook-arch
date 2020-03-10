FROM archlinux
MAINTAINER "Karl Hepworth <karl.hepworth@gmail.com>"

ADD . /ansible

RUN pacman -Sy && \
    pacman -Sy --noconfirm python3 ansible

RUN cd /ansible && ansible-playbook -i localhost playbook.yml