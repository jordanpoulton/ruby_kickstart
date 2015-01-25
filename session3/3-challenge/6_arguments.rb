# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(first, *second)
	truthy_falsey = []

	#arr = second.each_slice(2).to_a
	
	if first == true 

	truthy_falsey << second.each_slice(2).to_a.map do |x|

			if x[0] != false && x[1] != false
				false
			elsif x[0] != true && x[1] != false || x[0] != false && x[1] !=true
				true

			else
				false
			end
	end
	end
	
	if first == false

		truthy_falsey << arr.each do |x|
			if x[0] != true && x[1] != true
				true
			elsif x[0] != true || x[1] != true
				false
			else 
				false
			end
			end	
			end
			truthy_falsey[0]
end
puts match_maker(true,  true,  true   )    

