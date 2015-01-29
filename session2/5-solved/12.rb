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

#Jordan
class Fraction

  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator, @denominator = numerator, denominator
  end

  def to_s
    "#{numerator}/#{denominator}"
  end

  def to_f
    numerator.to_f / denominator.to_f
  end

  def lowest
    common = gcd(numerator, denominator)
    Fraction.new(numerator/common, denominator/common)
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

  def to_s
    gcd(b, a%b)
  end
end


#Sebastien
class Fraction

  attr_accessor 'numerator' , 'denominator'

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

    def to_f
      numerator / denominator.to_f
    end

    def gcd(a,b)
        if b == 0 then a else gcd( b , a%b ) end
    end

    def lowest
      divisor = gcd(numerator , denominator)
      Fraction.new(numerator/divisor , denominator/divisor)
    end

    def to_s
      "#{numerator}/#{denominator}"
    end


end

#================================================
#paul fitz

class Fraction

attr_accessor :numerator        #add attr_accessor so numerator and denominator can be changed
attr_accessor :denominator

  def initialize(numerator, denominator)  #initialize the object values
    @numerator = numerator
    @denominator = denominator
  end

  def lowest                              #use greatest common denominator to to nclude a method called lowest to return a new Fraction, where the numerator and denominator are reduced to lowest terms (ie 20/60 becomes 1/3)
    number = gcd(numerator, denominator)
    Fraction.new(numerator/number, denominator/number)
  end

  def to_s                            #method used to display numerator / denominator into a string
    "#{numerator}/#{denominator}"
  end

  def to_f                            #method used to divide numerator by denominator and return this as a float
    answer = numerator.to_f / denominator
  end

    def gcd(a,b)
      return a if b == 0
      gcd(b, a%b)
    end
end

# Gabe
class Fraction

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  attr_accessor :numerator
  attr_accessor :denominator

  def to_f
    @numerator / @denominator.to_f
  end

  def to_s
    @numerator.to_s + "/" + @denominator.to_s
  end

  def lowest
    gcd = gcd(@denominator, @numerator)
    Fraction.new(@numerator/gcd, @denominator/gcd)
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end
end


# Tom Coakes
class Fraction

  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  def to_s
    "#{@numerator}/#{@denominator}"
  end

  def to_f
    @numerator.to_f / @denominator.to_f
  end

  def lowest
    gcommon = gcd(@numerator, @denominator)
    Fraction.new(@numerator / gcommon,@denominator / gcommon)
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end
end
