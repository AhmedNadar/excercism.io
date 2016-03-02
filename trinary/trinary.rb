class Trinary

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    sum = 0
    @trinary.to_s.chars.reverse.each_with_index { |number, index| sum += (number.to_i * 3 ** index) } if !@trinary.match(/[a-z]/)
    sum
  end

end
