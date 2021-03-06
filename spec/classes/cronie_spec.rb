require 'spec_helper'

describe 'cronie' do
  context 'supported operating systems' do
    let(:facts) { { :osfamily => 'RedHat' } }

    describe "cronie class without any parameters on RedHat" do
      it { should create_class('cronie') }
      it { should contain_class('cronie::params') }
      it { should contain_class('cronie::install') }
      it { should contain_class('cronie::service').that_subscribes_to('cronie::install') }

      it { should contain_package('cronie').with(:ensure =>'latest') }
      it { should contain_service('crond') }
    end
    describe "cronie class with custom ensure parameter" do
      let(:params) { { :package_ensure => 'installed' } }
      it { should contain_package('cronie').with(:ensure => 'installed') }
    end
  end

  context 'unsupported operating system' do
    describe 'cronie class without any parameters on Solaris/Nexenta' do
      let(:facts) { { :osfamily => 'Solaris', :operatingsystem => 'Nexenta' } }

      it { expect { should contain_package('cronie') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
