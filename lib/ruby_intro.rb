# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  sum arr.max(2)
end

def sum_to_n? arr, n
  # combination(2) method enumerate each two combination
  # map will transform each two combination to sum(combiantion) 
  # index of the first occurance of the given number n
  a = arr.combination(2).map { |x| sum x}.index n 
  (a  == nil)? false : true 
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  # =~ check if the regular expression is true
  # / /i case incensitive; check @ https://rubular.com/
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  s =~ /^[10]*00$|^0$/
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    # create object for internal use only
    (isbn == '')? (raise ArgumentError.new('Error: ISBN is empty string')) : @isbn = isbn
    (price <= 0)? (raise ArgumentError.new('Error: price is less than or equal to zero')) : @price = price
  end
  
  def isbn
    @isbn # allow for get the isbn
  end
  
  def isbn=(isbn)
    (isbn == '')? (raise ArgumentError.new('Error: ISBN is empty string')) : @isbn = isbn # allow for update new isbn
  end
  
  def price
    @price # allow for get the price
  end
  
  def price=(price)
    (price <= 0)? (raise ArgumentError.new('Error: price is less than or equal to zero')) : @price = price # allow for update new price
  end
  
  def price_as_string
    "$#{format "%.2f", @price}"
  end
  
end