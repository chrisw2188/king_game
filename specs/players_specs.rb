require("minitest/autorun")
require_relative("../score")
require_relative("../players")
require_relative("../cards")

class TestPlayer < Minitest::Test

  def setup
   @player1 = Players.new("Jeff", 3)
   @player2 = Players.new("Chris", 3)
  end

  def test_players
    assert_equal("Jeff", @player1.name)
  end

  def test_score
    assert_equal(0, @player2.current_score)
  end

end