class Game
  attr_reader :deck, :players

  NUMBERS = (2..14).to_a
  SUITS = %w(C D H S)
  NUM_PLAYERS = 4
  CARDS_PER_HAND = 5
  SCORERS = [
    StraightFlushScorer.new,
    FourOfAKindScorer.new,
    FullHouseScorer.new,
    FlushScorer.new,
    StraightScorer.new,
    ThreeOfAKindScorer.new,
    TwoPairScorer.new,
    OnePairScorer.new,
    HighCardScorer.new
  ]

  def initialize
    cards = NUMBERS.product(SUITS).map { |number, suit| Card.new(number, suit) }
    @deck = Deck.new(cards)
    @scorer = Scorer.new(SCORERS)
    @players = Array.new(NUM_PLAYERS) {
      Player.new(Hand.new(@deck.draw(CARDS_PER_HAND), @scorer))
    }
  end

  def play
    players.each.with_index do |player, i|
      player.print_formatted(i + 1)
    end
  end
end
