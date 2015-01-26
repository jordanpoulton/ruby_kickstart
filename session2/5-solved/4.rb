#Josh
def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
end

#paul fitz
def get_squares(numbers)
	answer = []									#create an empty array to store the answers
	numbers.each do |x| 						#iterate through the numbers that we are invoking the method upon
		answer << x if numbers.include?(x*x)	#add the number to the answers array if the the square of the number is included
end
answer.sort										#sort the answers array
end

#solved by meads
def get_squares arr
	result = []
	arr.sort.each do |val|
		result << val if arr.sort.include?(val*val) == true
	end
	return result
end
#============================


#Sebastien

def get_squares(n)
  n.select { |x| n.include? x*x }.sort
end

#Jordan
def get_squares(array)
  array.sort.select {|num| array.include? num*num}
end

#Yannick
def get_squares(numbers)
	squares = []
	numbers.each {|x| numbers.include?(x**2) ? squares << x : nil}.sort
	return squares
end

#Costas
def get_squares(num)
	array = []
	num.each do |n|
	array << n if num.include?(n*n)
	end
	array.sort
end


# Tom Coakes
def get_squares(array)
  sorted_array = []
  array.each do |num|
    if array.include?(num ** 2)
      sorted_array << num
    end
  end
  sorted_array.sort
end