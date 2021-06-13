require 'rspec'
require './lib/offset_generator'
require 'simplecov'
SimpleCov.start


RSpec.describe OffSetGenerator do
  describe 'Object Creation' do
    before :each do
      @offset1 = OffSetGenerator.new
    end

    it 'exists' do 
      expect(@offset1).to be_a OffSetGenerator
    end

    it 'has readable attributes' do 
      expect(@offset1.date).to be_a(String)
      expect(@offset1.date.length).to eq(6)
    end 
  end 

  describe 'Object Creation' do
    before :each do
      @offset1 = OffSetGenerator.new
    end

    it 'can generate last four' do 
      expect(@offset1.offset).to be_a String

    end

    it 'can generate offsets' do 
      expect(@offset1.a).to be_a Integer
      expect(@offset1.b).to be_a Integer
      expect(@offset1.c).to be_a Integer
      expect(@offset1.d).to be_a Integer
    end



  end

  
end 