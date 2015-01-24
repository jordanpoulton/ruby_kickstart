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
