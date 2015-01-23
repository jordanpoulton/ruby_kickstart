def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
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

#Sebastien
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


