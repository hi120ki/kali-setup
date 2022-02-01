.PHONY: install
install:
	ansible-playbook -c=local -i local, local.yml --ask-become-pass

.PHONY: ansible
ansible:
	sudo apt update ; sudo apt install -y ansible
