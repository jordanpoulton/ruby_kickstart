def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
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