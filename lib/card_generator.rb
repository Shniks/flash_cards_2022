require 'pry'
require './lib/card'

class CardGenerator
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def cards
    old_cards = File.readlines(@filename)
    old_cards.map do |card|
      card.delete "\n"
    end
  end








end
