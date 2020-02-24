start:
	docker run -td --name archlinux archlinux;

setup:
	docker exec -it archlinux pacman -Sy;
	docker exec -it archlinux pacman -Sy python3;

run:
	ansible-playbook -i inventory playbook.yml;

clean:
	docker rm archlinux;

all: start setup run clean