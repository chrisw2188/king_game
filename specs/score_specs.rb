require("minitest/autorun")
require_relative("../score")

class TestScore < Minitest::Test

  def setup
    @score = Score.new(5, 0)
  end

  def test_score
    assert_equal(5, @score.winning_score)
  end

  def test_loosing
    assert_equal(0, @score.loosing_score)
  end



end