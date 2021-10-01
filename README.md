# Kali setup

```
git clone https://github.com/hi120ki/kali-setup.git
sudo apt update ; sudo apt install -y ansible
ansible-playbook -i local, kali-setup/local.yml --ask-become-pass
```
