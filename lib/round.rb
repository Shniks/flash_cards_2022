require './lib/turn'
require 'pry'

class Round

  attr_reader :deck,
              :turns,
              :number_correct,
              :number_by_category,
              :correct_by_category,
              :card_count

  def initialize(deck)
    @deck = deck
    @turns = []
    @card_count = 0
    @number_correct = 0
    @number_by_category = Hash.new(0)
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
    @number_by_category[current_card.category] += 1
    @card_count += 1
    turn
  end

  def number_correct_by_category(category)
    @correct_by_category[category]
  end

  def percent_correct
    (@number_correct.to_f / @card_count)*100.round(0)
  end

  def percent_correct_by_category(category)
    (@correct_by_category[category].to_f / @number_by_category[category])*100.round(0)
  end

#========= For runner file =====================

  def start
    puts "Welcome to Flashcards\n_____________________\n\n"
    puts "You are playing with #{deck.count} cards.\n\n"
    question_and_guess
  end

  def question_and_guess
    deck.cards.each do |card|
      question_and_feedback
    end
  end

  def question_and_feedback
    puts "This is card number #{card_count+ 1} out of #{deck.count} cards.\n"
    puts "Question: #{current_card.question}\n"
    guess = gets.chomp
    take_turn(guess)
    puts turns.last.feedback + "\n\n"
  end





end
