require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card_generator.rb'

class CardGeneratorTest < Minitest::Test

  def test_if_it_exists
    card_generator = CardGenerator.new('./cards.text')

    assert_instance_of CardGenerator, card_generator
  end

  def test_it_has_attributes
    card_generator = CardGenerator.new('./cards.text')

    assert_equal './cards.text', card_generator.filename
  end

  def test_it_can_read_a_file
    card_generator = CardGenerator.new('./cards.txt')
    cards =  card_generator.cards

    assert_equal 4, cards.count
    assert_equal "What is 5 + 5?,10,STEM", cards[0]
  end










end
