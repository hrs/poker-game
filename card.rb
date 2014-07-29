class Card
  attr_reader :number, :suit

  def initialize(number, suit)
    @number = number
    @suit = suit
  end

  def to_s
    "#{face}#{suit}"
  end

  private

  FACE_NAME = {
    10 => "T",
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A"
  }

  def face
    FACE_NAME[number] || number
  end
end
