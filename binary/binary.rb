class Binary
  VERSION = 1

  def initialize(binary)
    raise ArgumentError unless binary =~ /^[0-1]+$/
    @binary = binary
  end

  def to_decimal
    input = @binary.chars.reverse
    count = 0
    decimal = 0
    input.each do |char|
      decimal += 2 ** count * char.to_i
      count += 1
    end
    decimal
  end

end