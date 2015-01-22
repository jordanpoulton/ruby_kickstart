def grade(num_books, reads_books)
  if reads_books
    return "C" if num_books <  10
    return "B" if num_books <= 20
    return "A"
  else
    return "D" if num_books <  10
    return "C" if num_books <= 20
    return "B"
  end
end

#Solved by meads, I really need to refactor this 
def grade(num_books, reads_books)
	if reads_books == true
		if num_books < 10 then 
			"C"
		elsif num_books <= 20 then
			"B"
		else
			"A"
		end
	else 		
		if num_books < 10 then
			"D"
		elsif num_books <= 20 then
			"C"
		else
			"B"		
		end
	end
end
#=======================
			