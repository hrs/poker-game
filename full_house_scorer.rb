class FullHouseScorer
  include Groupable

  def matches?(hand)
    group_by_sizes(hand).include?(3) && group_by_sizes(hand).include?(2)
  end

  def description
    "Full house"
  end
end
