def add_more_ruby(string)
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end

#Solved bu meads
def add_more_ruby(string)
	string.gsub(/sad/, "happy").gsub(/Sad/, "Happy")
end
#======================

#solved by loris
def add_more_ruby(string)
  string.gsub("sad", "happy").gsub("Sad", "Happy").gsub("SAD", "HAPPY")
end

