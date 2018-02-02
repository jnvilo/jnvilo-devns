require 'spec_helper'
describe 'devns' do
  context 'with default values for all parameters' do
    it { should contain_class('devns') }
  end
end
