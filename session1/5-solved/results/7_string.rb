# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"



=begin
def pirates_say_arrrrrrrrr(string)
  return_letter = ""
  add_next_letter = false
  string.size.times do |x|
    current_letter = string[x, 1]
    return_letter << current_letter if add_next_letter
    add_next_letter = (current_letter == "r || current_letter == "R)
  end
  return_letter
end
=end

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
end

