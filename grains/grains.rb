class Grains
	def self.square(n)
		return 2**(n-1)
	end
	def self.total
		return 2**(64) - 1 #Sum of a GP formula used with first term as 1 and comman ratio as 2 and total number of terms=64
	end
end