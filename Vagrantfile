# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.define "CoderAcademyVagrant" do |cavd|
    cavd.vm.hostname = "CAVD"
    cavd.vm.provider :virtualbox do |vb|
      vb.name = "CoderAcademyVagrant"
    end
    cavd.vm.provider :vmware_desktop do |vb|
      vb.name = "CoderAcademyVagrant"
    end
  end

  # For web serving
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 3001, host: 3001
  config.vm.network :forwarded_port, guest: 5000, host: 5000

  # For posgresql
  config.vm.network :forwarded_port, guest: 5432, host: 5432

  # For mongodb
  config.vm.network :forwarded_port, guest: 27017, host: 27017

  
  config.vm.provision :shell, :path => ".provisions/setup.sh"
  config.vm.synced_folder "Shared/", "/home/vagrant/Shared", create: true
end
