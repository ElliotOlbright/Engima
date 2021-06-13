class KeyGenerator
  attr_reader :a, :b, :c, :d, :key_number

  def initialize (key = nil)
    @key_number = key.nil? ? generate_key : key
    @a      = key_number[0..1].to_i
    @b      = key_number[1..2].to_i
    @c      = key_number[2..3].to_i
    @d      = key_number[3..4].to_i
  end 

  def generate_key
    key = []
    numbers =("0".."9").to_a << " "
    4.times do 
      key << numbers.sample
    end
    key.unshift("0")
    key.join
  end
end

