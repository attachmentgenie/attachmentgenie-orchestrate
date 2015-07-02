require 'spec_helper'
describe 'orchestrate::stack_website' do

  context 'with defaults for all parameters' do
    it { should contain_class('orchestrate::stack_website') }
  end
end
