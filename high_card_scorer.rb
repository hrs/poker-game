class HighCardScorer
  def matches?(hand)
    @hand = hand
    true
  end

  def description
    "High card: #{high_card}"
  end

  private

  attr_reader :hand

  def high_card
    hand.cards.max_by(&:number)
  end
end
