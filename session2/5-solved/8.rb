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


# Gabe
def got_three?(array)
  result = false
  array.each_with_index do |x, i|
    if x == array[i+1] && array[i+1] == array[i+2]
      result = true
    end
  end
  result
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

#Chris Ward

def got_three?(array)
  output = false
  array.each_index do |i|
    if array[i] == array[i+1] && array[i] == array[i+2]
      output = true
      break
    else
      output = false
    end 
  end
  output
end

