# frozen_string_literal: true

def rewind_file(file)
  file.seek(0)
end

def print_a_line(line_number, file)
  puts "This is line #{line_number}\n> #{file.gets}"
end

file_path = ARGV.first

file = File.open(file_path)
puts "Reading file from path: #{file_path}"
puts file.read
puts "------------------------\nCode-Blocks 001\n------------------------"
puts "Repeat reading file from path: #{file_path}"
puts file.read
puts "------------------------\nCode-Blocks 002\n------------------------"
puts 'Rewinding file'
rewind_file(file)
puts "------------------------\nCode-Blocks 003\n------------------------"
puts "Now let's reading it again line by line"
line_number = 1
print_a_line(line_number, file)
line_number += 1
print_a_line(line_number, file)
line_number += 1
print_a_line(line_number, file)
