class OffSetGenerator
  attr_reader :date, :offset, :a, :b, :c, :d

  def initialize(date = nil)
    @date = date.nil? ? date_of_transmission : date
    @a = offset[0].to_i
    @b = offset[1].to_i
    @c = offset[2].to_i
    @d = offset[3].to_i
  end 

  def date_of_transmission
    Time.now.strftime("%d%m%y")
  end 

  def offset
    d = date_of_transmission.to_i ** 2
    offset = d.to_s
    @offset = offset[-4..-1]
  end 
end 