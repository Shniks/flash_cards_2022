class Deck

  attr_reader :cards

  def initialize(cards = 0)
    @cards = cards
  end

  def count
    @cards.count
  end

end
