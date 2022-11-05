filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
puts txt.read
puts ""

print "Type the filename again: "
file_again = STDIN.gets.chomp

txt_again = open(file_again)
print txt_again.read
puts ""