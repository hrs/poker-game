class TwoPairScorer
  include Groupable

  def matches?(hand)
    group_by_sizes(hand).select { |group_size| group_size == 2 }.size == 2
  end

  def description
    "Two pair"
  end
end
