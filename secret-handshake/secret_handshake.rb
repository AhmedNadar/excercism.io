class SecretHandshake

  ACTION = ['wink','double blink','close your eyes','jump']

  def initialize(input)
    @binary = input.to_s.match(/[0-9]/).nil? ? '0' : input.to_s(2)
  end

  def commands
    output = []
    @binary.reverse.slice(0,4).chars.each_with_index do |c,i|
      output << ACTION[i] if c == '1'
    end
    output = @binary[4] == '1' ? output.reverse : output
  end

end
