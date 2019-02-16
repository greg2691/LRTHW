states = {
  'Italy' => 'IT',
  'Spain' => 'SP',
  'Great Britain' => 'GB',
  'Sweden' => 'SW'
}

cities = {
  'IT' => 'Rome',
  'SP' => 'Madrid',
  'GB' => 'London',
  'SW' => 'Stockholm'
}

puts '-' * 10
puts "Italy is abbreviated #{states['Italy']} and has #{cities[states['Italy']]} city."

puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} state is abbreviated #{abbrev}."
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has #{city} city."
end
