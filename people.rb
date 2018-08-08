# OOP exercise 1 !

# parent class
class Person

  def initialize(name)
    @name = name
  end

  def greet
    "Hi, my name is #{@name}."
  end

end

# child of class Person
class Student < Person

  def learn
    "I get it!"
  end

end

# another child of class Person
class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end

