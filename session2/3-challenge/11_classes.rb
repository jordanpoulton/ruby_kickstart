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
		@numBottles = numBottles#this line must be first else it will override @numbottles
    @numBottles = 0  if numBottles < 0
    @numBottles = 99 if numBottles > 99

		@ones = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
		@tens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
						17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
		@tys = {2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}
	end
	
	
		
	def createWordNumber num
		return @ones[num] if num < 10 
		return @tens[num] if num < 20
		return	twentyAndAbove num
	end
		
	def twentyAndAbove num #combines the @tys array and @ones array to make the numbers 20 and over.
		tens, ones = num.divmod(10)#divides num by 10 and assigns the quotient to 'tens' and the modulus to 'ones'.
		return "#{@tys[tens]}" if ones == 0
		return "#{@tys[tens]}-#{@ones[ones]}"
	end


def bottles bottles
	 if bottles == 1
		 return "bottle"
	 else
		 return "bottles" 
	 end
end

def print_song
		return String.new if @numBottles.zero?
		@numBottles.downto(1) do |num|
			puts"#{createWordNumber(num).capitalize} #{bottles(num)} of beer on the wall,"
		  puts"#{createWordNumber(num).capitalize} #{bottles(num)} of beer,"
			puts"Take one down, pass it around,"
			if num == 1
				print"#{createWordNumber(num-1).capitalize} #{bottles(num-1)} of beer on the wall."
			else
				puts"#{createWordNumber(num-1).capitalize} #{bottles(num-1)} of beer on the wall."
			end
		end
	end
	
end

#b = BeerSong.new(100)
 #b.print_song
#puts b.createWordNumber(15)
#puts b.instance_variable_get '@numBottles'



