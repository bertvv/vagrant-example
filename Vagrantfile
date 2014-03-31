# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

hosts = [
  { name: 'box001', ip: '192.168.56.65' },
  { name: 'box002', ip: '192.168.56.66' }
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  hosts.each do |host|
    config.vm.define host[:name] do |node|
      node.vm.hostname = host[:name]
      node.vm.box = 'alphainternational/centos-6.5-x64'
      node.vm.network :private_network,
        ip: host[:ip],
        netmask: '255.255.255.0'

      node.vm.provider :virtualbox do |vb|
        vb.name = host[:name]
      end
    end
  end
end
