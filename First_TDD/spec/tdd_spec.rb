require "tdd"

RSpec.describe "Array" do
  describe "#my_uniq" do
    it "removes duplicates from an array and return the unique elements in order" do
      expect([-4, -4, -3, 1, 4, -2, 1].my_uniq).to eq([-4, -3, 1, 4, -2])
    end
  end
  
  describe "#two_sum" do
    it "return empty array when there are no two elements that sum to zero" do
      expect([4, 5, 2, 5, 1].two_sum).to eq([])
    end
    
    it "return an array of indices of two elements that sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
    
    it "return an array of indices of two elements that sum to zero dictionary-wise" do
      expect([-2, 2, 2, 1, 3].two_sum).to eq([[0, 1], [0, 2]])
    end
  end
  
  describe "#my_transpose" do 
    it "return an array of conversion between row-oriented and column-oriented representations" do 
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end 
  end 
  
  describe "#stock_picker" do 
    it "returns an array of most profitable pair of days" do 
      expect([3, 1, 8, 7, 5].stock_picker).to eq([1, 2])
    end 
    
    it "can't sell stock before you buy it" do 
      expect([8, 3, 1, 7, 5].stock_picker).to eq([2, 3])
    end 
  end 
  
end 
