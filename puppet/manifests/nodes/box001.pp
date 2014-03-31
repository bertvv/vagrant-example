# file manifests/nodes/box001.pp

node box001 inherits default {
  # Apache and PHP
  class { 'apache': }
  class { 'apache::mod::php': }

  package { 'php-mysql':
    ensure => installed,
  }

  # MySQL
  include '::mysql::server'

  mysql::db { 'appdb':
    user     => 'dbusr',
    password => 'vaygDeesh1',
    host     => 'localhost',
  }

}
