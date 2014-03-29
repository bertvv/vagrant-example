# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

HOST_NAME = 'box001'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = 'alphainternational/centos-6.5-x64'

  config.vm.define HOST_NAME do |node|

    node.vm.hostname = HOST_NAME
    node.vm.network :private_network,
      ip: '192.168.56.65',
      netmask: '255.255.255.0'

    node.vm.synced_folder 'html', '/var/www/html'

    node.vm.provider :virtualbox do |vb|
      vb.name = HOST_NAME
    end

    # Provisioning with Ansible
    node.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'ansible/site.yml'
      ansible.inventory_path = 'ansible/hosts'
    end
  end
end
