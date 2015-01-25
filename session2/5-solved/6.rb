#Josh
class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    true
  end
end

def prime_chars?(strings)
  strings.join.length.prime?
end
#===========================

#Jordan
def prime_chars?(array)
  length = array.join.length
  return false if number < 2

  (2..Math.sqrt(length)).none? {|num| length % num == 0}
  # A prime is a number for which there are no numbers in the range 2 to itself over 2 where it is divisible b
end


#solved by meads
def prime_chars? arr
	total = 0
	arr.each {|val| total += val.length}#counts the lenght of chars
	return false if total < 2 #handle the outside case
	(2...total).each do |n| #checks all numbers aother than 1 and itself
		return false if total % n == 0
	end #if the result is 0 for any value of n then this is not a prime and code will exit returning false
	return  true
end
#=========================================

#Sebastien
def is_prime?(number)
  return false if number < 2
  (2..Math.sqrt(number)).each do |a|
    return false if number %a==0
  end
    true
end

def prime_chars?(car)
  is_prime? car.join.length
end

#------------------------------------------

#paul fitz
def prime_chars?(strings)

  a = strings.join.length #this is the number of characters in the array. .JOIN is method used to change an array to a string
  if a < 2
    return false
  end
  (2...a).each do |n|
    return false if a % n == 0
  end
  return true
end

#Yannick
def prime_chars?(array)
  require 'prime'
  array.join.length.prime?
end


#kevin
def prime_chars?(number)
  answer = number.join.length # .join method returns a string created by converting each element of the array to a string
  if answer < 2
    return false
  end
  (2...answer).each do |n|
    return false if answer % n == 0
  end
end
