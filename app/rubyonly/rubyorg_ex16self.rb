file_path = ARGV[0]
user_name = ARGV[1]

puts "Hi again, #{user_name}"
puts "We are going to erase content of file at #{file_path}"
puts "You may type CTRL-C to cancel erasing."
puts "Or if you wish to proceed, hit RETURN."

puts "Opening the file..."
file = open(file_path, 'w')

puts "Truncating the file. Goodbye!"
file.truncate(0)
