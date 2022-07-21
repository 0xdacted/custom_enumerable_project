module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    while i < self.length
      yield [self[i], i]
      i += 1
    end
    self
  end
# Returns a new array containing all elements of ary for which the given block returns a true value.

  def my_select
    new_array = []
    i = 0
    while i < self.length
    true_or_false = yield(self[i])
    if true_or_false == true 
      new_array << self[i]
    end
    i += 1
    end
    new_array
  end

  def my_all?
  i = 0
  while i < self.length
    true_or_false = yield(self[i])
    if true_or_false == false
      return false
      break
    elsif i == self.length - 1
      return true
    end
    i += 1
    end
  end

  def my_any?
    i = 0
    while i < self.length
      true_or_false = yield(self[i])
      if true_or_false == true
        return true
        break
      elsif i == self.length - 1
        return false
      end
      i += 1
    end
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here 

  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i+=1
    end
    self
  end
end
