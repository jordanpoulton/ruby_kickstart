#paul fitz
def get_squares(numbers)
	answer = []									#create an empty array to store the answers
	numbers.each do |x| 						#iterate through the numbers that we are invoking the method upon
		answer << x if numbers.include?(x*x)	#add the number to the answers array if the the square of the number is included
end
answer.sort										#sort the answers array
end

def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
end
