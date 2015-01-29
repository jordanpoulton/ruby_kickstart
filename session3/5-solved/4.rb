def first_pos(str)
  to_return = {}
  str.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#=========================
#paul fitz & meads

def first_pos(string)
	answer = Hash.new

	array = string.split(' ')

	array.each do |x|
	 answer[x] = array.index(x)
  end
  answer
end

#Sebastien
def first_pos(string)
	to_return = {}
  string.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end

#Yannick
def first_pos string
  answer = {}
  array = string.split
  array.each{|word| answer[word] = array.index (word) } 
  answer    
end