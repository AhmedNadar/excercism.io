class Palindromes

  def initialize(max_factor: nil, min_factor: 1)
    @max_Limit, @min_limit = max_factor, min_factor
  end

  def largest
    Palindrome.new(@palindrome.last, @factors[@palindrome.last])
  end

  def smallest
   Palindrome.new(@palindrome.first, @factors[@palindrome.first])
  end

  def palindrome?(product)
    product.to_s.eql?(product.to_s.reverse)
  end

  def generate
    @palindrome = []
    @factors = { }
    (@min_limit..@max_Limit).each do |multiple1|
      (@min_limit..@max_Limit).each do |multiple2|
        product = multiple1 * multiple2
        @palindrome <<  product if palindrome?(product)
        @factors[product] = [[multiple1,multiple2].sort] if palindrome?(product)
      end
    end
    @palindrome.uniq!.sort!
  end

  class Palindrome

    attr_reader :value, :factors

    def initialize(value, factors = [ ])
      @value, @factors = value, factors
    end

  end

end

