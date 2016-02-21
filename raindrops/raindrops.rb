class Raindrops
	VERSION = 1
	def self.convert(input)
	output = ""
	if input%3 == 0
	output.concat("Pling")
	end
	if input%5 == 0
	output.concat("Plang")
	end
	if input%7 == 0
	output.concat("Plong")
	end
	if input%3 != 0 && input%5 != 0 && input%7 != 0
	output.concat(input.to_s)
	end
	return output
	end
end