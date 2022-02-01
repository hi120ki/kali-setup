# Kali setup

```
git clone https://github.com/hi120ki/kali-setup.git
sudo apt update ; sudo apt install -y ansible
ansible-playbook -c=local -i local, kali-setup/local.yml --ask-become-pass
```

```
cd ~/privesc
pip install -U pip flask
cd ~/tool/impacket
pyenv local 3.8.12
python setup.py install
```

## Personal settings

This is hi120ki's personal settings. If you use this project, please change.

<https://github.com/hi120ki/kali-setup/blob/main/roles/git/tasks/main.yml>

<https://github.com/hi120ki/kali-setup/blob/main/roles/ssh/tasks/main.yml#L19>

## Vagrant

Setting up kali linux on Vagrant (no gui), use `cui.yml`.

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"

  config.vm.hostname = "kali"

  # vagrant plugin install vagrant-disksize
  config.disksize.size = "40GB"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 8
    vb.memory = 8192
    vb.gui = false
  end

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo sed -i.bk -e 's/http.kali.org/ftp.riken.jp\/Linux/g' /etc/apt/sources.list
    sudo apt update ; sudo apt install -y ansible
    git clone https://github.com/hi120ki/kali-setup.git
    ansible-playbook -c=local -i local, kali-setup/cui.yml
  SHELL
end
```
