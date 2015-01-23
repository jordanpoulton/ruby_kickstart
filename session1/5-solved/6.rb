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

#solved by loris
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