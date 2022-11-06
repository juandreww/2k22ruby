from_filepath, to_filepath = ARGV
puts "We are going to copy file from #{from_filepath} to #{to_filepath}"
from_file = open(from_filepath, 'r+')
from_file_read = from_file.read
from_file_length = from_file_read.length

puts "The contents of from_file are #{from_file_length} bytes long."
puts "And existence of to_file is: #{File.exist? to_filepath}"
puts "Click RETURN if you wish to proceed, or CTRL-C if not"

STDIN.gets


