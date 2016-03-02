class SumOfMultiples
  def initialize(*input)
    @input = input
  end
  def to(limit)
    sum = 0
    1.upto(limit - 1) {
      |divisor|
      @input.map { |element|
        if divisor % element == 0
          sum += divisor
          break
        end
      }
    }
    sum
  end
  def self.to(limit)
    sum = 0
    @input = [3, 5]
     1.upto(limit - 1) {
      |divisor|
      @input.map { |element|
        if divisor % element == 0
          sum += divisor
          break
        end
      }
    }
    sum
  end
end
