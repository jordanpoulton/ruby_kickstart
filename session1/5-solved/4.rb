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


#solved by loris
def grade(num_books, reads_books)
  grades = ['A','B', 'C', 'D']
  
  if num_books < 10 && reads_books == true
    return grades[2]
  elsif num_books < 10 && reads_books == false
    return grades[3]
  end
    
  if num_books.between?(10, 20) && (reads_books == true)
    return grades[1]
  elsif num_books.between?(10, 20) && (reads_books == false)
    return grades [2]
  end
  
  if num_books > 20 && reads_books == true
    return grades[0]
  elsif num_books > 20 && reads_books == false
    return grades[1]
  end
  
end			