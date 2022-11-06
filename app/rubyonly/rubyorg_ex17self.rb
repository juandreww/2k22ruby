from_filepath, to_filepath = ARGV
puts "Hey guys, we will be copying files from #{from_filepath} into #{to_filepath}"
from_file = open(from_filepath, "r+")
from_file_read = from_file.read
from_file_length = from_file.length

puts "The file from the from_file is #{from_file_length} bytes long."
puts "The file from to_file is #{File.exist?(to_filepath) ? "exist" : "not exist"}."
puts "To begin copying by press RETURN, else CTRL-C to terminate program."

STDIN.gets