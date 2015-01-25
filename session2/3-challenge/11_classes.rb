<<<<<<< HEAD
class BeerSong					#create a class BeerSong
  attr_accessor :beers 			#create attr_accessor so the beer object can be updated

  def initialize(beers)			#sets up values of the object
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    @beers = beers
  end
 
 def translate(n)				#translate numbers into their corresponding matuching number string
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end

	def print_verse(n)					#prints verse, if n == 0
		if n == 0
			puts ""
		else
			puts "#{translate n} #{bottle n} of beer on the wall,"
			puts "#{translate n} #{bottle n} of beer,"
			puts "Take one down, pass it around,"
			puts "#{translate n-1} #{bottle n-1} of beer on the wall."
		end
	end

	def bottle(n)
		n == 1 ? "bottle" : "bottles"
	end

	def print_song
		beers.downto 1 do |num|
		print_verse(num)
	end
end
end





=======
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
end

>>>>>>> 957a49424f53cb1f9a72406f6abc7d78c4fb0057
