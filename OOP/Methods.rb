# Methods

class Person
  
  @@people = 0

  def initialize(name, age)
    @name = name
    @age = age

    @@people += 1
  end

  # Instance method -to_s is a method that is called when we use puts
  def to_s
    "Name: #{@name}, Age: #{@age}"
  end

  # Class method - use self to define a class method
  def self.people
    puts "People: #{@@people}"
  end

  def get_name
    @name
  end
end

p1 = Person.new("Lucas", 23)
puts p1 # Name: Lucas, Age: 23
puts Person.people # People: 1


# Instance methods are called on an instance of the class                                                         You must create an instance of the class to call an instance method
p2 = Person.new("Maria", 40)
puts p2.get_name # Maria - Instance method


# Class methods are called on the class itself, not on an instance of the class                                   You call class methods on the class itself, you can call it outside of the class
puts Person.people # People: 2 - Class method
