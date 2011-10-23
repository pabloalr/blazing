require 'spec_helper'
require 'blazing/target'

describe Blazing::Target do

  describe '#name' do
    it 'returns the name of the target' do
      Blazing::Target.new(:sometarget, 'location', :blah => 'blah').name.should be :sometarget
    end
  end

  describe '#options' do
    it 'returns the options hash' do
      Blazing::Target.new(:sometarget, 'location', :blah => 'blah').options.should be_a Hash
    end
  end

end