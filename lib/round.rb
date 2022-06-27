require './lib/turn'
require 'pry'

class Round

  attr_reader :deck,
              :turns,
              :number_correct,
              :correct_by_category,
              :card_count

  def initialize(deck)
    @deck = deck
    @turns = []
    @card_count = 0
    @number_correct = 0
    @correct_by_category = Hash.new(0)
  end

  def current_card
    deck.cards[card_count]
  end

  def take_turn(guess)
    turn =  Turn.new(guess, current_card)
    @turns << turn
    if turn.guess == current_card.answer
      @number_correct += 1
      @correct_by_category[current_card.category] += 1
    end
    @card_count += 1
    turn
  end

  def number_correct_by_category(category)
    @correct_by_category[category]
  end

  def percent_correct
    (@number_correct.to_f / @card_count)*100.round(0)
  end





end
