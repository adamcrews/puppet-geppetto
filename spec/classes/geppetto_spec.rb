require 'spec_helper'

describe 'geppetto' do
  let(:facts) do 
    {
      :boxen_home => '/opt/boxen',
      :architecture => 'x86_64', 
    }
  end

  it do
#    should include_class('geppetto')

    should contain_package('geppetto')
    #.with(
    #  :ensure => 'installed',
    #  :source => 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-4.0.0-R201310140657.zip'
    #)
  end
end
