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

end
