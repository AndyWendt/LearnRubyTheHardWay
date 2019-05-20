# https://learnrubythehardway.org/book/ex32.html
#

the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count
  puts "this is count #{number}"
end

fruits.each do |fruit|
  puts "a fruit of type: #{fruit}"
end

change.each { |i| puts "I got #{i}"}

elements = []

# https://stackoverflow.com/questions/9690801/difference-between-double-dot-and-triple-dot-in-range-generation
# .. vs ...
(0..5).each do |i|
  puts "adding #{i} to the list."
  # elements.push(i)
  elements << i
end

elements.each {|i| puts "element was: #{i}"}
