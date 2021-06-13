require './lib/offset_generator'
require './lib/key_generator'

class Shift
  attr_reader :key
  def initialize(key, date)
    @key = KeyGenerator.new(key)
    @offset = OffsetGenerator.new(date)
    @a_shift = key.a + offset.a
    @b_shift = key.b + offset.b
    @c_shift = key.c + offset.c
    @d_shift = key.d + offset.d
  end 
end 