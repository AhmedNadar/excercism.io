class School
  VERSION = 1
  attr_accessor :student
  def initialize
    self.student = []
  end
  def add(name, grade)
    self.student << [grade, name]
  end
  def to_h
    arr = self.student.sort.group_by(&:first).map { |c, xs| [c, xs.map(&:last)] }.sort
    puts "#{arr}"
    puts "#{arr.to_h}"
    arr.to_h
  end
  def grade(g)
    self.to_h[g]
  end
end
