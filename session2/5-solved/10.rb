class Person
  attr_accessor 'name', 'age'

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def birthday
    @age += 1
  end
end

#Solved by meads
class Person
	attr_accessor 'name', 'age' #allows the object's attribute to be returned and updated.
	def initialize(name, age)#values set up when the object is first created.
		@name = name
		@age = age
	end	
	
	def birthday
		@age = age + 1
	end
end
#===============================