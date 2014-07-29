class StraightFlushScorer
  def matches?(hand)
    StraightScorer.new.matches?(hand) && FlushScorer.new.matches?(hand)
  end

  def description
    "Straight flush"
  end
end
