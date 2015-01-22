# Write a function named mod_three which takes an array of numbers, 
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
# 
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

#second attmpt using the select method to only filter out values

def mod_three arr
	arr.select {|val| val % 3 != 0}.map {|val| val % 3 }
	#take the array and filter it with select to only include nothing divisible by 3. 
	#Next use map(which returns a the new array) to return mod of 3 applied to the filtered hash.
end	

=begin
#first attempt
def mod_three arr
	result = []
	arr.each do |val| 
		if val % 3  != 0
			result << val % 3 
		end
	end
	return result
end
=end
#puts mod_three [4, 5, 6]
