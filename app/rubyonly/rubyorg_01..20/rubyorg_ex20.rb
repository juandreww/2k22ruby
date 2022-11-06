# frozen_string_literal: true

input_file = ARGV.first

def print_all(file)
  puts file.read
end

def rewind(file)
  file.seek(0)
end

def print_a_line(line_count, file)
  puts "#{line_count}, Content: #{file.gets}"
end

current_file = File.open(input_file)
puts "First let's print the whole:\n"

puts "------------------------\nFunction 001\n------------------------"
print_all(current_file)
puts "Now let's rewind, kind of like a tape."

puts "------------------------\nFunction 002\n------------------------"
rewind(current_file)

puts "------------------------\nFunction 003..005\n------------------------"
puts "Let's print three lines:"
current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
