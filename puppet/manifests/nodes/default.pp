# file manifests/nodes/default.pp

node default {
  notice("I'm node ${::hostname} with IP ${::ipaddress_eth1}")

  # Disable IPv6
  exec { 'disable_all_IPv6':
    command => 'echo "1" | sudo tee /proc/sys/net/ipv6/conf/all/disable_ipv6',
    path    => '/bin:/usr/bin',
    onlyif  => 'test $(cat /proc/sys/net/ipv6/conf/all/disable_ipv6) == "0"'
  }
  exec { 'disable_default_IPv6':
    command => 'echo "1" | sudo tee /proc/sys/net/ipv6/conf/default/disable_ipv6',
    path    => '/bin:/usr/bin',
    onlyif  => 'test $(cat /proc/sys/net/ipv6/conf/default/disable_ipv6) == "0"'
  }
}
