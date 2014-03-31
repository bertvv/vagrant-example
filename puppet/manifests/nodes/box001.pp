# file manifests/nodes/box001.pp

node box001 inherits default {
  # Apache and PHP
  class { 'apache': }
  class { 'apache::mod::php': }

  package { [ 'php-mysql', 'php-xml' ]:
    ensure => installed,
  }

  # MySQL
  include '::mysql::server'

  $appdb = hiera('mysql::appdb')

  mysql::db { $appdb:
    user     => hiera('mysql::user'),
    password => hiera('mysql::password'),
    host     => hiera('mysql::host'),
  }

}
