class PigLatin

  def self.translate(words)
    output = []
    words.split(' ').each do |word|
      case
      when word.start_with?('ch') || word.start_with?('qu') || word.start_with?('th')
      output << word[2...word.length] + word[0..1] + "ay"
      when word.start_with?('thr') || word.start_with?('sch') || word[1..2].eql?('qu')
      output << word[3...word.length] + word[0..2] + "ay"
      when word.start_with?('yt') || word.start_with?('xr')
      output << word + "ay"
      when word.chr.match(/[aeiou]/)
      output << word + "ay"
      when output << word[1...word.length] + word[0] +"ay"
      end
    end
    output.join(' ')
  end

end
