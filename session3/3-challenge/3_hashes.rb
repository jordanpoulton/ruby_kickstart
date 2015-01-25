# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

<<<<<<< HEAD



=======
def word_count(string)
  hash = Hash.new(0)
  words = string.downcase.split
  words.each do |word|
    hash[word] += 1
  end
  return hash
end
>>>>>>> 202b3dbd049e0c7936f227c4ded6abc592242bd8

