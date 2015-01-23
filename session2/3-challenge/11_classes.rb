# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong
	def initialize numBottles
		@numBottles = numBottles	
		@ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
		@tens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
						17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
		@tys = {2 => 'twenty', 3 => 'thirty', 4 => 'fourty', 5 => 'fifthy', 6 => 'sixty', 7 => 'seventy', 8 => 'enighty', 9 => 'ninety'}
	end
	
	
		
	def createWordNumber num
		if num < 10 
			return @ones[num] 
		elsif num < 20
			return @tens[num] 
		else 
			twentyAndAbove num
		end
	end
		
	def twentyAndAbove num
		tens, ones = num.divmod(10)
		return "#{@tys[tens]}" if ones == 0
		return "#{@tys[tens]}#{@ones[ones]}"
	end
	
	
	def outSideCase
		if @numBottles < 0 
			@numBottles = 0
		elsif @numBottles > 99
			@numBottles = 99 
		end
	end

def bottles numBottles
	 if numBottles == 1
		 return "bottle"
	 else
		 return "bottles" 
	 end
end

	def all_stanzaz
		outSideCase
		return "" if @numBottles == 0
		@numBottles.downto(0) do |num|
			puts"#{createWordNumber(num).capitalize} #{bottles(num)} of beer on the wall,"
		  puts"#{createWordNumber(num).capitalize} #{bottles(num)} of beer,"
		puts"Take one down, pass it around,"
			if num > 0
				puts"#{createWordNumber(num-1).capitalize} #{bottles(num-1)} of beer on the wall."
			else
				puts"#{createWordNumber(num)} #{bottles(num)}  of beer on the wall." #handle the last case of zero bottles
			end
		end
	end
	

def one_stanza
		outSideCase
		return "" if @numBottles == 0
		puts"#{createWordNumber(@numBottles).capitalize} #{bottles(@numBottles)} of beer on the wall,"
	  puts"#{createWordNumber(@numBottles).capitalize} #{bottles(@numBottles)} of beer,"
		puts"Take one down, pass it around,"
			if @numBottles > 0
				puts"#{createWordNumber(@numBottles-1).capitalize} #{bottles(@numBottles-1)} of beer on the wall."
			else
				puts"#{createWordNumber(@numBottles)} #{bottles(@numBottles)}  of beer on the wall." #handle the last case of zero bottles
			end
	end
	
	
end

b = BeerSong.new(99)
 b.print_song
#puts b.createWordNumber(15)
#puts b.instance_variable_get '@numBottles'



