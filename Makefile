.PHONY: install
install:
	ansible-playbook -i local, local.yml --ask-become-pass

.PHONY: ansible
ansible:
	sudo apt update ; sudo apt install -y ansible
