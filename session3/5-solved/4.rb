def first_pos(str)
  to_return = {}
  str.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#Sebastien
def first_pos(string)
	to_return = {}
  string.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end