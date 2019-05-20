# https://learnrubythehardway.org/book/ex44.html
#

class Parent
  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new
son = Child.new

dad.implicit
son.implicit

dad.override
son.override

dad.altered
son.altered


class Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child2
  def initialize()
    @other = Other.new
  end

  def implicit()
    @other.implicit
  end

  def override()
    puts "CHILD override"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child2.new
son.implicit
son.override
son.altered

module Other3
  def override()
    puts "OTHER override()"
  end

  def implicit()
    "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child3
  include Other3

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child3.new
son.implicit
son.override
son.altered
