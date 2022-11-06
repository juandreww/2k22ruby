# frozen_string_literal: true

def shampoo_and_bodysoap(shampoo, bodysoap)
  puts "Good afternoon, #{ARGV.first}. Welcome to Hotel Mandarin Oriental"
  puts "We will be giving you #{shampoo} of shampoos and #{bodysoap} bodysoaps for your stays."
  puts 'Could you please sign the handover form? Thanks.'
  puts
end

def towel
  7
end

def recursive_shampoo_and_bodysoap(arg)
  return shampoo_and_bodysoap(@instance_shampoo, arg) unless arg.zero?
end

shampoo = 10
bodysoap = 20
@instance_shampoo = 30

puts "------------------------\nFunction 001\n------------------------"
shampoo_and_bodysoap(shampoo, bodysoap)
puts "------------------------\nFunction 002\n------------------------"
shampoo_and_bodysoap(5, 7)
puts "------------------------\nFunction 003\n------------------------"
shampoo_and_bodysoap(shampoo, bodysoap + 3)
puts "------------------------\nFunction 004\n------------------------"
shampoo_and_bodysoap(shampoo, shampoo + bodysoap)
puts "------------------------\nFunction 005\n------------------------"
shampoo_and_bodysoap(ARGV[1].to_i, shampoo + bodysoap)
puts "------------------------\nFunction 006\n------------------------"
shampoo_and_bodysoap(ARGV[1].to_i + towel, bodysoap)
puts "------------------------\nFunction 007\n------------------------"
shampoo_and_bodysoap(towel, bodysoap)
puts "------------------------\nFunction 008\n------------------------"
[0, 1].each do |i|
  recursive_shampoo_and_bodysoap(i)
end
puts "------------------------\nFunction 009\n------------------------"
[0, 1].each do |i|
  i.odd?
  recursive_shampoo_and_bodysoap(i)
end
puts "------------------------\nFunction 010\n------------------------"
[0, 1].each do |i|
  recursive_shampoo_and_bodysoap(i) unless (i + 1)**2 != 4
end
