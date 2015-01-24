# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_string = String.new
	new_array = string.split(//)
	str_len = string.length
	new_array.each_with_index{ |v,k|
		if v == "r" or v == "R" and k<str_len-1
			new_string<<new_array[k+1]
		end	
	}
	return new_string
end
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")