require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card.rb'

class CardTest < Minitest::Test

  def test_that_it_exists
    card = Card.new

    assert_instance_of Card, card
  end







end
