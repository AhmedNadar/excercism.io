class Squares
	VERSION = 2
  attr_accessor :n
  def initialize(n)
    @n=n
  end
  def difference
  	square_sum=0
  	sum_square=0
    (1..n).each do |num|
    	square_sum += num**2
    	sum_square+=num
    	puts "#{sum_square}"
    end
    diff = sum_square**2 - square_sum
    return diff
  end  
  def square_of_sum
  	square_sum=0
  	(1..n).each do |num|
    square_sum += num
    end
    return square_sum**2
  end
  def sum_of_squares
  	sum_square=0
  	(1..n).each do |num|
    sum_square += num**2
    end
    return sum_square
  end
end
