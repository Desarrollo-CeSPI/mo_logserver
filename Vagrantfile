# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.define 'logserver', primary: true do |app|
    app.vm.hostname = "logserver.desarrollo.unlp.edu.ar"
    app.omnibus.chef_version = "11.16.4"
    app.vm.box = "chef/ubuntu-12.04"
    app.vm.network :private_network, ip: "10.100.28.2"
    app.berkshelf.enabled = true
    app.vm.provision :chef_zero do |chef|
      chef.json = {
      }
      chef.run_list = [
        "recipe[apt]",
        "recipe[mo_logserver]",
        "recipe[mo_logserver::logrotate]"
      ]
    end
  end
end
