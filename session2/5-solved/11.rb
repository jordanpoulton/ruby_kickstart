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
    if n == 1 then 'bottle' else 'bottles' end
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