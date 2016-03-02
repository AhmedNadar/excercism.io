class Series
  attr_accessor :digits_string
  def initialize(digits_string)
    @digits_string = digits_string
  end
  def slices(series_length)
    raise ArgumentError if digits_string.length < series_length
    output = []
    input_int_array = digits_string.chars.map(&:to_i)
     (0..input_int_array.length-series_length).select {|n| output << input_int_array.slice(n,series_length)}
     output
  end
end
