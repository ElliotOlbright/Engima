require 'rspec'
require './lib/offset_generator'
require './lib/enigma'
require './lib/key_generator'
require 'simplecov'
SimpleCov.start

RSpec.describe Enigma do
  before :each do 
    @enigma = Enigma.new
  end

  describe 'Object Creation' do 
    it 'exists' do 
      expect(@enigma).to be_a(Enigma)
    end

    it 'has an alphabet' do 
      expect(@enigma.alphabet.length).to eq(27)
    end 
  end 
end 
  