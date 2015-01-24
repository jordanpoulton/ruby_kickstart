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
