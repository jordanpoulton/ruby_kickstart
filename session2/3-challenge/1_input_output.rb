# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product 
	a, b = gets.split.map {|num| num.to_i} #splits creates an array of values. Using map we can then assing the values to the variables 
	puts a + b
	puts a - b
	puts a * b
	#becasue the input is a string with a space you can split on the white space and assign each number to a variable
	#using a 'multiple assignment'. This is also handy for splitting names e.g.
	#if name is like "Jim Jones" you can use this split and assign first and last names first, last = name.split
	
end

