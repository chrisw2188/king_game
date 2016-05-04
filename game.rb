class Game

attr_accessor :players, :score, :cards, :current_player

def initialize (players, score, cards)
  @players = players
  @score = score
  @cards = cards
  @current_player = players[0]
end

def number_of_players
  @players.count
end

def current_player
  return @current_player
end

def update_current_player
  @current_player = @players.rotate![0]
end



end