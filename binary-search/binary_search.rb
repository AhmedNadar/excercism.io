class BinarySearch

  def initialize(input)
    raise ArgumentError if !(input == input.sort)
    @input = input
  end

  def list
    @input
  end

  def search_for(arg)
    raise RuntimeError if !(@input.include?(arg))
    @input.index(arg)
  end

  def middle
    @input.length/2
  end

end
