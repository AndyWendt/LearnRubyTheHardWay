# https://learnrubythehardway.org/book/ex5.html
#

name = "Albert Einstein"
age = 99 # yep, I can still hang with the best of them at my age
height = 87 # inches
weight = 331 # I don't mind a ding dong every once in awhile
eyes = "Brown"
teeth = 'White'
hair = 'Blue'
height_in_centimeters = height * 2.54


puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{height_in_centimeters} centimeters tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# This line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight}, I get #{age + height}"

