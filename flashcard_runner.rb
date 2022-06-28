require './lib/deck'
require './lib/round'
require './lib/card_generator.rb'
require 'pry'

create_cards = CardGenerator.new('./cards.txt').cards
deck = Deck.new(create_cards)
round = Round.new(deck)
round.start
