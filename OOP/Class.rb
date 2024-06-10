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

# Person.people # People: 2


class Pessoa
  attr_accessor :name, :age
  # attr_reader :name
  # attr_writer :name

  def initialize(name, age)
    @name = name
    @age = age
  end

end

pessoa3 = Pessoa.new("Maria", 40)
puts pessoa3.name # Maria

# attr_accessor: creates a getter and a setter for the instance variable
# attr_reader: creates a getter for the instance variable
# attr_writer: creates a setter for the instance variable

# attr methods are used to create getter and setter methods for instance variables
# It's a way to avoid writing getter and setter methods manually
