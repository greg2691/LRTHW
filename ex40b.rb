class Count
  def initialize(numbers)
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

number = Count.new(input)

number.counting()
