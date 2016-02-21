class Complement
  def self.of_dna(dna)
  dna.gsub('G','C')
  dna.gsub('C','G')
  dna.gsub('T','A')
  dna.gsub('A','U')
  dna
  end
end
