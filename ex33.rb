def incrementer(incremental, how_much)

  numbers = []

  (0...incremental).each do |num|
    puts "At the top i is #{num}"
    numbers << num
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{num}"
  end

  # while i < incremental
  #   puts "At the top i is #{i}"
  #   numbers.push(i)
  #
  #   i += how_much
  #   puts "Numbers now: ", numbers
  #   puts "At the bottom i is #{i}"
  # end

  puts "The numbers: "

  # remember you can write this 2 other ways?
  numbers.each {|num| puts num}

end

incrementer(6, 1)
