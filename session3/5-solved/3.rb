def word_count(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
end

#Jordan
def word_count(string)
  output = Hash.new 0
  string.split.each do |word|
    output[word.downcase] += 1
  end
  output
end

#==============================
#meads and paul
def word_count(string)
	answer = Hash.new(0)

	words = string.downcase.split(' ')

	words.each {|sentence| answer[sentence] += 1}

	p words
	answer
end



