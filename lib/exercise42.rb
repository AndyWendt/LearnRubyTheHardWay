# https://learnrubythehardway.org/book/ex42.html
#

## Animal is-a object look at the extra credit

class Animal
  def initialize(name)
    ##
    @name = name
  end
end

## ??
class Dog < Animal
end

class Cat < Animal
end

class Person
  attr_accessor :pet

  def initialize(name)
    ## ??
    @name = name
    @pet = nil
  end
end

class Employee < Person
  def initialize(name, salary)
    ## hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end
end

## ??
class Fish
end

## ??
class Salmon < Fish
end

## ??
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## ??
satan = Cat.new("Satan")

## ??
mary = Person.new("Mary")

## ??
mary.pet = satan

## ??
frank = Employee.new("Frank", 12000)

## ??
frank.pet = rover

## ??
flipper = Fish.new

## ??
crouse = Salmon.new

## ??
harry = Halibut.new
