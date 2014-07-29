class StraightScorer
  def matches?(hand)
    numbers = hand.cards.map(&:number).sort
    sequential?(numbers) || ace_low_straight?(numbers)
  end

  def description
    "Straight"
  end

  private

  def sequential?(numbers)
    numbers.each_cons(2).all? { |num_1, num_2| num_1 + 1 == num_2 }
  end

  def ace_low_straight?(numbers)
    numbers.sort == [2, 3, 4, 5, 14]
  end
end
