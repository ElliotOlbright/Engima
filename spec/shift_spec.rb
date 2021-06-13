require 'rspec'
require './lib/offset_generator'
require './lib/shift'
require './lib/key_generator'



RSpec.describe Shift do
  describe 'Object Creation' do
    before :each do
      @shift = Shift.new(key, date)
    end

    it 'exists' do
      expect(@shift).to be_a(Shift)
    end
  end
end