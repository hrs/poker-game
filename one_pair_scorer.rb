class OnePairScorer
  include Groupable

  def matches?(hand)
    group_by_sizes(hand).select { |size| size == 2 }.size == 1
  end

  def description
    "One pair"
  end
end
