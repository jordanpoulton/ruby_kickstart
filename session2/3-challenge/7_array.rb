# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words string
	arr = string.gsub(/[^\w'\u2019]/,' ').split(' ')#with [^..] anything inside the brackets is excluded and \w is all word characters.
	new = arr.each_index.select{|x| x.even?}
	concat = new.map {|x| arr[x]}
	return concat 
end

#alternate_words("Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one.")#this editor doesn't support UTF-8 characters, the unicode number had to be used
#in the regex to pick up apostrophes.
