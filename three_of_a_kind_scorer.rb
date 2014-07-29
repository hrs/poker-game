class ThreeOfAKindScorer
  include Groupable

  def matches?(hand)
    group_by_sizes(hand).include?(3)
  end

  def description
    "Three of a kind"
  end
end
