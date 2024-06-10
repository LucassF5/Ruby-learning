# Class definition

# The name must begin with a capital letter and use CamelCase
class P
  # code
end
# p1 = P.new # Create a new object of the class Person


class Person
  # Initialize method
  # The initialize method is a special method that is called when an object is created, like a costructor
  def initialize(name, age)
    # Instance variable - use @ to define an instance variable
    @name = name
    @age = age
  end
end



pessoa1 = Person.new("Lucas", 23)
puts pessoa1 # Name: Lucas, Age: 23

pessoa2 = Person.new("João", 25)

Person.people # People: 2
