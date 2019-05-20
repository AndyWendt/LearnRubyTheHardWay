# https://learnrubythehardway.org/book/ex41.html
#

class Sayer
  def do(say)
    puts say
  end
end

# Tell Ruby to make a new type of thing.
class Animal
  # "From foo, get the K attribute, and set it to Q."
  attr_accessor :K
  @K = "A"
  # The concept that a class can be composed of other classes as parts, much like how a car has wheels.
  # "class X has-a initialize that takes a J parameter."
  def initialize(say, sayer)
    # Inside the functions in a class, @ is a variable for the instance/object being accessed.
    @say = say
    # A property classes have that are from composition and are usually variables.
    @sayer = sayer
  end
  def foo
    @sayer.do(@say)
  end

  "class X has-a function named M that takes a J parameter."
  def m(j)
    j
  end
end

# The concept that one class can inherit traits from another class, much like you and your parents.
class Bearcat < Animal

end

# "Make a class named X that is-a Y."
class Tomcat < Animal

end

# Two meanings: the most basic type of thing, and any instance of some thing.
bearcat = Bearcat.new('baz', Sayer.new)
# "Set foo to an instance of class X."
tomcat = Tomcat.new('bar', Sayer.new)
puts bearcat.equal? tomcat


# What you get when you tell Ruby to create a class.
# A phrase to say that something inherits from another, as in a "salmon" is-a "fish."
puts bearcat.is_a? Animal

# How you define a function inside a class.
bearcat.foo

# "From foo, get the M function, and call it with parameter J."
puts bearcat.m("z")

#"From foo, get the K attribute, and set it to Q."
bearcat.K = "t"

puts bearcat.K
