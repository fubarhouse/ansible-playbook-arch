# Arch Ansible Playbook

> This is a WIP project for Automation of Arch setups.
>   - Default variables are not provided
>   - Logic and much else is not tested or completed
>   - Use at your own risk

## Background

This is a loosely inspired port of some of the functionality superb tools [archfi](https://github.com/MatMoul/archfi) & [archdi](https://github.com/MatMoul/archdi) for Ansible. It does not however cover functionality provided by archfi.

It's expected that the devices are mounted to the desired configuration when the playbook's execution starts.

**Using this playbook comes with no warranty, use it at your own risk - I am not responsible if your system breaks to any degree - it comes with an MIT license.**  

## Testing

A makefile has a series of commands which you can run to test this inside a Docker container.
```
`build` will build the docker container from the Dockerfile
`start` will start the docker container.
`setup` will install python in the container.
`run` will run the playbook for you.
`run-inside` will run the playbook for you (inside of the container).
`run-outside` will run the playbook for you (outside of the container).
`clean` will remove the docker container.
`all` will run all of the above.
```

## Plans

* Get it all working
* Get it _customisable_
* Use it on bare-metal installations
* Improve it and maintain it

## Notes

I use Arch BTW.

## Thanks

Finally, thanks [MatMoul](https://github.com/MatMoul) for his efforts in maintaining [archfi](https://github.com/MatMoul/archfi) and [archdi](https://github.com/MatMoul/archdi).