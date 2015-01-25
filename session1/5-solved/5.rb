#Josh Peek
def add_more_ruby(string)
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end

#paul fitz
def add_more_ruby(string)
	string.gsub!("sad", "happy")
end
#Paul - what about 'Sad'? This won't be replaced will it? When you run rake 1:5 do both tests pass? (Comment by Jordan)

#Solved by meads
def add_more_ruby(string)
	string.gsub(/sad/, "happy").gsub(/Sad/, "Happy")
end
#======================

#Alex Parkinson
def add_more_ruby(string)
	string.gsub("sad", "happy").gsub("Sad", "Happy")
end
