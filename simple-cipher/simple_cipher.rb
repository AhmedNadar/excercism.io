class Cipher

  attr_reader :key

  def initialize(key = generatekey)
    @key = key
    key_validate
  end

  def key_validate
    raise ArgumentError if key.length < 0 || key.match(/[^a-z]/)
  end

  def encode(plaintext)
    shift = getshift(plaintext)
    shift.each_with_index {|i,pos| i.times { plaintext[pos] = plaintext[pos].next} }
    plaintext
  end

  def decode(encodedtext)
    shift = getshift(encodedtext)
    shift.each_with_index {|i,pos| i.times { encodedtext[pos] = encodedtext[pos].prev} }
    encodedtext
  end

  def generatekey
    (0...100).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def getshift(text)
    shift = []
    text.chars.each_with_index do |c,i|
      shift << (key[i].ord - c.ord).abs
    end
    shift
  end

end

class String

  def prev
    (ord - 1).chr
  end

end
