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
  def initialize(initial_beers)
    if initial_beers < 0
      @beers = 0
    elsif initial_beers > 99
      @beers = 99
    else
      @beers = initial_beers
    end
  end

  def print_song
    while @beers != 0
      puts "#{eng_n(@beers)} bottle#{plural?} of beer on the wall,\n#{eng_n(@beers)} bottle#{plural?} of beer,\nTake one down, pass it around,"
      @beers -= 1
      puts "#{eng_n(@beers)} bottle#{plural?} of beer on the wall."
    end
  end

  def plural?
    return "s" if @beers != 1 
  end

end

  NUMBERS = {
    0=> "Zero",
    1=> "one",
    2=> "two",
    3=> "three",
    4=> 'four',
    5=> "five",
    6=> "six",
    7=> "seven",
    8=> "eight",
    9=> "nine",
    10=> "Ten",
    11=> "Eleven",
    12=> "Twelve",
    13=> "Thirteen",
    14=> "Fourteen",
    15=> "Fifteen",
    16=> "Sixteen",
    17=> "Seventeen",
    18=> "Eighteen",
    19=> "Nineteen",
    20=> "Twenty" }

  TENS = {
    20=> "Twenty",
    30=> "Thirty",
    40=> "Forty",
    50=> "Fifty",
    60=> "Sixty",
    70=> "Seventy",
    80=> "Eighty",
    90=> "Ninety" }

def eng_n(number)
  if number <= 20
    NUMBERS[number].capitalize
  elsif number % 10 == 0
    TENS[number]
  else
    TENS[number - (number % 10)] + "-" + NUMBERS[number % 10]
  end
end





