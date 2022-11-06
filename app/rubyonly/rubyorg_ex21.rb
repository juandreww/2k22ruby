# frozen_string_literal: true

def add(val1, val2)
  puts "ADDING #{val1} + #{val2}"
  val1 + val2
end

def subtract(val1, val2)
  puts "SUBTRACTING #{val1} - #{val2}"
  val1 - val2
end

def multiply(val1, val2)
  puts "MULTIPLYING #{val1} * #{val2}"
  val1 * val2
end

def divide(val1, val2)
  puts "DIVIDING #{val1} / #{val2}"
  val1 / val2
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts 'Here is a puzzle.'

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
puts "That becomes: #{what}. Can you do it by hand?"
