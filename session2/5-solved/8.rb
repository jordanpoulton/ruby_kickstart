def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
end

#Jordan
def got_three?(array)
  array.each_cons(3) {|a,b,c| return true if a == b && b == c}
end

#Solved by meads
def got_three? arr
	arr.each_cons(3){|x|
		return true if x.uniq.length == 1}
	false
end
#=====================

#Sebastien
def got_three?(array)
	array.each_cons(3) do |a, b, c|
		return true if a == b && a == c
	end
	return false
end

#--------------------
#paul fitz
def got_three?(input)
	input.each_cons(3) do |a, b, c|   #.each_cons is used to grab consecutive elements in an array
	  if a == b && a == c
	  	return true
	  end
	end
	return false
end

#Yannick
def got_three?(array)
	array.each_cons(3) do |a, b, c|
		return true if a == b && a == c
	end
	return false
end


# Tom Coakes
def got_three?(array)

  array.each_cons(3) do |a, b, c|
    if a == b && a == c
      return true
    end
  end

  false
end