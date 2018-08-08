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
    puts "I get it!"
  end

end

# another child of class Person
class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

# instantiating an instructor object and a student object
chris = Instructor.new("Chris")
puts chris.greet

christina = Student.new("Christina")
puts christina.greet

chris.teach
christina.learn

# calling teach on christina (Student instance) would not work, as the teach
# method is a instance method of the class Instructor