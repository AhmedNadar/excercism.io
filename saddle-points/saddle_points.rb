class Matrix

  attr_reader :rows,:columns

  def initialize(matrix_info)
    @rows = []
    build_matrix(matrix_info)
    @columns = @rows.transpose
  end

  def build_matrix(matrix_info)
    matrix_info.split("\n").each {|str| @rows << str.chomp.split(' ').map { |x| x.to_i } }
  end

  def saddle_points
    a = []
    @rows.each_with_index { |r,i| a << [i,r.index(r.max)] if r.max == @columns[r.index(r.max)].min }
    a
  end

end
