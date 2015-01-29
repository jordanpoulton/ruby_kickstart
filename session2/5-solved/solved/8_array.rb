# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
<<<<<<< HEAD:session2/3-challenge/8_array.rb
# got_three? [1, 2, 1, 1]     # => false
=======
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
array.each_cons 3 do |a, b, c|
 return true if a ==b && b == c
end
false
  
  
  #array.each_with_index do |char, n|
     # if (array[n] == (array[n + 1])) && (array[n + 1] == (array[n + 2]))
    #  return true
   # end
  #end
end
>>>>>>> 4ecf017000a98f6fef7be0d32b13f2dfaa60ecd0:session2/5-solved/solved/8_array.rb
