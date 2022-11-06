user_name = ARGV.first
prompt = '> '

puts "Hi #{user_name}"
puts "Would you come here please?"
print prompt
yes_or_no = STDIN.gets.chomp

case yes_or_no.downcase
when "yes"
    puts "Allright, I have a quest for you to find a missing gem."
    puts "Tell me, how many gems are inside this purse ?"
    print prompt
    count_gems = STDIN.gets.chomp
when "no"
    puts "Okay, do you want to drink coffee instead?"
    print prompt
    drink_coffee = STDIN.gets.chomp
else
    puts "Sorry, can't understand your answer"
    puts "Would you come here please? (Yes/No)"
    print prompt
    yes_or_no_again = STDIN.gets.chomp
end

puts "Gems counted are #{defined?(count_gems) == 'local_variable' ? count_gems : 0} gems."
puts "#{user_name} #{defined?(drink_coffee) == 'local_variable' ? (drink_coffee.downcase == 'yes' ? 'would' : 'would not') : 'would not'} like to drink coffee."
if defined? yes_or_no_again == 'local_variable'
    puts "Wait a moment. I'm giving you a Zork and Adventure game."
    puts "Adios #{ARGV[1]}"
end