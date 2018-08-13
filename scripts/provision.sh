#!/usr/bin/env bash

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = "web01"

  # use to set static IP
  config.vm.network "private_network", ip: "192.168.50.4"

  # use to run provision script
  config.vm.provision "shell",inline: "cd /vagrant ; bash scripts/provision.sh"

end
