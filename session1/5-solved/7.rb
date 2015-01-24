#paul fitz
def pirates_say_arrrrrrrrr(string)
	answer = ""
	number = string.length - 1
	string.length.times do |i|
		 string[i]
		 if string[i] == "r" || string [i] == "R"
		 	answer << string[i + 1]
		 end
		end
	answer
end

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
