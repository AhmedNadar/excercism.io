class Complement
  VERSION = 3
  def self.of_dna(dna)
    raise ArgumentError unless dna =~ /^[GCTA]+$/
    complement = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    rna = ""
    dna.chars.each do |ch|
      rna << complement[ch]
    end
    return rna
  end
end

