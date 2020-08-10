# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define "cb1" do |cb1|
    cb1.vm.network "private_network", ip: "192.168.33.10"
    cb1.vm.hostname = "cb1"
  end
  config.vm.define "cb2" do |cb1|
    cb1.vm.network "private_network", ip: "192.168.33.11"
    cb1.vm.hostname = "cb2"
  end
  config.vm.define "cb3" do |cb1|
    cb1.vm.network "private_network", ip: "192.168.33.12"
    cb1.vm.hostname = "cb3"
  end

#   config.vm.define "cbg1" do |cb1|
#     cb1.vm.network "private_network", ip: "192.168.33.20"
#     cb1.vm.hostname = "cbg1"
#   end
#   config.vm.define "cbg2" do |cb1|
#     cb1.vm.network "private_network", ip: "192.168.33.21"
#     cb1.vm.hostname = "cbg2"
#   end

end
