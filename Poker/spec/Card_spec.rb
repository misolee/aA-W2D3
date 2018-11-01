require 'card'

RSpec.describe "Card" do
  subject(:card) {Card.new("heart", "2")}
  
  describe "#initialize" do
    it "takes in a suit as strings" do
      expect(card.suit).to be_a(String)
    end
    
    it "takes in a number as strings"do
      expect(card.number).to be_a(String)
    end
  end
  
end