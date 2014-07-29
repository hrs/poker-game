class Hand
  attr_reader :cards, :scorer

  def initialize(cards, scorer)
    @cards = cards
    @scorer = scorer
  end

  def to_s
    cards.map(&:to_s).join("\n")
  end

  def score
    scorer.score(self)
  end
end
