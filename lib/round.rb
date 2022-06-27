require './lib/turn'
require 'pry'

class Round

  attr_reader :deck,
              :turns,
              :card_count

  def initialize(deck)
    @deck = deck
    @turns = []
    @card_count = 0
  end

  def current_card
    deck.cards[card_count]
  end

  def take_turn(guess)
    Turn.new(guess, current_card)
  end





end
