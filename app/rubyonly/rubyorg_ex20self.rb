# frozen_string_literal: true

file_path = ARGV.first

file = File.open(file_path)
puts file.read
puts "------------------------\nCode-Blocks 001\n------------------------"
puts file.read
