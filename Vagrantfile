# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.landrush.enabled = true
    config.vm.box = "centos/8"
#     config.vm.box = "generic/rhel8"
#     config.vm.box = "debian/buster64"
#     config.vm.box = "ubuntu/bionic64"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1280
      v.cpus = 2
    end
    # Cluster Nodes
    config.vm.define "cb1", primary: true do |box|
        box.vm.network "private_network", ip: "192.168.33.10"
        box.vm.hostname = "cb1.vagrant.test"
        box.vm.provision "shell", inline: <<-SHELL
            yum install -y python3
        SHELL
    end
    config.vm.define "cb2" do |box|
        box.vm.network "private_network", ip: "192.168.33.11"
        box.vm.hostname = "cb2.vagrant.test"
        box.vm.provision "shell", inline: <<-SHELL
            yum install -y python3
        SHELL
    end
#     config.vm.define "cb3" do |box|
#         box.vm.network "private_network", ip: "192.168.33.12"
#         box.vm.hostname = "cb3.vagrant.test"
#     end
#     config.vm.define "cb4" do |box|
#         box.vm.network "private_network", ip: "192.168.33.13"
#         box.vm.hostname = "cb4.vagrant.test"
#     end

    # Gateway Nodes
#   config.vm.define "cbg1" do |box|
#     box.vm.network "private_network", ip: "192.168.33.20"
#     box.vm.hostname = "cbg1.vagrant.test"
#   end
#   config.vm.define "cbg2" do |box|
#     box.vm.network "private_network", ip: "192.168.33.21"
#     box.vm.hostname = "cbg2.vagrant.test"
#   end

    # Ansible Linux box in case you don't want to install Ansible locally
#   config.vm.define "ansible" do |box|
#     box.vm.network "private_network", ip: "192.168.33.5"
#     box.vm.hostname = "ansible.vagrant.test"
#     box.vm.synced_folder ".", "/vagrant", disabled: false
#     box.vm.provision "shell", inline: <<-SHELL
#         apt-get update
#         apt-get upgrade
#         apt-get install -y ansible
#     SHELL
#   end
end