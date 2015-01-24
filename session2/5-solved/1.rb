#paul fitz
def sum_difference_product
  # your code goes here
 	a, b = gets.split.map {|x| x.to_i} #unless user input is a single word or number the input will need to be turned into a list of strings or numbers. Returns a splt string in an array 
 	puts a + b 						   #maps method allows you to run an operation on each of your array's objects and return them all in the same place
 	puts a - b 						   #to_i changes the input to an integer allowing you to add/subtract/multiply
 	puts a * b					
end
sum_difference_product


def sum_difference_product
  a , b = gets.split.map { |num| num.to_i }
  puts a + b
  puts a - b
  puts a * b
end