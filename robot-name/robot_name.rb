class Robot
	
  def initialize
    @str =('A'..'Z').sort_by {rand}[0, 2].join
    @str.concat(rand(000..999).to_s)
  end
  def name
  	@str
  end
  def reset

  end
end