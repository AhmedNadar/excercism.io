class Acronym
  VERSION = 1
  def self.abbreviate(input)
    output = ""
    input.split(' ').each do |word|
    output << word.chr.upcase
    word[1...(word.length)].chars.each {|char| output << char if (char.match(/[A-Z]/))}
    end
    output
  end
end
