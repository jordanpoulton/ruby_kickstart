class BeerSong
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' 
    end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end

<<<<<<< HEAD
#===================Meads=================

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
    return  twentyAndAbove num
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
#==============================================
=======

#Sebastien
class BeerSong
  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0 then bottles = 0
    elsif bottles > 99 then bottles = 99
    end
    self.bottles = bottles
  end

  def stanza(bottles)
    puts "#{translate bottles} #{bottle bottles} of beer on the wall,"
    puts "#{translate bottles} #{bottle bottles} of beer,"

    puts "Take one down, pass it around,"
    puts "#{translate bottles-1} #{bottle bottles-1} of beer on the wall."
  end

  def bottle(n)
    n == 1 ? "bottle" : "bottles"
  end

  def print_song
    if self.bottles == 0 then return "" end
    while self.bottles > 0
      stanza(self.bottles)
      self.bottles -= 1
    end
  end

  def translate(n)
    tens = %w(. . twenty thirty forty fifty sixty seventy eighty ninety)
    teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    ones = %w(zero one two three four five six seven eight nine ten)

    if n >= 20 then
      str = tens[n/10].capitalize
      if n % 10 != 0
        str << "-"
        str << ones[n%10]
      end
      return str
    end

    if n >= 10 && n <= 19 then
      return teens[n%10].capitalize
    end


    if n <= 9 then
      ones[n].capitalize
    end
  end
end

<<<<<<< HEAD
#paul fitz
class BeerSong          #create a class BeerSong
  attr_accessor :beers      #create attr_accessor so beers can be updated

  def initialize(beers)     #sets up values of the object
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    @beers = beers
  end
 
 def translate(n)       #translate numbers into their corresponding matuching number string
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end

  def print_verse(n)          #prints verse, if n == 0 blank string shown, else the numbers of bottles of beer that loop is on will be shown
    if n == 0
      puts ""
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"
      puts "#{translate n} #{bottle n} of beer,"
      puts "Take one down, pass it around,"
      puts "#{translate n-1} #{bottle n-1} of beer on the wall."
    end
  end

  def bottle(n)             #if n == 1 will show 'bottle' instead of 'bottles'
    n == 1 ? "bottle" : "bottles"
  end

  def print_song              #downto method iterates block, passing decreasing values from n down to and including limit
    beers.downto 1 do |num|
    print_verse(num)
  end
end
end
=======
#Jordan
class BeerSong
  NUMBERS = {
    1=> "one",
    2=> "two",
    3=> "three",
    4=> 'four',
    5=> "five",
    6=> "six",
    7=> "seven",
    8=> "eight",
    9=> "nine",
    10=> "Ten"
  }

  TEENS = {
    11=> "Eleven",
    12=> "Twelve",
    13=> "Thirteen",
    14=> "Fourteen",
    15=> "Fifteen",
    16=> "Sixteen",
    17=> "Seventeen",
    18=> "Eighteen",
    19=> "Nineteen",
    20=> "Twenty"
  }

  TENS = {
    0=> "Zero",
    10=> "Ten",
    20=> "Twenty",
    30=> "Thirty",
    40=> "Forty",
    50=> "Fifty",
    60=> "Sixty",
    70=> "Seventy",
    80=> "Eighty",
    90=> "Ninety"
  }

  def initialize(number_of_beers)
    @number_of_beers = number_of_beers
    @number_of_beers = 0 if number_of_beers < 0
    @number_of_beers = 99 if number_of_beers > 99
  end

  def translate(n)
    return  TENS[0] if n == 0
    if 0 < n && n < 11
      NUMBERS[n]
    elsif 10 < n && n < 21
      TEENS[n]
    elsif n % 10 == 0
      TENS[n]
    else
      return "#{translate ((n/10)*10)}-#{translate n%10}"
    end
  end

  attr_accessor :number_of_beers

  def stanza(number)
    puts "#{translate(number).capitalize} #{bottle_s(number)} of beer on the wall,"
    puts "#{translate(number).capitalize} #{bottle_s(number)} of beer,"
    puts "Take one down, pass it around,"
    puts "#{translate(number-1).capitalize} #{bottle_s(number-1)} of beer on the wall."
  end

  def bottle_s(number)
    translate(number) == "one" ? "bottle" : "bottles"
  end

  def print_song
    number_of_beers.downto 1 do |num|
      stanza(num)
    end
  end
end


# Gabe

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


# Tom Coakes
class BeerSong

  def initialize(initial_num)
    if initial_num > 99
      @initial_num = 99
    elsif initial_num < 0
      @initial_num = 0
    else
      @initial_num = initial_num
    end
  end

  def num_to_text(num)
    new_string = String.new

    new_string << "ninety" if num == 90
    new_string << "eighty" if num == 80
    new_string << "seventy" if num == 70
    new_string << "sixty" if num == 60
    new_string << "fifty" if num == 50
    new_string << "forty" if num == 40
    new_string << "thirty" if num == 30
    new_string << "twenty" if num == 20
    new_string << "nineteen" if num == 19
    new_string << "eighteen" if num == 18
    new_string << "seventeen" if num == 17
    new_string << "sixteen" if num == 16
    new_string << "fifteen" if num == 15
    new_string << "fourteen" if num == 14
    new_string << "thirteen" if num == 13
    new_string << "twelve" if num == 12
    new_string << "eleven" if num == 11
    new_string << "ten" if num == 10

    if new_string.empty?
      num.to_s.each_char do |char|
        new_string << char.replace("one") if char == "1"
        new_string << char.replace("two") if char == "2"
        new_string << char.replace("three") if char == "3"
        new_string << char.replace("four") if char == "4"
        new_string << char.replace("five") if char == "5"
        new_string << char.replace("six") if char == "6"
        new_string << char.replace("seven") if char == "7"
        new_string << char.replace("eight") if char == "8"
        new_string << char.replace("nine") if char == "9"
        new_string << char.replace("zero") if char == "0"
      end
    end

    new_string = new_string.insert(4, "ty-") if num >= 91 && num <= 99
    new_string = new_string.insert(5, "y-") if num >= 81 && num <= 89
    new_string = new_string.insert(5, "ty-") if num >= 71 && num <= 79
    new_string = new_string.insert(3, "ty-") if num >= 61 && num <= 69
    new_string = new_string.sub('five', 'fifty-') if num >= 51 && num <= 59
    new_string = new_string.sub('four', 'forty-') if num >= 41 && num <= 49
    new_string = new_string.sub('three', 'thirty-') if num >= 31 && num <= 39
    new_string = new_string.sub('two', 'twenty-') if num >= 21 && num <= 29

    new_string.capitalize
  end

  def print_song
    if @initial_num == 0
      return
    end

    if @initial_num == 1
      print "#{num_to_text(@initial_num)} bottle of beer on the wall,\n#{num_to_text(@initial_num)} bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall.\n"
      return
    end

    while @initial_num >= 3
      next_num = @initial_num - 1
      print "#{num_to_text(@initial_num)} bottles of beer on the wall,\n#{num_to_text(@initial_num)} bottles of beer,\nTake one down, pass it around,\n#{num_to_text(next_num)} bottles of beer on the wall.\n"
      @initial_num -= 1
    end

    next_num = @initial_num - 1

    print "#{num_to_text(@initial_num)} bottles of beer on the wall,\n#{num_to_text(@initial_num)} bottles of beer,\nTake one down, pass it around,\n#{num_to_text(next_num)} bottle of beer on the wall.\n"

    @initial_num -= 1
    next_num = @initial_num - 1

    print "#{num_to_text(@initial_num)} bottle of beer on the wall,\n#{num_to_text(@initial_num)} bottle of beer,\nTake one down, pass it around,\n#{num_to_text(next_num)} bottles of beer on the wall.\n"
  end
end
