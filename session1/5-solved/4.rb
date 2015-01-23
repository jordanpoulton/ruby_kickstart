#Josh Peek
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

#paul fitz
def grade(num_books, reads_books)
  if reads_books
    return "C" if num_books < 10
    return "B" if num_books <= 20
    return "A"
  else
    return "D" if num_books < 10
    return "C" if num_books <= 20
    return "B"
  end
end

#Costas
def grade(num_books, has_read_books)
  if has_read_books == false
  if num_books <10
    'D'
  elsif num_books <=20
    'C'
  else
    'B'
  end

  elsif num_books <10
    'C'
  elsif num_books <=20
    'B'
  else
    'A'
  end
end
#=======================

#Sebastien
def grade(num_books, reads_books)
  if num_books < 10 and reads_books == true
      return "C"
    elsif num_books < 10 and reads_books == false
      return "D"
  end

  if num_books.between?(10, 20) and reads_books == true
    return "B"
  elsif num_books.between?(10, 20) and reads_books == false
    return "C"
  end

  if num_books > 20 and reads_books == true
    return "A"
  elsif num_books > 20 and reads_books == false
    return "B"

  end

end

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

#Phil
def grade(num_books, reads_books)

  if reads_books == true

    if num_books < 10
      return "C"
    elsif num_books >= 10 && num_books <= 20
      return "B"
    elsif num_books > 20
      return "A"
    end

  else

    if num_books < 10
      return "D"
    elsif num_books >= 10 && num_books <= 20
      return "C"
    elsif num_books > 20
      return "B"
    end

  end
end

#Yannick
def grade(num_books, has_read_books)

  grades = {1 => "A",2 => "B",3 => "C",4 => "D"}
  score = 0

  has_read_books ? score += 1 : score = 0
  num_books >= 10 ? score +=1 : nil
  num_books > 20 ? score +=1 : nil

  grades[grades.length - score]

end

#kevin lanzon
def grade(num_books, reads_books)
  if reads_books == true
      if num_books < 10
        "C"
      elsif num_books <= 20
        "B"
      else
        "A"
      end
  else
      if num_books < 10
        "D"
      elsif num_books <= 20
        "C"
      else
        "B"
      end
    end
end
