class Clock

  def initialize(time)
    @time = time
  end

  def self.at(hours, minutes = 0)
    Clock.new(Time.new(0, 1, 1, hours, minutes))
  end

  def to_s
    "#{@time.hour.to_s.rjust(2,'0')}:#{@time.min.to_s.rjust(2,'0')}"
  end

  def +(min)
    Clock.new(@time + min*60)
  end

  def -(min)
    Clock.new(@time - min*60)
  end

  def ==(time)
    to_s == time.to_s
  end

end
