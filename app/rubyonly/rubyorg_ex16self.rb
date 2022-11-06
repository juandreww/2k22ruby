argv_first = ARGV[0]
argv_second = ARGV[1]
prompt = '< '

puts "Your file is in directory: #{argv_first}"
puts "  Glad to have you on board, #{argv_second}!"
puts "      Please proceed to emptying the file by hitting RETURN:"

STDIN.gets



file = open(argv_first, 'w')
file.truncate(0)
text_combined = ""

for i in 1..3
    puts "Write out your line_" + i.to_s
    print prompt
    line_input = STDIN.gets.chomp
    text_combined = text_combined + line_input + "\n"
end

file.write(text_combined)
puts "The new text files are:"
puts text_combined
file.close