# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

HOST_NAME = 'box001'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Host name
  config.vm.hostname = HOST_NAME

  # Base Box
  config.vm.box = 'alphainternational/centos-6.5-x64'

  # Add a host-only network interface
  config.vm.network :private_network,
    ip: '192.168.56.65',
    netmask: '255.255.255.0'

  # VirtualBox settings
  config.vm.provider :virtualbox do |vb|
    vb.name = HOST_NAME
  end

  # Provisioning with shell script
  config.vm.provision 'shell', path: 'provision.sh'

end
