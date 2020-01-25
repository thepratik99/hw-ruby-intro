# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else 
    return arr.reduce(:+)
  end
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? (arr, n)
  if arr.empty?
    return false
  else
    arr = arr.combination(2)
    arr.each do |x|
      if x.at(0) + x.at(1) == n
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s.match(/^[^aeiouAEIOU\W]/)
end

def binary_multiple_of_4? s
  if s.count('01') == s.size && s.size != 0
    decimel = s.to_i(2)
    if decimel%4 == 0
      return true
    else
      return false
    end
  else 
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn.size == 0 || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end

  def price_as_string
    return "$%.2f" % [@price]
  end
end
