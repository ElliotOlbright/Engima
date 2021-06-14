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

  describe 'Object Methods' do 
    it 'can encrypt with date and key' do 
      expect(@enigma.encrypt("Hello World", "02231", "200421")).to eq({
                                                                        encryption: "oflqvawtymd",
                                                                        key: "02231",
                                                                        date: "200421"
                                                                      })
    end 

    it 'can decrypt with date and key' do 
      expect(@enigma.decrypt("oflqvawtymd", "02231", "200421")).to eq({
                                                                        dencryption: "hello world",
                                                                        key: "02231",
                                                                        date: "200421"
                                                                      })
    end 

    it 'can find offset shift' do
      shift = Shift.new("02231", "200421")
      @enigma.encrypt("Hello World", "02231", "200421")
      expect(@enigma.give_offset(shift, 0)).to eq(7)
      expect(@enigma.give_offset(shift, 1)).to eq(28)
      expect(@enigma.give_offset(shift, 2)).to eq(27)
      expect(@enigma.give_offset(shift, 3)).to eq(32)
    end 

    it 'can find offset letter' do
      shift = Shift.new("02231", "200421")
      @enigma.encrypt("Hello World", "02231", "200421")
      expect(@enigma.give_offset_letter(shift, 0)).to eq(7)
      expect(@enigma.give_offset_letter(shift, 1)).to eq(28)
      expect(@enigma.give_offset_letter(shift, 2)).to eq(27)
      expect(@enigma.give_offset_letter(shift, 3)).to eq(32)
    end 
  end 
end
  