# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  temp =0
  if arr.nil?
   return 0
  elsif arr.respond_to?("each")
   arr.each{|e| temp = temp+e}
  end
   return temp
end

def max_2_sum arr
  if arr.nil?
	return 0
  end
  if arr.length == 1
	puts arr[0]
  else
	temp= arr.sort.last(2)
	sum temp
  end
end

def sum_to_n? arr, n
  if arr.nil?
   return false
  end
  if arr.combination(2).to_a == []
   return false
  else
	arr.combination(2).to_a.each do |x|
		if sum x == n
			return true
  end
  return false
end

# Part 2

def hello(name)
  return "Hello," + name
end

def starts_with_consonant? s
  if /\A[^AaEeIiOoUu]/.match(s)
	return true
  else
  return false
  end
end

def binary_multiple_of_4? s
  if /\A[01]+\Z/.match(s)
	return s.to_i(2)%4 == 0
  else
	return false
end
end

# Part 3

class BookInStock
 attr_accessor :price
 attr_accessor :isbn
 
 def initialize(str, iprice)
  if (str == "") || (iprice <=0)
   raise ArgumentError.new("inputs are incorrect")
  else 
   @isbn=str
   @price=iprice
  end
 end
 
 def price_as_string
  puts "$#{'%.2f' % @price}"
 end
  
end
