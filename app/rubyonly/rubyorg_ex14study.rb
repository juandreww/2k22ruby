user_name = ARGV.first
prompt = '> '

puts "Hi #{user_name}"
puts "Would you come here please?"
print prompt
yes_or_no = gets.chomp