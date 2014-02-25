require 'spec_helper'

describe 'geppetto' do
  describe 'with 64bit os' do
    let(:facts) do 
      {
        :boxen_home => '/opt/boxen',
        :architecture => 'x86_64', 
      }
    end

    it do
      should contain_package('geppetto').with({
        'ensure' => 'installed',
        'source' => 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-4.1.0-R201402150632.zip',
      })
    end
  end

  describe 'with 32bit os' do
    let(:facts) do 
      {
        :boxen_home => '/opt/boxen',
        :architecture => 'x86', 
      }
    end

    it do
      should contain_package('geppetto').with({
        'ensure' => 'installed',
        'source' => 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-4.1.0-R201402150632.zip',
      })
    end
  end
end
