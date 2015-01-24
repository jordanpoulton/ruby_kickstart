#paul  fitz

class String
  def every_other_char
  	answer = ""									#create an empty string to store the answer
  	each_char.with_index do |x, y| 				#use each_char to iterate over the string the method is invoked on
  		next if y.odd? == true					#skip if index is odd
  			answer << x							#cocatenate the string character, represented by x, to the answer string	
  	
  end
  answer										
  end
end




class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end