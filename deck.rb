class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards.shuffle
  end

  def draw(number = 1)
    cards.shift(number)
  end
end
