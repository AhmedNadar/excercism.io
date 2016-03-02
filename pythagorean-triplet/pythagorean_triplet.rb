class Triplet

  def initialize(*numbers)
    @numbers = numbers
  end

  def sum
    @numbers.reduce(:+)
  end

  def product
    @numbers.reduce(:*)
  end

  def pythagorean?
    @numbers[0]**2 + @numbers[1]**2 == @numbers[2]**2
  end

  def self.where(limit)
    triplets = []
    limit[:min_factor] = 1 if limit[:min_factor].nil?
    (limit[:min_factor]..limit[:max_factor]).to_a.combination(3).to_a.each do |arr|
      a = Triplet.new(*arr)
      triplets << a if a.sum == limit[:sum] && a.pythagorean?
      triplets << a if a.pythagorean? && limit[:sum].nil?
    end
  triplets
  end

end
