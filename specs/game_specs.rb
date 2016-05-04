require("minitest/autorun")
require_relative("../score")
require_relative("../players")
require_relative("../cards")
require_relative("../game")

class TestGame < Minitest::Test

def setup
  @cards = Cards.new( ["gold", "poison","lemon", "poison"] )

  @score = Score.new(5, 0)

  @player1 = Players.new("Jeff", 3)
  @player2 = Players.new("Chris", 3)
  @players = [@player1, @player2]

  @game = Game.new(@players, @score, @cards)
end

def test_game_2_players
  assert_equal(2, @game.number_of_players)
end

def test_player1_starts
  assert_equal(@player1, @game.current_player)
end

def test_update_current_player
  @game.update_current_player
  assert_equal(@player2, @game.current_player)
end

def test_update_current_score
  @game.update_current_score
  assert_equal(3 , @player1.current_score)
end


def test_winner_looser
  result = @game.winner_looser
  assert_equal("You are the winner!", result)
end

def test_turn
    @game.turn
    assert_equal(@player2, @game.current_player)
end


# def test_shuffle
#   @game.shuffle
#   puts @game.inspect
#   assert_equal(["gold", "poison","lemon", "poison"], @game.cards.cards)
# end
#tested in card_specs



end