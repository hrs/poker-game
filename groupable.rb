module Groupable
  def group_by_sizes(hand)
    hand.cards.group_by(&:number).values.map(&:size)
  end
end
