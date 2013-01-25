# == Class: php::extension::igbinary::params
#
# Defaults file for igbinary extension
#
# === Parameters
#
# No parameters
#
# === Variables
#
# [*ensure*]
#   The ensure of igbinary to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for igbinary
#   For debian it's php5-igbinary
#
# [*provider*]
#   The provider used to install php5-igbinary
#   Could be "pecl", "apt" or any other OS package provider
#
# [*config_file*]
#   The path to the ini php5-igbinary ini file
#
# [*config_changes*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *config_file*
#
# === Examples
#
#  include 'php::extension::igbinary::package'
#
#  class {'php::extension::igbinary::package':
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
class php::extension::igbinary::params {

  $ensure        = $php::params::ensure
  $package        = 'igbinary'
  $provider       = 'pecl'
  $config_file    = '/etc/php5/conf.d/igbinary.ini'
  $config_changes = {
    set => {
      '.anon/extension' => 'igbinary.so'
    }
  }

}
