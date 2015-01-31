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

#Sebastien
class Person

	attr_accessor 'name'
	attr_accessor 'age'

	def initialize(name, age)
		@name = name
		@age = age
	end

	def birthday
		@birthday = age + 1
		@age = age + 1
	end
end

#Jordan
class Person
  def initialize name, age
    @name, @age,  = name, age
  end

  attr_accessor :name, :age

  def birthday
    self.age += 1
  end
end

#======================================
#paul fitz
class Person
	attr_accessor 'age'			#attr_accessor is a method that defines getter and setter methods for instance variables
	attr_accessor 'name'
	def initialize(name,age)	#initialize can be thought of as the function that "boots up" each object the class creates.
		@name = name
		@age = age
end
	def birthday
	@age += 1					#when josh.birthday is invoked Josh's age will also increase by one.
	end
end


# Gabe
class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_accessor :name
  attr_accessor :age

  def birthday
    @age += 1
  end

end

# Tom Coakes
class Person

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def birthday
    @age = @age + 1
  end
end


# Yannick

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

#Chris Ward
class Person
	def initialize(name,age)
		@name = name
		@age = age
	end

	def birthday
		@age = age+1
	end

	attr_accessor 'name', 'age'
end


