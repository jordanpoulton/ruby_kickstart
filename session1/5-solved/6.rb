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



def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
