require 'rspec'
require './lib/offset_generator'
require './lib/enigma'
require './lib/key_generator'
require 'simplecov'
SimpleCov.start

RSpec.describe Enigma do
  before :each do 
    @enigma = Enigma.new
    @enigma.encrypt("Hello World", "02231", "200421")
  end

  describe 'Object Creation' do 
    it 'exists' do 
      expect(@enigma).to be_a(Enigma)
    end

    it 'has an alphabet' do 
      expect(@enigma.alphabet.length).to eq(27)
    end 
  end 

  describe 'Object Methods' do 
    it 'can encrypt with date and key' do 
      expect(@enigma.encrypt("Hello World", "02231", "200421")).to eq(["H", "f", "l", "q", "v", "a", "W", "t", "y", "m", "d"])
    end 

    it 'can find offset shift' do
      shift = Shift.new("02231", "200421")
      @enigma.encrypt("Hello World", "02231", "200421")
    end 
  end 
end
  