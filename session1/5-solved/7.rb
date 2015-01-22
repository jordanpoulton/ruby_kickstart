def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

#solved by meads
def pirates_say_arrrrrrrrr(string)
	result = ""
	len = string.size - 1
	len.times do |index|
		if string[index] == "r" || string[index] == "R"
			result << string[index + 1]
		end
	end
	result
end
#================================

#paul fitz
def pirates_say_arrrrrrrrr(string)
  answer = ""
  string.length.times do |i|
     string[i]
     if string[i] == "r" || string [i] == "R"
      answer << string[i + 1]
     end
    end
  answer
end

#Sebastien
def pirates_say_arrrrrrrrr(string)
  return_letter = ""
  add_next_letter = false
  string.size.times do |x|
    current_letter = string[x,1] 
    return_letter << current_letter if add_next_letter
    add_next_letter = (current_letter == "r" || current_letter == "R")
  end
  return_letter
end
