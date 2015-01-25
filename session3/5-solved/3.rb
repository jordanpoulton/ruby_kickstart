def word_count(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
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