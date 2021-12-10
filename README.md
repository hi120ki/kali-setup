# Kali setup

```
git clone https://github.com/hi120ki/kali-setup.git
sudo apt update ; sudo apt install -y ansible
ansible-playbook -i local, kali-setup/local.yml --ask-become-pass
```

## Personal settings

<https://github.com/hi120ki/kali-setup/blob/main/roles/git/tasks/main.yml>

<https://github.com/hi120ki/kali-setup/blob/main/roles/ssh/tasks/main.yml#L19>
