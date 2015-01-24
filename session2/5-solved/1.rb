def sum_difference_product
  a , b = gets.split.map { |num| num.to_i }
  puts a + b
  puts a - b
  puts a * b
end

#solved by meads
def sum_difference_product
	a, b = gets.split.map {|num| num.to_i} #splits creates an array of values. Using map we can then assing the values to the variables
	puts a + b
	puts a - b
	puts a * b
	#becasue the input is a string with a space you can split on the white space and assign each number to a variable
	#using a 'multiple assignment'. This is also handy for splitting names e.g.
	#if name is like "Jim Jones" you can use this split and assign first and last names first, last = name.split
end
#==========================

#Sebastien
def sum_difference_product
  a, b = gets.split.map { |e| e.to_i  }
  puts a+b
  puts a-b
  puts a*b

end

#kevin lanzon
def sum_difference_product
  a, b = gets.split.map { |n| n.to_i } # .split divides string and returns into an array
  puts a + b
  puts a - b
  puts a * b
end

#Jordan
def sum_difference_product
  a,b = gets.chomp.split.map {|num| num.to_i}
  puts a + b
  puts a - b
  puts a * b
end
