require 'byebug'

class Array
  def my_uniq
    new_array = []
    self.each do |el|
      new_array << el unless new_array.include?(el)
    end
    new_array
  end
  
  def two_sum
    new_array = []
    (0..self.length - 1).each do |i|
      (i + 1...self.length).each do |j|
        new_array << [i, j] if self[i] + self[j] == 0
      end
    end
    new_array
  end
  
  def my_transpose
    new_arr = []
    
    self.each_with_index do |el, i|
      new_arr << [self[0][i], self[1][i], self[2][i]]
    end 
    
    new_arr
  end 
  
  def stock_picker
    new_arr = [0, 1]
    
    self.each_with_index do |el, i|
      self.each_with_index do |el2, j|
        if i != j && i < j && ((el * -1) + el2) > ((self[new_arr[0]] * -1) + self[new_arr[1]])
          new_arr[0] = i
          new_arr[1] = j
        end
      end 
    end 
    
    new_arr
  end 
end