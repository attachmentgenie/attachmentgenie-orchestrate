require 'spec_helper'
describe 'orchestrate::stack_website' do

  let :facts do
  {
   :concat_basedir         => '/tmp',
   :osfamily               => 'debian',
   :operatingsystemrelease => 'wheezy'
  }
  end
  context 'with defaults for all parameters' do
    it { should contain_class('orchestrate::stack_website') }
  end
end