file_path = ARGV[0]
user_name = ARGV[1]
prompt = '> '

puts "Hi again, #{user_name}"
puts "We are going to erase content of file at #{file_path}"
puts "You may type CTRL-C to cancel erasing."
puts "Or if you wish to proceed, hit RETURN."

STDIN.gets.chomp

puts "Opening the file..."
file = open(file_path, 'w')

puts "Truncating the file. Goodbye!"
file.truncate(0)

puts "type line_1"
print prompt
line_1 = STDIN.gets.chomp
puts "type line_2"
print prompt
line_2 = STDIN.gets.chomp
puts "type line_3"
print prompt
line_3 = STDIN.gets.chomp

text_combined = line_1 + "\n" + line_2 + "\n" + line_3 + "\n"
file.write(text_combined)

puts text_combined
puts "-------------------------"
puts "Closing file, saving updates."
puts file.close