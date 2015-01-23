def mod_three(numbers)
  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
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