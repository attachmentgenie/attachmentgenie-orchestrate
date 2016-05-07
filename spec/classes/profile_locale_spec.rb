require 'spec_helper'
describe 'orchestrate::profile_locale' do

  let :facts do
  {
   :architecture           => 'amd64',
   :concat_basedir         => '/tmp',
   :lsbdistcodename        => 'wheezy',
   :osfamily               => 'debian',
   :operatingsystem        => 'debian',
   :operatingsystemrelease => 'wheezy'
  }
  end
  context 'with defaults for all parameters' do
    it { should contain_class('orchestrate::profile_locale') }
  end
end
