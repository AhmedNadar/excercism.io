class ETL

  def self.transform(old)
    transformed = { }
    old.each { |score, letter_array|  letter_array.each { |letter| transformed[letter.downcase] = score }}
    transformed
  end

end
