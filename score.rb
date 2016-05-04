class Score

  attr_accessor  :winning_score, :loosing_score

  def initialize(winning_score, loosing_score)
    @winning_score = winning_score
    @loosing_score = loosing_score
  end

  # def score
  #   return @winning_score
  # end

end