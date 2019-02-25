class Cheering
  def initialize(your_name)
    @firstname = your_name
  end

  def cheers_up()
    puts "Hello #{@firstname}"
  end
end

print "What's your name: "
firstname = $stdin.gets.chomp

cheers = Cheering.new(firstname)
cheers.cheers_up
