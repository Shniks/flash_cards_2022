require './lib/card'

class CardGenerator
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def cards
    old_cards = File.readlines(@filename)
    old_cards.map do |element|
      card = (element.delete "\n").split(",")
      Card.new(card[0], card[1], card[2])
    end
  end

end
