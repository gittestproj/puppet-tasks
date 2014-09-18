require 'spec_helper'
describe 'prod' do

  context 'with defaults for all parameters' do
    it { should contain_class('prod') }
  end
end
