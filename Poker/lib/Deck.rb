require_relative 'card'

class Deck 
  attr_reader :new_deck
  
  NUMBERS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  SUITS = %w{ heart diamond spade clover }
  
  def initialize
    @new_deck = []
    populate
    shuffle
  end 
  
  def populate
    SUITS.each do |symbol|
      NUMBERS.each do |num|
        @new_deck << Card.new(symbol, num)
      end 
    end 
  end 
  
  def shuffle
    @new_deck.shuffle!
  end
  
end 