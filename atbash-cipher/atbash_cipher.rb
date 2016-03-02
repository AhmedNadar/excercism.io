class Atbash

  CIPHER = "zyxwvutsrqponmlkjihgfedcba"
  PLAIN = CIPHER.reverse

  def self.encode(candidate)
    output = []
    candidate.gsub(/[^A-Za-z1-9]/,"").scan(/.{1,5}/).each do |str|
      temp = ""
      str.chars { |c| c.match(/[0-9]/).nil? ? temp << CIPHER.chars[PLAIN.index(c.downcase)] : temp << c }
      output << temp
    end
    output.join(" ")
  end

end
