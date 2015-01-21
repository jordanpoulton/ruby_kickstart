# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars? arr
	total = 0
	arr.each {|val| total += val.length}#counts the lenght of chars
	return false if total < 2 #handle the outside case
	(2...total).each do |n| #checks all numbers aother than 1 and itself
		return false if total % n == 0		 
	end #if the result is 0 for any value of n then this is not a prime and code will exit returning false
	return  true
end

#puts prime_chars? []
