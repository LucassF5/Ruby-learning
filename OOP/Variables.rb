# Variables

class Person

  # Class variable - use @@ to define a class variable
  @@people = 0

  def initialize(name, age)
    # Instance variable - use @ to define an instance variable
    @name = name
    @age = age

    @@people += 1 # Increment the class variable
  end

end


# Instance variable - the values defined in the initialize method are instance variables                                     Only the object has access to the instance variables                                                                     Necessary to instance a class to access the instance variables                                                           @instance_variable
pessoa1 = Person.new("Lucas", 23)
pessoa2 = Person.new("João", 25)

# Class variable - the values defined in the class are class variables                                                        All objects of the class have access to the class variables, without needing to be instanced                             @@class_variable

# Explanation:                                                                                                              The class variable @@people is incremented by 1 every time a new object of the class Person is created.                  In the example above, two objects were created, so the class variable @@people was incremented by 2.
