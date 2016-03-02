class Bob
	def hey(remark)
		if (remark.end_with?('!') || (remark.upcase.eql?(remark))) && !remark.end_with?('?')
			return "Whoa, chill out!"
		elsif remark.end_with?('?')
			return "Sure."
		elsif remark.eql?(" ")
			return "Fine. Be that way!"
		else
			return "Whatever."
		end
	end
end