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


# Gabe
def mod_three(array)
  remainders = array.map { |number| number % 3} - [0]
end


#Costas
def mod_three(array)
	array.select {|n| n % 3 != 0}.map{|n| n % 3}
end


# Tom Coakes
def mod_three(array)
  new_array = array.map do |num|
    num % 3 if num % 3 != 0
  end
  new_array.compact
end

#Chris Ward

def mod_three(array)
working = array.reject { |n| n%3==0}
working.map {|num| num % 3}
end

#Phil
def mod_three numbersArray
  remainderArray = []
  numbersArray.each do |element|
    if element % 3 != 0
      remainderArray << element % 3
    end
  end
  remainderArray
end

#Josue
def mod_three(numbers)
  result = numbers.map do |n|
    n % 3 if n % 3 != 0
  end
  result.compact #we remove the 'nil/s' from the array
end



