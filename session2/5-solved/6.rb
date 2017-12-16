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


# Gabe
def prime_chars?(array)
  count = 0
  array.each { |string| count += string.length }
  ('1' * count) !~ /^1?$|^(11+?)\1+$/ ? true : false
end


# Tom Coakes
def prime_chars?(array)
  sum = array.join.length

  return false if array.empty?
  return false if sum == 0 || sum == 1

  (2...sum).each do |num|
    if sum % num == 0
      return false
    end
  end
end

#Chris Ward

def prime?(n)
  return false if n < 2
  (2..(n-1)).each { |x| return false if n % x == 0 }
  true
end

def prime_chars?(array)
num = array.join.length
prime?(num)
end

#Phil
def prime_chars? stringsArray
  
  sum = stringsArray.join.length
  
  if sum < 2
    return false
    #Checks if sum is 1, and returns false if true (sure this should be returning true, as one is a prime number. However test will not pass otherwise!)
  else 
    i = 2
    while i < sum
      if sum % i == 0
        return false
        break
      else 
        i = i + 1
      end
    end
    return true
  end
end

#Costas
def prime_chars?(array)

  total = array.join.length

  if total < 2
    return false
  end

  (2...total).each do |x|
    if total % x == 0
      return false
    end
  end
end

#Josue
def prime_chars?(array)
  size = array.join.length

  return false if size < 2

  #a prime will only give '0' as remainder when divided by '1' or itself
  #so we exclude both '1' and the number we iterate through
  (2...size).each do |num|
    if size % num == 0
      return false
    end
  end
  true
end

