# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
		@skip = ''
		array_of_chars = self.chars #self explicitly refers to the object that called this method e.g. the object "abc". You don't need self
		#as array_of_chars = chars will work just the same. Here the object that called this method will have chars applied to it.							
		array_of_chars.each_index do |value|
			 if value.even? == true
				 @skip << array_of_chars[value]
			 end
		end
		@skip
	end	
end

# At any given time in Ruby, you are in the context
# of some object.
# You can see what object you're in by looking at self.


#puts "".every_other_char #in the "abc" object
