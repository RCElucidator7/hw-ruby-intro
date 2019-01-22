# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # The inject method takes each value of the array and the :+ expression sums them together.
  arr.inject(0, :+)
end

def max_2_sum arr
  # The method returns 0 if the array is empty 
  return 0 if arr.empty?
  # Sorts the array, takes the last two values then adds those two together
  arr.sort().last(2).reduce(:+)
end

def sum_to_n? arr, n
  # Returns false if the array is empty
  return false if arr.empty?
  
  # generate a hash key, loop through every individual value in the array and compare the hash values, if they match return true, else return false
  hash = Hash.new(0)
  arr.each do |val|
    if hash.key? val
      return true
    else
      hash[n-val] = val
    end
  end
  return false
end

# Part 2

def hello(name)
  # Returns the string "Hello, " and appends on the user input
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # Checks the first value of the string passed in and checks if it contains any consonants
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # Returns true if the string passed through is 0
  return true if s=="0"
  
  # Checks if the string contains only 1s or 0s, then converts the string to an interger.
  if s =~ /^[0-1]+$/
    # Convert to interger and checks if its a multiple of 4
    return s.to_i(2) % 4 == 0
  end
    false
end

# Part 3

class BookInStock
  # Define two variables with getters and setters
  attr_accessor :isbn, :price
  
  # Initalize method that takes in these two values
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  #Formats the price to two decimal places
  def price_as_string
    format("$%.2f", @price)
  end
end
