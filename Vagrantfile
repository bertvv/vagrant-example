# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
hosts = [
  { name: 'box001', ip: '192.168.56.65' },
  { name: 'box002', ip: '192.168.56.66' }
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'alphainternational/centos-6.5-x64'
  hosts.each do |host|
    config.vm.define host[:name] do |node|
      node.vm.hostname = host[:name]
      node.vm.network :private_network,
        ip: host[:ip],
        netmask: '255.255.255.0'
      node.vm.synced_folder 'html', '/var/www/html'

      node.vm.provider :virtualbox do |vb|
        vb.name = host[:name]
        vb.customize ['modifyvm', :id, '--memory', 256]
      end

      node.vm.provision 'ansible' do |ansible|
        ansible.playbook = 'ansible/site.yml'
      end
    end
  end
end
