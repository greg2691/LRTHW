puts "How many options do you have?"
user_input = $stdin.gets.chomp.to_i

puts "You have #{user_input} options. Good..."

choices = []
(1..user_input).each do |i|
  print "Choice: "
  user = $stdin.gets.chomp
  choices << user
end

choices.each {|choice| puts "You chose: #{choice}"}

wait = 0
while wait < 3
  puts "Asking god"
  wait += 1
  sleep(1)
  puts "Universe is alligning"
  wait += 1
  sleep(1)
  puts "I have your choice!"
  wait += 1
  sleep(1)
end

puts "You should take #{choices.sample}!"
