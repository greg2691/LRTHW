file_name = ARGV.first

def read_file(file_name)
  txt = open(file_name).read
  return txt
end

def write_file(from_file, to_file)
  txt = read_file(from_file)
  out_file = open(to_file, 'w').write(txt)
  return out_file
end

puts "Here your file \"#{file_name}\":"
puts read_file(file_name)

puts "If you want to copy the file to another file press Enter or else CTRL-C:"

$stdin.gets.chomp

print "Please enter you new file name: "
new_file = $stdin.gets.chomp
out_file = write_file(file_name, new_file)

puts "Here's your new file \"#{new_file}\":"
# Here your file "test.txt":
# greg.rb:4:in `read_file': undefined method `read' for "#<File:0x00007fae16180be8>":String (NoMethodError)
#        from greg.rb:15:in `<main>' ??????????????????
puts read_file(out_file)
