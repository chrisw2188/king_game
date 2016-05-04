class Cards

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def cards
    return @cards[1]
  end 

end