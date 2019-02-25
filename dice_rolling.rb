dice = [1, 2, 3, 4, 5, 6]
prompt = "> "

puts "Do you want to roll the dice?"

puts %Q{
1. Yes
2. No
}

print prompt
choice = $stdin.gets.chomp

while true
  if choice == "1"
    puts "Number is: #{dice.sample}"
  else
    puts "Bye bye!"
    exit(0)
  end
end
