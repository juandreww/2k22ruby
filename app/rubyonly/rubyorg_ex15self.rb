file_argv = ARGV.first
puts "-------------------------"
puts file_argv

file = open(file_argv)
puts "-------------------------"
puts "I am inspecting the file"
puts file.inspect
puts "-------------------------"
puts file.read
puts "-------------------------"
file.close