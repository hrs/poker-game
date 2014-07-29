class FourOfAKindScorer
  include Groupable

  def matches?(hand)
    group_by_sizes(hand).include?(4)
  end

  def description
    "Four of a kind"
  end
end
