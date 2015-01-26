class Fraction
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    self.numerator, self.denominator = numerator, denominator
  end

  def to_s
    "#{numerator}/#{denominator}"
  end

  def to_f
    numerator / denominator.to_f
  end

  def gcd(a, b)
    return a if b == 0
    gcd b, (a % b)
  end

  def lowest
    divisor = gcd(numerator, denominator)
    Fraction.new(numerator/divisor, denominator/divisor)
  end
end

#==============Meads==============
class Fraction
  attr_accessor :numerator, :denominator

  def initialize (numerator, denominator)
    @denominator = denominator
    @numerator =  numerator
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)#recursion being used here.
  end

  def to_s#this is overriding the usualy to_s method with this one hence puts is using this to_s
    "#{@numerator}/#{@denominator}"
  end

  def to_f
    @numerator.to_f / @denominator.to_f
  end

  def lowest
    gcommon = gcd(@numerator, @denominator)
    Fraction.new(@numerator / gcommon,@denominator / gcommon)
  end

end
#====================