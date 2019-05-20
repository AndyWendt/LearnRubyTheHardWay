# https://learnrubythehardway.org/book/ex33.html
#

def numbers_for(max, increment)
  numbers = []
  (0..max).each do |num|
    numbers << num
    puts "Numbers now: ", numbers
    puts "At the bottom num is #{num}"
  end

  # implicit return
  numbers
end

def numbers_while(max, increment)
  i = 0
  numbers = []

  while i < max
    puts "At the top i is #{i}"
    numbers << i

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  # returns without an explicit return
  numbers
end

puts "The numbers: "
numbers_while(10, 3).each {|num| puts num}
numbers_for(10, 3).each {|num| puts num}
