require 'deck'

RSpec.describe "Deck" do
  subject(:deck) { Deck.new }
  
  describe "#initialize" do
    describe "#populate" do 
      it "creates a new deck with 52 cards" do
        expect(deck.new_deck.length).to eq(52)
      end
      
      it "creates a deck without duplicates" do
        expect(deck.new_deck).to eq(deck.new_deck.uniq)
      end
    end 
    
    describe "#shuffle" do 
      it "shuffles the deck" do 
        expect(deck.shuffle.length).to eq(deck.new_deck.length)
      end 
    end 
  end 
end