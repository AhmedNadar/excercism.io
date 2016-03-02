class Nucleotide

  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError unless dna =~ /^[GCTA]+$/ || dna == ''
    Nucleotide.new(dna)
  end

  def count(rna)
    @dna.count(rna)
  end

  def histogram
    nucleotide_count = { 'A' => 0,
      'C' => 0,
      'T' => 0,
      'G' => 0,
      }
    @dna.chars.each { |nucleotide| nucleotide_count[nucleotide] += 1 }
    nucleotide_count
  end

end

