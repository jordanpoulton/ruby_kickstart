# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	# puts "enter two integers"

	a, b = gets.split.map! {|x| x.to_i}
	#array.map! {|x| x.to_i}
	# sum = a + b
	# subtract = a - b
	# times = a * b

	puts (a + b)
	puts (a - b)
	puts (a * b)
end

=begin
def sum_difference_product
	puts "enter two integers"
	numbers = gets.chomp

	array = numbers.split("")
	new_array = array.map {|x| x.to_i}
	sum = new_array[1] + new_array[2]
	subtract = new_array[1] - new_array[2]
	times = new_array[1] * new_array[2]

	puts sum.to_s
	puts subtract.to_s
	puts times.to_s

end
=end
