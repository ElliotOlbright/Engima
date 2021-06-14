require './lib/shift'
class Enigma 
  attr_reader :alphabet
  
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end 

  def encrypt(message, key = nil, date = nil)
    shift = Shift.new(key, date)
    encrypted = message.downcase.chars.map.with_index do |character, index|
      offset = give_offset(shift, index)
      give_offset_letter(character, offset)
    end 
    { encryption: encrypted.join(""), key: shift.key.key_number, date: shift.offset.date }
  

  end 

  def decrypt(message, key, date)
    shift = Shift.new(key, date)
    decrypted = message.downcase.chars.map.with_index do |character, index|
      offset = give_offset(shift, index)
      encrypt << give_offset_letter(character, -offset)
    end 
    decrypted
  end 

  def give_offset_letter(character, offset)
    if @alphabet.include?(character)
      offset_index = @alphabet.index(character) + offset
      @alphabet.rotate(offset_index).first
    else
      character
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