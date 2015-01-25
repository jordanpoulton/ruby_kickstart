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
>>>>>>> 957a49424f53cb1f9a72406f6abc7d78c4fb0057
