#Josh
def mod_three(numbers)
  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
end

#Jordan
def mod_three(array)
  array.reject {|num| num % 3 == 0}.map {|num| num % 3}
end

#solved by meads
def mod_three arr
	arr.select {|val| val % 3 != 0}.map {|val| val % 3 }
	#take the array and filter it with select to only include nothing divisible by 3.
	#Next use map(which returns a the new array) to return mod of 3 applied to the filtered hash.
end
#==============================================

#Sebastien
def mod_three(num)
 num.select {|e| e % 3 != 0}.map {|e| e % 3}
end

#paul fitz
def mod_three(numbers)
	answer = []						#create an empty array to store the remainder of the numbers divided by three
	numbers.each do |x| 			#iterate through the numbers
		next if x % 3 ==0			#skip if the number divided by 3 has no remainder
		answer << x % 3				#add the remainder of the number divided by 3 to the answer array
	end
answer
end

#Yannick
def mod_three(array)
	array.select {|x| x % 3 != 0}. map{|x| x % 3}
end

#Costas
def mod_three(array)
	array.select {|n| n % 3 != 0}.map{|n| n % 3}
end