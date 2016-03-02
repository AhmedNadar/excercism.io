class Triangle

  def initialize(count)
    @count = count
  end

  def rows
    pascal = []
    (0..2).each { |x| pascal << (fact(n) / (fact(x) * fact (n-x) ) ) }
    pascal
  end

  def fact(n)
  n == 0 ? 1 :  n * fact(n-1)
  #   1
  # else

  # end
end

end
