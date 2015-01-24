#paul fitz

def mod_three(numbers)
	answer = []						#create an empty array to store the remainder of the numbers divided by three
	numbers.each do |x| 			#iterate through the numbers 
		next if x % 3 ==0			#skip if the number divided by 3 has no remainder
		answer << x % 3				#add the remainder of the number divided by 3 to the answer array
	end
answer
end


def mod_three(numbers)
  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
end