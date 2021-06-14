class Enigma 

  attr_reader :alphabet
  def initialize
    @alphabet = ("a".."z").to_a << " "
  end 

  def encrypt(message, key, date)
    @shift = Shift.new(key, date)
    encrypt = []
    message.chars.each_with_index do |character, index|
      require "pry"; binding.pry
    
    end 
  end 


end 