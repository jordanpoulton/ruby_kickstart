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