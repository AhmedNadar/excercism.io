class PhoneNumber
  attr_accessor :number_string
  def initialize(input)
    @number_string = input
  end
  def number
    mob_number = ""
    number_string.chars.select {|ch| mob_number << ch if ch.match(/[0-9]/)}
    if mob_number.length == 11 && mob_number.chr.eql?('1')
      mob_number.slice(1,10)
    elsif mob_number.length == 10
      mob_number
    else
      '0000000000'
    end
  end
  def area_code
    number_string.slice(0,3)
  end
end
