class Crypto

  def initialize(message)
    @message = message
  end

  def normalize_plaintext
    @message.downcase.gsub(/[^a-z1-9]/,'')
  end

  def size
    find_perfect_square(normalize_plaintext.length)
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    normalize_ciphertext.gsub(/\s/,'')
  end

  def normalize_ciphertext
    segments = plaintext_segments
    output_str = ""
    (0..segments.length).each  do |n|
      segments.each { |segment| output_str << segment[n]  if !segment[n].nil?  }
      output_str << " "
    end
    output_str.strip
  end

  def find_perfect_square(len)
    n = 0.1
    while !n.to_s.end_with?('0') do
      n = Math.sqrt(len)
      len += 1
    end
    n.to_i
  end

end
