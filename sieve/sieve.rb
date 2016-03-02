class Sieve
  attr_accessor :n
  def initialize(n)
    @n = n
  end
  def primes
    n= self.n
    actual = []
    i = 1
    while i < n
      i += 1
      (2..i).each do |var|
        if i%var == 0
          if i == var
            actual << var
          end
          break
        end
      end
    end
    return actual
  end
end