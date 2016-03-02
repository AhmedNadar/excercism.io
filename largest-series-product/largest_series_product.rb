class Series

  VERSION = 1

  def initialize(series)
    @series = series
  end

  def largest_product(length)
    p = 1
    @series[length].chars.uniq.sort.reverse[0...length].each { |c| p *= c.to_i }
    p
  end

end
