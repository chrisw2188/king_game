require("minitest/autorun")
require_relative("../cards")

class TestCards < Minitest::Test

  def setup
    @cards = Cards.new( ["gold", "poison","lemon", "poison"] )
  end

  # def test_cards
  #   assert_equal("poison", @cards.cards)
  # end

  def test_shuffle
    assert_equal(["gold", "poison","lemon", "poison"], @cards.shuffle)
  end

  

end
