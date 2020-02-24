# Arch Ansible Playbook

## Background

This is a loosely inspired port of some of the functionality superb tools [archfi](https://github.com/MatMoul/archfi) & [archdi](https://github.com/MatMoul/archdi) for Ansible. It does not however cover functionality provided by archfi.

## Testing

A makefile has a series of commands which you can run to test this inside a Docker container.
```
`start` will start the docker container.
`setup` will install python in the container.
`run` will run the playbook for you.
`clean` will remove the docker container.
`all` will run all of the above.
```

Similarly, here are the commands needed to run the above abstraction:
```shell script
$ docker run -td --name archlinux archlinux && \
  docker exec -it archlinux pacman -Sy && \
  docker exec -it archlinux pacman -Sy python3 && \
  ansible-playbook -i inventory playbook.yml
```

## Thanks

Finally, thanks [MatMoul](https://github.com/MatMoul) for his efforts in maintaining [archfi](https://github.com/MatMoul/archfi) and [archdi](https://github.com/MatMoul/archdi).