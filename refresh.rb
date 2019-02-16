filename = ARGV.first

new_file = open(filename, 'w')

print "Enter your text: "
user_input = $stdin.gets.chomp

new_file.write(user_input)
