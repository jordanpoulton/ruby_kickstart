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





deaf_grandma if $0 == __FILE__ # this will call your code so you can run it from the terminal
