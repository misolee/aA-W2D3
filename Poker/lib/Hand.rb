require_relative "deck"
require_relative "card"

class Hand 
  attr_reader :player_hand
  
  def initialize
    @player_hand = []
  end 
  
  def populate(deck)
    start_deck = deck.new_deck
    5.times { @player_hand << start_deck.pop }
    self.player_hand
  end 
  
  def pairs
    pairs_array = []
    @player_hand.each do |card1|
      @player_hand.each do |card2|
        if card1.number == card2.number && !pairs_array.include?([card1.number, card2.number]) && card1 != card2
          pairs_array << [card1.number, card2.number]
        end
      end
    end
    pairs_array
  end
  
end 

load "Hand.rb"
load "Deck.rb"
hand = Hand.new
deck = Deck.new
hand.populate(deck)

two = Card.new("heart", "2")
twotwo = Card.new("spade", "2")
three = Card.new("heart", "3")
threethree = Card.new("spade", "3")
four = Card.new("heart", "4")
