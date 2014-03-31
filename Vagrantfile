# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
HOST_NAME = 'box001'
DOMAIN = 'example.com'
HOST_IP = '192.168.56.65'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'alphainternational/centos-6.5-x64'
  config.vm.define HOST_NAME do |node|
    node.vm.hostname = "#{HOST_NAME}.#{DOMAIN}"
    node.vm.network :private_network,
      ip: HOST_IP,
      netmask: '255.255.255.0'
    node.vm.synced_folder 'html', '/var/www/html'
    node.vm.synced_folder 'puppet', '/etc/puppet'

    node.vm.provider :virtualbox do |vb|
      vb.name = HOST_NAME
      vb.customize ['modifyvm', :id, '--memory', 256]
    end

    node.vm.provision 'puppet' do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.manifest_file = 'site.pp'
    end
  end
end
