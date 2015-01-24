def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
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