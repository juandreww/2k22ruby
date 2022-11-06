# frozen_string_literal: true

def peanuts_bread_one
  puts 'It is absolutely have no jam.'
end

def peanuts_bread_two(arg1)
  puts "If we want to have a good breakfast, we can have a peanut bread with a #{arg1}"
end

def peanuts_bread_three(arg1, arg2)
  puts "You can also add an #{arg2} for your food and #{arg1} for the drink."
end

def peanuts_bread_four(*args)
  arg1, arg2, arg3 = args
  puts "I prepared a Peanut Bread, along with #{arg1}, #{arg2}, and #{arg3}"
end

peanuts_bread_one
peanuts_bread_two('Milk')
peanuts_bread_three('Milk', 'Egg')
peanuts_bread_four('milk', 'egg', 'juice', 'pizza')
