class Complement
  VERSION = 3
  def self.of_dna(dna)
  rna = ''
  dna.chars.each do |ch|
  	puts ch
  	if ch.eql?('G')
  		rna.concat('C')
    elsif ch == 'C'
    	rna.concat('G')
  	elsif ch == 'T'
  		rna.concat('A')
  	elsif ch == 'A'
  		rna.concat('U')
  	else
  		raise ArgumentError
  end
  end
  return rna
  end
end

