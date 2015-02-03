# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
<<<<<<< HEAD:session2/3-challenge/3_array.rb
  def every_other_char
  end
=======

  def every_other_char
    to_return = ""
  
    each_char.with_index do |char, index|
          to_return << char if index.even?
      end
      to_return    
    end
>>>>>>> 4ecf017000a98f6fef7be0d32b13f2dfaa60ecd0:session2/5-solved/solved/3_array.rb
end

