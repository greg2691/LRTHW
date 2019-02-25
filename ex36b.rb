require './ex36b_modules.rb'

print "Enter a sentence you want to split: "
SENTENCE = $stdin.gets.chomp

words = Sentences_game.break_words(SENTENCE)

puts "Ok, then that's a list of words:"
words.each do |word|
  print word
  $stdin.gets.chomp
end

puts "To win you have to guess one:"

win_word = words.sample
puts win_word

while true

  word_input = $stdin.gets.chomp

  if word_input == win_word
    puts "Congratulation, you won!"
    exit(0)
  else
    puts "Sorry, you're wrong..."
  end

end
