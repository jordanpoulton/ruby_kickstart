# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	output = false
	array.each_index do |i|
		if array[i] == array[i+1] && array[i] == array[i+2]
			output = true
			break
		else
			output = false
		end	
	end
	output
end
