class FlushScorer
  def matches?(hand)
    suits = hand.cards.map(&:suit)
    suits.all? { |suit| suit == suits.first }
  end

  def description
    "Flush"
  end
end
