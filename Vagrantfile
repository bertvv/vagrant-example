# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define 'box001' do |node|
    node.vm.hostname = 'box001'
    node.vm.box = 'alphainternational/centos-6.5-x64'
    node.vm.network :private_network,
      ip: '192.168.56.65',
      netmask: '255.255.255.0'

    node.vm.provider :virtualbox do |vb|
      vb.name = 'box001'
    end
  end

  config.vm.define 'box002' do |node|
    node.vm.hostname = 'box002'
    node.vm.box = 'alphainternational/centos-6.5-x64'
    node.vm.network :private_network,
      ip: '192.168.56.66',
      netmask: '255.255.255.0'

    node.vm.provider :virtualbox do |vb|
      vb.name = 'box002'
    end
  end
end
