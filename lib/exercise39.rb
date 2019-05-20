# https://learnrubythehardway.org/book/ex39.html
#

states = {
    # ruby style guide says to use symbols instead of strings
    :Oregon => :OR,
    :Florida => :FL,
    :California => :CA,
    :NewYork => :NY,
    :Michigan => :MI,
}

cities = {
    :CA => "San Francisco",
    :MI => "Detroit",
    :FL => "Jacksonville"
}

cities[:NY] = "New York"
cities[:OR] = "Portland"

puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states[:Texas]

if !state
  puts "Sorry, no Texas."
end

city = cities[:TX]
city ||= 'Does Not Exist'
puts "The city for the state TX is: #{city}"
