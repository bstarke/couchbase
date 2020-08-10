# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define "cb1" do |box|
    box.vm.network "private_network", ip: "192.168.33.10"
    box.vm.hostname = "cb1"
  end

# Cluster Nodes
  config.vm.define "cb1" do |box|
    box.vm.network "private_network", ip: "192.168.33.10"
    box.vm.hostname = "cb1"
  end
  config.vm.define "cb2" do |box|
    box.vm.network "private_network", ip: "192.168.33.11"
    box.vm.hostname = "cb2"
  end
  config.vm.define "cb3" do |box|
    box.vm.network "private_network", ip: "192.168.33.12"
    box.vm.hostname = "cb3"
  end
# Gateway Nodes
#   config.vm.define "cbg1" do |box|
#     box.vm.network "private_network", ip: "192.168.33.20"
#     box.vm.hostname = "cbg1"
#   end
#   config.vm.define "cbg2" do |box|
#     box.vm.network "private_network", ip: "192.168.33.21"
#     box.vm.hostname = "cbg2"
#   end
end