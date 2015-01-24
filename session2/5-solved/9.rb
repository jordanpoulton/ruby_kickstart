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
#Sebastien
class String
  def caps?
    self == self.upcase ? true : false
  end
end

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
