class WordProblem

  def initialize(question)
    @question = question
  end

  def answer
    equation = create_equation.gsub(/[a-z A-Z \s ?]/,'')
    raise ArgumentError if eval(equation).eql?(equation.to_i) || eval(equation).nil?
    eval(equation)
  end

  def create_equation
    @question.gsub('plus', '+').gsub('minus', '-').gsub('multiplied', '*').gsub('divided', '/')
  end

end

