require 'date'

class User
  attr_accessor :username, :blogs

  def initialize(username)
    self.username = username
    self.blogs    = []
  end

  def add_blog(date, text)
    added_blog = Blog.new(date, self, text)
    blogs << added_blog
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse
    added_blog
  end
end



class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end

  def summary
    text.split[0..9].join(' ')
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other)
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
end


#Sebastien
class User
  attr_accessor :username, :blogs

  def initialize(username)
    self.username, self.blogs = username, Array.new
  end

  def add_blog(date, text)
    Blog.new date, self, text
  end

  def blogs
     @blogs.sort! { |blog1, blog2| blog2.date <=> blog1.date }
  end

end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date, self.user, self.text = date, user, text
    user.blogs << self
  end

  def summary
    summary = ""
    get = @text.split(/ /)
    get.each_index do |word|
      summary << get[word] << " " if word < 10
    end
    summary.strip
  end

  def display_entry
    puts user.username + " " + date.to_s
    puts text
  end
  def ==(other)
    self.date == other.date && 
    self.user == other.user && 
    self.text == other.text
  end
end
