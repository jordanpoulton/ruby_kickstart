# Prompt the user for a number, then read it in and print out "hi" that many times
# 
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def hi_hi_goodbye
	#loop while getting user input
	while user_input = gets.chomp #why is this = and not ==?
		user_input.to_i.times {|n| print 'hi '}#convert to input to an int and loop than number of times printing 'hi'
		puts ""
		break if user_input == "bye" #bread is how you jump out of a loop.
	end
	puts "goodbye"
end


# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb" 
# but it will still work for our tests

hi_hi_goodbye if $0 == __FILE__ #handy beasue if another file called this file then this line of code wouldn't run
# $0 is a global variable for the ruby program being run whilst _FILE_ is the name of this file. So if you run
#this file from command line e.g. ruby 2_input_output_control.rb then $0 and _FILE_ both have '2_input_output_control.rb'
#However if another file called 3_in_out.rb required this file and you ran 3_in_out.rb from the command line
#e.g. ruby 3_in_out.rb then $0 would = 3_in_out.rb and _FILE_ would be 2_input_output_control.rb
