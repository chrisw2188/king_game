class Players

  attr_accessor  :name, :current_score

  def initialize(name, current_score)
    @name = name
    @current_score = current_score
  end

  # def players
  #   return @player1.name
  # end
  #did not work as name is already is in initialize.

  

end