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

#solved by meads
def hi_hi_goodbye
	#loop while getting user input
	while user_input = gets.chomp #why is this = and not ==? A good explanation is here http://www.evc-cit.info/cit020/beginning-programming/chp_04/file_while.html
		user_input.to_i.times {|n| print 'hi '}#convert input to an int and loop than number of times printing 'hi'
		puts ""
		break if user_input == "bye" #break to jump out of the loop.
	end
	puts "goodbye"
end
#===========================


#Sebastien

def hi_hi_goodbye
  puts "Enter a number"

  while input = gets
    puts "hi " * input.to_i
    break if input == "bye"

  end
 puts "goodbye"
end

#kevin lanzon
def hi_hi_goodbye
  puts "Please enter a number: "
  while num = gets.chomp # Can't add .to_i here as it affects the input "bye"
  num.to_i.times { |n| puts "hi " } # Input to integer
    puts " "
    break if num == "bye"
  end
  puts "goodbye"
end

#Jordan
def hi_hi_goodbye
  puts "Enter a number: "
  while (input = gets.chomp) && (input !~ /bye/)
    input.to_i.times {|i| print "hi "}
    puts "Enter a number: "
  end
  puts "goodbye"
end

#Yannick
def hi_hi_goodbye
answer = ""
  while answer != "bye"
  puts "Enter a number"
  answer = gets.chomp
  puts "hi " * answer.to_i
  end
  puts "goodbye"
end


# Gabe
def hi_hi_goodbye
  input = "not bye"
    while input != "bye"
      puts "Enter a number"
      input = gets.chomp
      if input == "bye"
        puts "goodbye"
      else
        integer = input.to_i
        puts "hi " * integer
      end 
    end
end


#Costas
def hi_hi_goodbye
puts "Enter a number: "
  while (input = gets.chomp) && (input != "bye")
  puts "hi " * input.to_i
  puts "Enter a number: "
  end
  puts "goodbye"
end


hi_hi_goodbye if $0 == __FILE__  # a little magic so that you can run with "$ ruby 2_input_output_control.rb" but it will still work for our tests


# Tom Coakes
def hi_hi_goodbye
  while true
    puts "Enter a number "
    input = gets.chomp
    if input == "bye"
      print "goodbye"
      break
    else
      puts "hi " * input.to_i
    end
  end
end

#Chris Ward

def hi_hi_goodbye

  input = ''
  while input != "bye"
    puts "Please enter a number"
    input = gets.chomp
      input.to_i.times {puts "hi"}
  end
  puts "goodbye"
end

#Phil
def hi_hi_goodbye
  puts "Enter a number"
  input = gets.chomp
  while input != "bye"
    puts "hi " * input.to_i
    input = gets.chomp
  end
  puts "goodbye"
end

#Josue
def hi_hi_goodbye
  puts "Please enter a number"
  number = gets.chomp

  while number != "bye"
    puts "hi " * number.to_i
    number = gets.chomp
  end

  puts "goodbye"
end



