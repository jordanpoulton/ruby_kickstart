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





