require 'date'
class Meetup

  INDEX = {:first => 1, :second => 2, :third => 3, :fourth => 4 }.freeze
  DAYS = ["sunday", "monday", "tuesday",
    "wednesday", "thursday","friday", "saturday"].freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(week_day, index)
    send(week_day, index)
  end

  DAYS.each_with_index do |day,position|
    define_method("#{day}") do |index|
    get_date(index,position)
    end
  end

  def get_date(index, position)
    if index == :last
      get_last_day(position)
    elsif index == :teenth
      get_teenth_day(position)
    else
      get_week_day(index, position)
    end
  end

  def get_last_day(position)
    @month == 12 ? d = Date.new(@year, @month, 31) : d = Date.new(@year, @month+1, 1).prev_day
    until(d.wday == position) do
      d = d.prev_day
    end
    d
  end

  def get_teenth_day(position)
    d = Date.new(@year, @month)
    puts position
    until(d.wday == position && d.mday.between?(13,20)) do
      d = d.next_day
    end
    d
  end

  def get_week_day(index, position)
    d = Date.new(@year, @month, 1)
    INDEX[index].times do
      while(d.wday != position)
      d = d.next_day
      end
      d = d.next_day
    end
    d.prev_day
  end

end
