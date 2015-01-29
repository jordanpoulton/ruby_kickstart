# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
<<<<<<< HEAD:session2/3-challenge/7_array.rb
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
=======
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]


def alternate_words(string)

  return_array = []
  #string = string.gsub("." , " ")
  #string = string.gsub("?" , " ")
  string = string.split(" ")
  string.each_with_index do |word, index|
    if index.even?
    return_array << word
    end
  end
  return_array
end

>>>>>>> 4ecf017000a98f6fef7be0d32b13f2dfaa60ecd0:session2/5-solved/solved/7_array.rb
