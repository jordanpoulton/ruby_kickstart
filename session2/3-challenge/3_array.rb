# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	output = ""
  	self.chars.each_with_index do |character, index|
  		output << character if index.even?
  	end
  	output
  end
end
