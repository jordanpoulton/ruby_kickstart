#Josh Peek
def add_more_ruby(string)
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end

#Jordan
def add_more_ruby(string)
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end

#paul fitz
def add_more_ruby(string)
	string.gsub('sad', 'happy').gsub('Sad','Happy')
end
#Paul - what about 'Sad'? This won't be replaced with 'Happy' will it? When you run rake 1:5 do both tests pass? (Comment by Jordan)

#Solved by meads
def add_more_ruby(string)
	string.gsub(/sad/, "happy").gsub(/Sad/, "Happy")
end

#Costas
def add_more_ruby(string)
string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end
#======================

#Sebastien
def add_more_ruby(string)
	string.gsub("sad", "happy").gsub("Sad", "Happy")
end
#======================

#solved by loris
def add_more_ruby(string)
  string.gsub("sad", "happy").gsub("Sad", "Happy").gsub("SAD", "HAPPY")
end


def add_more_ruby(string)
  string.gsub("sad", "happy").gsub("Sad", "Happy")
end

#Yannick
def add_more_ruby(string)
	string.gsub("sad", "happy").gsub("Sad", "Happy")
end

#kevin lanzon
def add_more_ruby(string)
  string.gsub(/Sad/, "Happy").gsub(/sad/, "happy")
end


# Tom Coakes
def add_more_ruby(string)
  lowercase_replaced = string.gsub("sad", "happy")
  lowercase_replaced.gsub("Sad", "Happy")
end
