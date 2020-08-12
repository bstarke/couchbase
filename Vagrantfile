# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.landrush.enabled = true

    # Cluster Nodes
    config.vm.define "cb1", primary: true do |box|
        box.vm.network "private_network", ip: "192.168.33.10"
        box.vm.hostname = "cb1.vagrant.test"
    end
    config.vm.define "cb2" do |box|
        box.vm.network "private_network", ip: "192.168.33.11"
        box.vm.hostname = "cb2.vagrant.test"
    end
    config.vm.define "cb3" do |box|
        box.vm.network "private_network", ip: "192.168.33.12"
        box.vm.hostname = "cb3.vagrant.test"
    end

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
#     box.vm.hostname = "cb1"
#     box.vm.synced_folder ".", "/vagrant", disabled: false
#     box.vm.provision "shell", inline: <<-SHELL
#         apt-get update
#         apt-get upgrade
#         apt-get install -y ansible
#     SHELL
#   end
end