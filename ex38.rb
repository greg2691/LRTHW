ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

# splits everyword into ten_things variable with .split method and saves them
# into stuff array
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

# checks if stuff has less than 10 elements, is it returns true it executes the code
while stuff.length != 10
  # Removes the last element from more_stuff and saves it into next_one variable
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  # adds (push) the data from next_one variable into the stuff array
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

# prints the second elements from stuff array
puts stuff[1]
puts stuff[-1] # whoa! fancy
# removes and returns the last element from stuff array
puts stuff.pop()
# return a string separated by ' ' from stuff array
puts stuff.join(' ')
# return a string with the element from 3 to 5 and separates them with #
puts stuff[3..5].join("#")
