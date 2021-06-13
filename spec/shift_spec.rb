require 'rspec'
require 'simplecov'
require './lib/offset_generator'
require './lib/key_generator'
require './lib/shift'

SimpleCov.start



RSpec.describe Shift do
  describe 'Object Creation' do
    before :each do
      @shift = Shift.new("201195", "09464")
    end

    it 'exists' do
      expect(@shift).to be_a(Shift)
    end

    it 'has readable attributes' do 
      expect(@shift.a_shift).to eq(25)
      expect(@shift.b_shift).to eq(7)
      expect(@shift.c_shift).to eq(15)
      expect(@shift.d_shift).to eq(20)

    end 

  end
end