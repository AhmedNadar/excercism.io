class Hamming
	VERSION=1
	def self.compute(genome_strand, ancestor_strand)
		raise ArgumentError unless genome_strand.length == ancestor_strand.length
		i = 0
		count = 0
		gchar = genome_strand.chars
		achar = ancestor_strand.chars
		while i < gchar.length
		count+=1 unless gchar[i]==achar[i]
			i+=1
		end
	return count
	end
end

