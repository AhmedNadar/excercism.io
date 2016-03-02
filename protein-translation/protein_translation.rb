class Translation

  PROTIEN =  {
      ['AUG']             => 'Methionine',
      %w(UUU UUC)         => 'Phenylalanine',
      %w(UUA UUG)         => 'Leucine',
      %w(UCU UCC UCA UCG) => 'Serine',
      %w(UAU UAC)         => 'Tyrosine',
      %w(UGU UGC)         => 'Cysteine',
      ['UGG']             => 'Tryptophan',
      %w(UAA UAG UGA)     => 'STOP'
    }

  def self.of_codon(codon)
    codon = 'AUG' if codon == ' '
    output = []
    key = PROTIEN.keys.select { |key| key.include?(codon) }
    raise InvalidCodonError if PROTIEN[key[0]].nil?
    PROTIEN[key[0]]
  end

  def self.of_rna(strand)
    output = []
    strand.scan(/.../).each do |str|
      return output if of_codon(str) == 'STOP'
      output << of_codon(str)
    end
    output
  end

end

class InvalidCodonError < StandardError
end
