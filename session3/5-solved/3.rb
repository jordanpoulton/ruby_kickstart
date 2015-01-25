def word_count(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
end

def word_count(string)
  output = Hash.new 0
  string.split.each do |word|
    output[word.downcase] += 1
  end
  output
end
