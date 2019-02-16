# Here opens the logo and print it out
logo = open('logo.txt')
puts logo.read


# Create an about function
def about
  puts "Created by Gregory Condello in 2019 under GNU License."

end

# Now we create a menu module
def menu()
  menu = ['Play', 'About', 'Exit']
  number = 1
  puts "Chose one of the option below:"
  menu.each do |item|
    puts "#{number}. #{item}"
    # Increment the menu item number
    number += 1
  end

  while true
    # See Infinite Loop video in this folder
    menu_item = $stdin.gets.chomp

    if menu_item == "1"
      start
    elsif menu_item == "2"
      about
    elsif menu_item == "3"
      puts "Bye..."
      exit(0)
    else
      puts "Choose one option"
    end
  end
end

def start
  puts "You are somewhere... "
  sleep(3)
  puts "What do you do? "
  puts "1. Move on"
  while true
    chose = $stdin.gets.chomp
    if chose == "1"
      puts "You moved on. Congratulations."
    else
      answers = ['Chose', 'That\' life, you gotta chose', 'Simply chose']
      puts answers.sample
    end
  end
end

menu()
