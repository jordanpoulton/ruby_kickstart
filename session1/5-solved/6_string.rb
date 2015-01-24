# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	new_string = String.new
	new_array = string.split(//)
	if return_odds
		new_array.each_with_index{|v,k| k.even? ? next : new_string << v}
	else
		new_array.reject.each_with_index{|v,k| k.even? ? new_string<<v : next}
	end
	return new_string	
end
odds_and_evens("abcdefg", true)