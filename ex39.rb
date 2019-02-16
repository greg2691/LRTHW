# creates a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
# Cities have abbreviation as index and states have full name as index
# so states['Michigan'] return MI and cities['MI'] returns the city Detroit
# so it's like is I wrote #{cities['MI']}
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida ha: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
# it passes each state (index) and every abbreviation and stores them respectively
# into state and abbrev variables
states.each do |state, abbrev|
  # each time is passes abbrev variable for example 'MI' or 'CA' it stores it into the
  # city variable by getting it using the index 'MI' or 'CA' that corrisponds at a
  # particular city
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using ||= when the nil result
city = cities['TX']
# in ruby you can use ||= to assaign a default value to a value that is nil 
city ||= 'Does not Exist'
puts "The city for the state 'TX' is: #{city}"
