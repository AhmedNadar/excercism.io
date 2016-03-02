class Luhn

  def initialize(input)
    @number = input
  end

  def addends
    addend = []
    @number.to_s.chars.reverse.each_with_index do |c,i|
      if i.odd?
        addend << ((c.to_i * 2 >= 10) ? ((c.to_i * 2) - 9) : (c.to_i * 2))
      else
        addend << c.to_i
      end
    end
    addend.reverse
  end

  def checksum
    addend = addends
    addend.inject { |sum, n| sum + n }
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(invalid_number)
    luhn = Luhn.new(invalid_number*10)
    invalid_number*10 + (10 - luhn.checksum) % 10
  end

end
