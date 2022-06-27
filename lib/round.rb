require './lib/turn'
require 'pry'

class Round

  attr_reader :deck,
              :turns,
              :number_correct,
              :card_count

  def initialize(deck)
    @deck = deck
    @turns = []
    @card_count = 0
    @number_correct = 0
  end

  def current_card
    deck.cards[card_count]
  end

  def take_turn(guess)
    turn =  Turn.new(guess, current_card)
    @turns << turn
    @number_correct += 1 if turn.guess == current_card.answer
    @card_count += 1
    turn
  end











end
