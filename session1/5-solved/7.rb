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

#Jordan
def pirates_say_arrrrrrrrr(string)
  output = String.new
  string.chars.each_with_index do |letter, index|
    output << string[index+1].to_s if letter == "r" || letter == "R"
  end
  output
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

#Costas
def pirates_say_arrrrrrrrr(string)
  x=String.new
  (string.length - 1).times do |index|
    if string[index] == "r" || string[index] == "R"
    x << string[index+1]
    end
  end
  x
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


#solved by loris
def pirates_say_arrrrrrrrr(string)
  newString = String.new
  stringArray = string.split(//)
  s_length = stringArray.length
  stringArray.each_with_index do |x, y|
    if x == "r" || "R" && y!= s_length-1
    newString << stringArray[y+1]
    end
  end
  return newString

#Phil
def pirates_say_arrrrrrrrr(string)
  stringArray = string.split ""
  returnString = ""

  i = 0
  while i < stringArray.length - 1
    if stringArray[i] == "r" || stringArray[i] == "R"
      returnString << stringArray[i + 1]
    end
    i = i + 1
  end
    returnString
end

#Yannick
def pirates_say_arrrrrrrrr(string)
  answer = ""
  cycles = string.size - 1
  cycles.times do |x|
    if string[x] == "r" || string[x] == "R"
    answer << string[x + 1]
    end
  end
answer
end

#kevin lanzon
def pirates_say_arrrrrrrrr(string)
  character = String.new
  string.length.times do |letter|
    if /[rR]/.match(string[letter]) then # Found match method. Matches characters enclosed in /[]/
      character << string[letter + 1] unless string[letter + 1] == nil # Unless counters the if statement
    end
  end
  character
end

# Tom Coakes
def pirates_say_arrrrrrrrr(string)
  new_string = ""
  r_count = string.downcase.count('r')
  nil_index = (string.length)
  index = 0

  (r_count).times do
    index = string.downcase.index("r", index) + 1
    break if index == nil_index
    new_string << string[index]
  end

  return new_string
end

# Sean Haughton
def pirates_say_arrrrrrrrr(string)
  new_string = String.new
  string.chars.each_with_index do |letter, index|

      new_string << string[index+1].to_s if letter == "r" || letter == "R"
      end
  new_string
end

# Gabe
def pirates_say_arrrrrrrrr(string)
  letters_array = string.split(//)
  return_string = ""
  letters_array.each_with_index do |letter, index|
    next if index == string.length - 1
    return_string << string[index + 1] if letter.downcase == 'r'
  end
  return_string
end
