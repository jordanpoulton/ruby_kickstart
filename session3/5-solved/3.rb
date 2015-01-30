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

#Sebastien
def word_count(string)
	to_count = Hash.new { |hash, key| hash[key] = 0}
	string.downcase.split(/ /).each { |word| to_count[word] += 1 }
	return to_count
end

#Yannick
def word_count(string)

	answer = {}
	string.split.each{|x| answer[x.downcase] += 1}
	answer

end


# Tom Coakes
def word_count(string)
  hash = Hash.new   # Can I get it to take a block?
  array = string.downcase.split(' ')
  array.each { |word| hash[word] = array.count(word) }
  return hash
end