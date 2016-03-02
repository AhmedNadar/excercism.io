class Triangle

  def initialize(*sides)
    @sides = sides
  end

  def kind
    raise TriangleError.new if (@sides.any? {|side| side<0} || ((@sides[0] + @sides[1]) < @sides[2]))
    case @sides.uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
    end
  end

end

class TriangleError < Exception
end
