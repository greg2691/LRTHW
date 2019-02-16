name = 'Zed A. Shaw'
age = 35
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
in_to_cm = height * 2.5
lb_to_kg = weight * 0.4

puts "Let's talk about #{name}."
puts "He's #{height} inches tall and #{in_to_cm} cm tall."
puts "He's #{weight} pounds heavy and #{lb_to_kg} kg heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get is exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
