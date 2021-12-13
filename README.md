# Kali setup

```
git clone https://github.com/hi120ki/kali-setup.git
sudo apt update ; sudo apt install -y ansible
ansible-playbook -i local, kali-setup/local.yml --ask-become-pass
```

```
cd ~/privesc
pip install -U pip flask
cd ~/tool/impacket
pyenv local 3.8.12
python setup.py install
```

## Personal settings

<https://github.com/hi120ki/kali-setup/blob/main/roles/git/tasks/main.yml>

<https://github.com/hi120ki/kali-setup/blob/main/roles/ssh/tasks/main.yml#L19>
