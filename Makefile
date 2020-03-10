build:
	docker build -t archlinux .;

start:
	docker run -td --name archlinux -v $(PWD):/ansible -v $(PWD)/library:/usr/share/ansible/plugins/modules/aur archlinux;

setup:
	docker exec -it archlinux pacman -Sy;
	docker exec -it archlinux pacman -Sy --noconfirm python3 ansible;

run:
	docker exec -it archlinux ansible-playbook -i localhost /ansible/playbook-container.yml;

run-inside:
	docker exec -it archlinux ansible-playbook -i localhost /ansible/playbook-container.yml;

run-outside:
	ansible-playbook -i inventory -i inventory playbook-localhost.yml

clean:
	docker rm archlinux --force;

pause:
	docker pause archlinux

unpause:
	docker unpause archlinux

all: start setup run clean