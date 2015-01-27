# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#
<<<<<<< HEAD:session2/5-solved/solved/10_classes.rb
class Person
  attr_accessor 'name', 'age'
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def birthday
    @age += 1
  end
  
end
=======

class Person

end

>>>>>>> e058ac5dc2b25b04b65da0ed1943a39d8bbea1ba:session2/3-challenge/10_classes.rb

