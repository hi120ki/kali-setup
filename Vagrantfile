Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"

  config.vm.hostname = "kali"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 8192
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "local.yml"
  end
end
