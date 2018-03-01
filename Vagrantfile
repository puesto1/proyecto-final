# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # Nginx HTTP Server
  config.vm.define "web-1" do |app|
    app.vm.hostname = "web-1"
    #app.vm.network "public_network"
    app.vm.network "private_network", ip: "192.168.33.10"
    app.vm.provision "shell", path: "provision/provision-for-nginx.sh"
    app.vm.provision "shell", path: "provision/provision-for-mysql.sh"
  end

end