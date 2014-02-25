# == Class: geppetto
#
# A boxen module to install geppetto
#
# === Parameters
#
# [*version]
#   The version string to download and install
#
# === Variables
#
# [*arch]
#   The system architecture, ie 32 vs 64 bit
#
# === Examples
#
# include geppetto
#
# === Known issues
#
# Since this useses the compressed_app provider,
# the package is not upgradeable.  You must uninstall
# any old versions before installing a new version.
#
# === Authors
#
# Adam Crews <adam@puppetlabs.com>
#
# === Copyright
#
# Copyright 2014 Adam Crews, unless otherwise noted.
#
class geppetto (
  $version = '4.1.0-R201402150632'
) {
  $arch = $::architecture ? {
    'x86_64' => 'x86_64',
    default  => 'x86',
  }

  package { 'geppetto':
    ensure   => installed,
    source   => "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.${arch}-${version}.zip",
    provider => compressed_app,
  }
}
