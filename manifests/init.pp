class geppetto {
  $version = '4.0.0-R201310140657'
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
