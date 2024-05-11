module Enumerable
  # Your code goes here
  def my_each
    original_arr = []
    self.each do |element|
      original_arr << yield(element)
    end

  def my_each_with_index
    original_arr = []
    self.each_with_index do |element, index|
      original_arr << yield(element, index)
    end
  end
  
  def my_select(&block)
    self.select(&block)
  end
    
  def my_all?(&block)
    self.all?(&block)
  end

  def my_any?(&block)
    self.any?(&block)
  end

  def my_none?(&block)
    self.none?(&block)
  end

  def my_count(&block)
    self.count(&block)
  end

  def my_map(&block)
    self.map(&block)
  end

  def my_inject(initial_value, &block)
    self.inject(initial_value, &block)
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
    original_arr = []
    self.each do |element|
      original_arr << yield(element)
    end
  end

  def my_each_with_index 
    original_arr = []
    self.each_with_index do |element, index|
      original_arr << yield(element, index)
    end
  end

  def my_select(&block)
    self.select(&block)
  end

  def my_all?(&block)
    self.all?(&block)
  end

  def my_any?(&block)
    self.any?(&block)
  end

  def my_none?(&block)
    self.none?(&block)
  end

  def my_count(&block)
    self.count(&block)
  end

  def my_map(&block)
    self.map(&block)
  end

  def my_inject(initial_value, &block)
    self.inject(initial_value, &block) 
  end
end