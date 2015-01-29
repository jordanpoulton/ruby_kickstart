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
<<<<<<< HEAD:session2/3-challenge/5_array.rb
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]
=======
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

def mod_three(array)

  return_array = []
  array.each do |n|
        return_array << n % 3 if (n % 3 != 0) 
    #end
  end
  return_array
end
>>>>>>> 4ecf017000a98f6fef7be0d32b13f2dfaa60ecd0:session2/5-solved/solved/5_array.rb
