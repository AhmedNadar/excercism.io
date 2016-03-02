class Hexadecimal

  HEXAEQUIVALENT = {
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15,
  }.freeze

  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    return 0 if @hex.match(/[^0-9a-f]/)
    decimal = 0
    @hex.chars.reverse.each_with_index do |char, i|
      if char.match(/[0-9]/)
        decimal += (char.to_i * 16**i)
      else
        decimal += (HEXAEQUIVALENT[char] * 16**i)
      end
    end
    decimal
  end

end
