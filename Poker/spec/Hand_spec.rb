require 'hand'
require 'deck'

RSpec.describe "Hand" do
  subject(:hand) { Hand.new }
  
  describe "#initialize" do
    it "creates an empty player hand" do
      expect(hand.player_hand).to eq([])
    end
  end
  
  describe "#populate" do
    let(:deck) { Deck.new }
    
    it "create a hand with 5 cards" do
      expect(hand.populate(deck).length).to eq(5)
    end
  end
  
  # describe "#one_pair" do
  #   it "checks for one pair" do
  # 
  #   end
  # end
end