#paul fitz
def hi_hi_goodbye
  # your code here
	puts "Enter a number"					#ask user to input a number
	while answer = gets.chomp				#while loop used to keep looping until the user inputs "bye"
  	number = answer.to_i					#can't use to_i on same line as gets
  	number.times {|x| puts "hi"}			#based on number the user inputs print "hi" this amount of times
  	puts "enter a number"					#ask the question again
  	break if answer == "bye"				#loop breaks if the answer is "bye"
end
puts "goodbye"
end



def prompt
  puts 'Enter a number or bye'
end

def hi_hi_goodbye
  prompt
  while (line = gets) && (line !~ /bye/) # first is an assignment statement that returns a line or nil, and is thus boolean
    line.to_i.times { print 'hi ' }
    puts
    prompt
  end
  puts "Goodbye!"
end





hi_hi_goodbye if $0 == __FILE__  # a little magic so that you can run with "$ ruby 2_input_output_control.rb" but it will still work for our tests
