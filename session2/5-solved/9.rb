def deaf_grandma
  while line = gets
    line.chomp!
    break if line == "BYE"
    if line == line.upcase && line != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

#Jordan
def deaf_grandma
  while statement = gets.chomp
    break if statement == "BYE"
    if statement == statement.upcase && statement != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

#=================Meads=========
def deaf_grandma
  while line = gets.chomp
    break if line == 'BYE'
    if line == line.upcase && line.empty? == false ##logic is that if input is not empty and text is upcase then puts this.
      puts 'NO, NOT SINCE 1938!'
    else
      puts 'HUH?! SPEAK UP, SONNY!' #all other cases, inlcuding a blank line do this.
    end
  end
end
#==============================

#Who??
def deaf_grandma
	while line = gets.chomp
		break if line == 'BYE'
		if line == line.upcase && line.empty? == false #logic is that if inptut is not empty and text is upcase then puts this.
			puts 'NO, NOT SINCE 1938!'
		else
			puts 'HUH?! SPEAK UP, SONNY!' #all other cases, inlcuding a blank line do this.
		end
	end
end
#=================================

def deaf_grandma
  while (input = gets.chomp) && ( input !~ /BYE/)
    if input.caps? && input != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

deaf_grandma if $0 == __FILE__ # this will call your code so you can run it from the terminal

#------------------------------------------
#paul fitz
def deaf_grandma
  while answer = gets.chomp
  break if answer == "BYE"
  if answer == answer.upcase && answer != ""
    puts "NO, NOT SINCE 1938!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
end


# Gabe
def deaf_grandma
  input = "not bye"
  while input != "BYE"
    input = gets.chomp
    if input == "BYE"
      break
    elsif input == input.upcase && input.length != 0
    end
  end
end

# Tom Coakes
def deaf_grandma
  while true
    input = gets.chomp
    if input == "BYE"
      break
    elsif input.upcase == input && input != ''
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

# Yannick
def deaf_grandma

  while question = gets.chomp
    break if question == "BYE"
    if line == line.upcase && line != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK, SONNY!"
    end
  end
end

#Chris Ward

def deaf_grandma
  input = ""
  while input != "BYE"
    input = gets.chomp
    if input == "BYE"
      break
    elsif input == "" || input != input.upcase
      puts "HUH?! SPEAK UP, SONNY!"
    else
      puts "NO, NOT SINCE 1938!"
    end
  end
end

