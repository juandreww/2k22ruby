from_filepath, to_filepath = ARGV
puts "We are going to copy file from #{from_filepath} to #{to_filepath}"
from_file = open(from_filepath, 'r+')
from_file_length = from_file.length

puts "The contents of from_file are #{from_file_length} bytes long."
