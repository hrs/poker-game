class Player
  attr_reader :hand

  def initialize(hand)
    @hand = hand
  end

  def print_formatted(id)
    print_formatted_header(id)
    print_formatted_hand
    print_formatted_score
  end

  private

  def print_formatted_header(id)
    puts "Player #{id}"
    puts "--------"
  end

  def print_formatted_hand
    puts hand
    puts
  end

  def print_formatted_score
    puts score
    puts
  end

  def score
    hand.score
  end
end
