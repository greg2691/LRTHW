class Count
  # every class must begin with initialize function
  def initialize(numbers)
    # @start is the local variable, it means that it refers to this specific class
    @start = numbers
  end

  def counting()
    (@start..10).each do |i|
      puts i
    end
  end
end

print "Enter the starting number: "
input = $stdin.gets.chomp.to_i

# here I'm creating a new object (maybe an instance?)
number = Count.new(input)

number.counting()
