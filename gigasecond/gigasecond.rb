class Gigasecond
  VERSION = 1
  def self.from(time)
    time+= 10 ** 9
    return time
  end
end
