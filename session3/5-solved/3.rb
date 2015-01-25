def word_count(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
end

<<<<<<< HEAD
#==============================
#meads and paul

def word_count(string)
	answer = Hash.new(0)

	words = string.downcase.split(' ') 
				
	words.each {|sentence| answer[sentence] += 1}
	
	p words
	answer
end
=======
def word_count(string)
  output = Hash.new 0
  string.split.each do |word|
    output[word.downcase] += 1
  end
  output
end
>>>>>>> 202b3dbd049e0c7936f227c4ded6abc592242bd8
