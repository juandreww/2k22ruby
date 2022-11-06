file_argv = ARGV.first
puts "-------------------------"
puts file_argv

file = open(file_argv)
puts "-------------------------"
puts "I am inspecting the file:"
puts file.inspect
puts "-------------------------"
puts file.read
puts "-------------------------"
file.close

print "Do you have another file to read? "
file_gets_chomp = STDIN.gets.chomp
puts "-------------------------"
puts file_gets_chomp

file_again = open(file_gets_chomp)
puts "-------------------------"
puts file_again.inspect
puts "-------------------------"
puts file_again.read
puts "-------------------------"
file_again.close
