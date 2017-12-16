def alternate_words(sentence)
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end

#Jordan
def alternate_words(string)
  array = string.gsub(/[!@$#%^&*()-=_+\[\]:;,.\/<>?\|]/, " ").split

  solution = Array.new
  array.each_with_index do |word, index|
    solution << word if index.even?
  end

  solution
end

#solved by meads
def alternate_words string
	arr = string.gsub(/[^\w'\u2019]/,' ').split(' ')#with [^..] anything inside the brackets is excluded and \w is all word characters.
	new = arr.each_index.select{|x| x.even?}
	concat = new.map {|x| arr[x]}
	return concat
end
#The editor is used doesn't support UTF-8 characters, the unicode number had to be used
#in the regex to pick up apostrophes over single quotes.
#=================================

#Sebastien
def alternate_words(wrd)
  result = []
  counter = 0
  wrd_2 = wrd.gsub(/[!@$#%^&*()-=_+\[\]:;,.\/<>?\|]/, " ")
  words = wrd_2.split(/\s+/)
  words.each do |word|
    result << word if counter % 2 == 0
    counter += 1
  end
  return result
end


#--------------------------------------
#paul fitz

def alternate_words(sentence)
  answer = []         #create an empty array for the answer
  new_sen = sentence.gsub(/[! @ $ # % ^ & * ( ) \-\ = _ + \[\]:;,.\/<>?\|]/," ") #use gsub to replace all the selected characters with ""
  newer_sen = new_sen.split                      #use split method
  newer_sen.each.with_index do |x, y|
    answer << x if y.even?
  end
  answer
end

#Yannick
def alternate_words(string)
  punction_free = string.gsub!(/[^0-9A-Za-z]/, ' ')
  array = punction_free.split(" ")
  result = []
  array.each_index.select {|x| (x+1).odd?}.each{|x| result << array[x]}
  result
end


# Gabe
def alternate_words(string)
  # replace non-considered characters with spaces then split into sub-strings (divided by spaces) and place into array
  arr = string.gsub(/[!@$#%^&*()-=_+\[\]:;,.\/<>?\|]/, " ").split
  # arr.values_at(0,2,4,6)
  # arr.values_at(* [0, 2, 4, 6])
  arr.values_at(* arr.each_index.select {|i| i.even?})
end

# Tom Coakes
def alternate_words(string)
  final_array = []

  no_punctuation = string.gsub(/[!@$#%^&*()-=_+:;,.<>?|]/, ' ')
  split_string = no_punctuation.split(' ')

  split_string.each_slice(2) do |word1, word2|
      final_array << word1
  end

  final_array
end

#Chris Ward

def alternate_words(string)
output = []
working_array = string.gsub(/[:;,(.)?-]/," ").split(" ")
working_array.each_with_index do |string, index|
  output << string if index.even?
end
output
end

#Phil
def alternate_words sentence
  
  sentence = sentence.gsub('.', ' ').gsub('?', ' ').gsub(';', ' ').gsub(',', ' ').gsub('-', ' ').gsub('(', ' ').gsub(')', ' ')
  sentenceArray = sentence.split " "
  
  returnArray = []
  
  sentenceArray.each_with_index do |word, index|
    if index.even?
      returnArray << word
    end
  end
  
  returnArray
  
end

#Josue
def alternate_words(sentence)
  #first, we remove any chars that are not: words, spaces or '’
  just_letters = sentence.gsub(/[^\w\s'’]/, " ")
  a = just_letters.split(" ") #then, we get an array of strings
  
  a.values_at(* a.each_index.select { |word| word.even?}) #every other index (even)
end



