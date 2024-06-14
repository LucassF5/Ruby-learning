# Inheritance

# Inheritance is a mechanism that allows us to define a class in terms of another class, which makes it easier to create and maintain an application. This also provides an opportunity to reuse the code functionality and fast implementation time.

# Original class
class Animal
  def speak # Original method
    "Hello!"
  end
end

# Each time we inherits a class from another and define eht same method name, we override the original method. We can call the original method by using the super keyword.
# super keyword is used to call the same method from the parent class.

# Inherited class -> Dog inherits from Animal
class Human < Animal
  def speak
    super + " I am a human." # Call the original method and add a new string
  end
end

# Inherited class -> Dog inherits from Animal
class Dog < Animal
  def speak # Override the original method
    "Woof!"
  end
end

# Inherited class -> Cat inherits from Animal
class Cat < Animal
  def speak # Override the original method
    "Meow!"
  end
end

# Create a new object
dog = Dog.new
cat = Cat.new
human = Human.new

# Call the speak method
puts dog.speak
puts cat.speak
puts human.speak

# Output:
# Woof!
# Meow!
# Hello! I am a human.
