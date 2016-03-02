class Queens

  attr_accessor :white, :black

  def initialize(positions = { })
    @white = positions.fetch(:white) { [0,3] }
    @black = positions.fetch(:black) { [7,3] }
    raise ArgumentError if @white == @black
  end

  def attack?
    (same_row? || same_column? || diagonal?)
  end

  def same_row?
    @white[0] == @black[0]
  end

  def same_column?
    @white[1] == @black[1]
  end

  def diagonal?
    (@white[0]-@black[0]).abs == (@white[1]-@black[1]).abs
  end

  def to_s
    board = []
    str = ""
    (0..7).each do |row|
      (0..7).each do |column|
        str << make_board(row, column) << " "
      end
      str << "\n"
    end
    str.rstrip
  end

  def make_board(row, column)
    case [row,column]
    when white then "W"
    when black then "B"
    else "_"
    end
  end

end


