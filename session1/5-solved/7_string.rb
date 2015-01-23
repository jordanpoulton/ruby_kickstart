# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


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

# Tried scan method on string but didn't work