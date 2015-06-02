require 'spec_helper'
describe 'orchestrate' do

  context 'with defaults for all parameters' do
    it { should contain_class('orchestrate') }
  end
end
