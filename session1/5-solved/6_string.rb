# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"


#kevin lanzon
def odds_and_evens(string, return_odds)

  if return_odds
    # This returns odd letters .odd?
    return_letters = String.new # Returns letters in a string. Could use = ""
    string.size.times do |letter|
      if letter.odd?
        return_letters << string[letter] # This returns "bdf"
      end
    end

    return_letters # This returns the string

  else
    #  This returns even letters .even?
    return_letters = String.new
    string.size.times do |letter|
      if letter.even?
        return_letters << string[letter] # This returns "aceg"
      end
    end

    return_letters
    end
end

