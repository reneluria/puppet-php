# == Class: php::extension::xdebug::params
#
# Defaults file for xdebug extension
#
# === Parameters
#
# No parameters
#
# === Variables
#
# [*ensure*]
#   The ensure of xdebug to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for xdebug
#   For debian it's php5-xdebug
#
# [*provider*]
#   The provider used to install php5-xdebug
#   Could be "pecl", "apt" or any other OS package provider
#
# [*install_dir*]
#   Path where `make install` in the php extension will
#	put the redis.so file
#
# [*config_file*]
#   The path to the ini php5-xdebug ini file
#
# [*config_changes*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *config_file*
#
# === Examples
#
#  include 'php::extension::xdebug::package'
#
#  class {'php::extension::xdebug::package':
#   ensure => latest
#  }
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::extension::xdebug::params {

  $ensure        = $php::params::ensure
  $package        = 'php5-xdebug'
  $provider       = undef
  $install_dir	  = '/usr/lib/php5/20100525'
  $config_file    = '/etc/php5/conf.d/xdebug.ini'
  $config_changes = {
    set => {
    	'.anon/zend_extension' => "${install_dir}/xdebug.so",
    	'.anon/xdebug.max_nesting_level' => '1000'
    }
  }

}
