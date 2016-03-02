require 'Prime'
class PrimeFactors

  def self.for(n)
    factors_2d_array = Prime.prime_division(n)
    output = []
    factors_2d_array.select { |factor, no_of_times| no_of_times.times { output << factor } }
    output
  end

end
