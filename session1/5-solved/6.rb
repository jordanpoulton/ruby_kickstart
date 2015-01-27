#paul fitz
def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end

#JORDAN
def odds_and_evens(string, return_odds)
  output = ""
  string.chars.each_with_index do |character, index|
    if return_odds
      output << character if index.odd?
    else
      output << character if index.even?
    end
  end
  output
end

#Solved by meads
def odds_and_evens(string, return_odds)
	result = String.new
		if return_odds == true
			(1...string.length).step(2) do |index|
				result << string[index]
			end
		else
			(0...string.length).step(2) do |index|
				result << string[index]
			end
		end
	result
end
#===========================

#paul fitz
def odds_and_evens(string, return_odds)
  answer = ""

  string.length.times do |i|
    next if return_odds && i.even?
    next if !return_odds && i.odd?
    answer << string[i]
  end
answer
end

#Costas
def odds_and_evens(string, return_odds)
  x = String.new

    if return_odds == true
      string.length.times do |index|
    next if index.even? == true
     x << string[index]
 end
else
  string.length.times do |index|
    next if index.odd? == true
    x << string[index]
  end
end
  x
end


#solved by loris
def odds_and_evens(string, return_odds)
  newString = String.new
  puts newString
  stringArray = string.split(//)
  if return_odds == true
    stringArray.each_with_index do |v,k|
      if k%2!=0
        newString<<v
      end

      end
    else
      stringArray.each_with_index do |v,k|
        if k%2==0
          newString<<v
        end

        end

  end
  return newString
end


#Sebastien
def odds_and_evens(string, return_odds)
  newString = String.new
  puts newString
  stringArray = string.split(//)

  if return_odds == true

    stringArray.each_with_index do |v, k|

      if k % 2 != 0
      newString << v
      end

    end

  else

    stringArray.each_with_index do |v, k|

      if k % 2 == 0
      newString << v
      end

    end

  end
  return newString
end


#Phil
def odds_and_evens(string, return_odds)
  stringArray = string.split ""
  returnString = ""

  if return_odds == true
  stringArray.length.times do |index|
    if index.odd?
      returnString << string[index]
    end
  end
  elsif
    stringArray.length.times do |index|
      if index.even?
        returnString << stringArray[index]
      end
    end
  end
  returnString
end

#Yannick
def odds_and_evens(string, return_odds)
  finish_array = ""
  if return_odds
    string.split("").each {|x| x.to_i % 2 != 0 ? finish_array << x : nil}
  else
    string.split("").each {|x| x.to_i % 2 == 0 ? finish_array << x : nil}
  end
finish_array
end


#kevin lanzon
def odds_and_evens(string, return_odds)

  if return_odds
    # This returns odd letters .odd?
    return_letters = String.new # Returns letters in a string. Could use = ""
    string.size.times do |letter|
      if letter.odd?
        return_letters << string[letter] # This returns "bdf"
      end
    end

    return_letters # This returns the string

  else
    #  This returns even letters .even?
    return_letters = String.new
    string.size.times do |letter|
      if letter.even?
        return_letters << string[letter] # This returns "aceg"
      end
    end

    return_letters
    end
end


# Tom Coakes
def odds_and_evens(string, return_odds)
  new_string = ""
  if return_odds
    string.split('').each_with_index do |char, index|
      new_string << char if index.odd?
    end
  else
    string.split('').each_with_index do |char, index|
      new_string << char if index.even?
    end
  end
  new_string
end

# Sean Haughton
def odds_and_evens(string, return_odds)
  letters = ""

  if return_odds
    string.split('').each_with_index do |char, index|
      letters << char if index.odd?
    end
  else
    string.split('').each_with_index do |char, index|
      letters << char if index.even?
    end
  end
  letters
end


# Gabe
def odds_and_evens(string, return_odds)
  letters = string.split(//); new_string = ""
  letters.shift if return_odds                    # return_odds ? array.shift : array
  letters.each_with_index { |letter, i| i % 2 == 0 ? new_string << letter : next }
  return new_string
end

# solved by Riz

def odds_and_evens(string, return_odds)
  newString = ""
  index = 0
  letters = string.split("").each do |letter|
    if index.even? && return_odds == false
      newString << letter
    end
    if index.odd? && return_odds == true
      newString << letter
    end
    index +=1
  end
  return newString
end



#Guido

def odds_and_evens(string, return_odds)
	str = ""
	string.length.times do |i|
		if return_odds
		  next if i % 2 == 0
		  str << string[i]
		else
		  next if i % 2 != 0
		  str << string[i]
		end
	end
			str
end

#This can definitely be refactored!!
#Alex Parkinson
def odds_and_evens(string, return_odds)
  result = ""
  string.length.times do |index|
    next if
    return_odds == true && index.even?
    next if
    return_odds == false && index.odd?
    result << string[index]
  end
result
end
