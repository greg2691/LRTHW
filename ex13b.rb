name = ARGV.first

puts "Hello #{name}, how are you today?"
mood = $stdin.gets.chomp

puts "So you're feeling #{mood} #{name}. Bye!"
