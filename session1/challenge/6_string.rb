# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  to_return = ""
  string.chars.each_with_index do |char, index|
    if return_odds
      index % 2 != 0 ? to_return << char : next
    else
      index % 2 == 0 ? to_return << char : next
    end
  end
  to_return
end

#This can definitely be refactored!!
