class Prime
	def self.nth(n)
		count=0
		i=1
		if n==0
			raise ArgumentError
		else
		  while count<n
			i+=1
			(2..i).each do |var|
			  if i%var == 0
			  	if i==var
			  		count+=1
			  	end
			    break
			  end
			end
		  end
		end
		return i
	end
end