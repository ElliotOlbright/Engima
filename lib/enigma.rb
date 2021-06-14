class Enigma 

  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end 

  def encrypt(message, key, date)
    shift = Shift.new(key, date)
    encrypt = []
    message.chars.each_with_index do |character, index|
      offset = give_offset(shift, index)
      
    
    end 
  end 

  def give_offset(shift, index)
    shifter = index % 4
    return shift.a_shift if shifter == 0
    return shift.b_shift if shifter == 1
    return shift.c_shift if shifter == 2
    return shift.d_shift if shifter == 3
  end 
end 