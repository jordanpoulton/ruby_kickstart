class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end

#Solved by meads
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
#=========================================