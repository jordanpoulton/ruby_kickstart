#paul fitz
def arithmetic2(a, b)
	if a < b
		return a/2.0
	else
		return b/2.0
	end
end


#Jordan
def arithmetic2(a, b)
  a < b ? a / 2.0 : b / 2.0
end


#Solved by meads
def arithmetic2(a, b)
	if a < b == true
		return a / 2.0
	else
		return b / 2.0
	end
end

#Costas
def arithmetic2(a, b)
	if a<b
		a/2.to_f
	else
		b/2.to_f
	end
end
#===================

#Sebastien
def arithmetic2(a, b)
	if a < b
		return a / 2.0
	else
		return b / 2.0
	end
end

#Phil
def arithmetic2(a, b)
  if a < b
    a / 2.0
  else a > b
    b / 2.0
  end
  #What if the numbers are equal?!
end

#Yannick
def arithmetic2(a, b)
	([a,b].min)*0.5.to_f
end

