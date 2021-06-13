require 'rspec'
require './lib/key_generator'
require 'simplecov'
SimpleCov.start

RSpec.describe KeyGenerator do
  describe 'Object Creation' do
    before :each do
      @key1 = KeyGenerator.new
    end

    it 'exists' do
  
      expect(@key1).to be_a KeyGenerator
   
    end 

    it 'has readable attributes' do
      expect(@key1.a).to be_a Integer
      expect(@key1.b).to be_a Integer
      expect(@key1.c).to be_a Integer
      expect(@key1.d).to be_a Integer
    end
  end 

  describe 'Object Method' do
    it 'can automatically generate a code' do 
      @key1 = KeyGenerator.new

      expect(@key1.key_number.length).to eq(5)
    end

    it 'can take a key to make a code' do
      @key1 = KeyGenerator.new("24244")
      expect(@key1.key_number).to eq("24244")
      expect(@key1.a).to eq(24)
      expect(@key1.b).to eq(42)
      expect(@key1.c).to eq(24)
      expect(@key1.d).to eq(44)
    end 
  end 
end