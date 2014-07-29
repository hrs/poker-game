class Scorer
  def initialize(scorers)
    @scorers = scorers
  end

  def score(hand)
    scorers.find { |scorer| scorer.matches?(hand) }.description
  end

  private

  attr_reader :scorers
end
