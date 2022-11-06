# frozen_string_literal: true

def multiply_by_dozen(num)
  num * 12
end

def divide_by_dozen(num)
  num / 12
end

def multiply_by_score(num)
  num * 20
end

def multiply_by_gross(num)
  num * 144
end

def multiply_by_rim(num)
  num * 500
end

num = 4
puts "Sarah bought a notebook #{num} dozen. It is equal to: "
puts "#{multiply_by_dozen(num)} pieces."
puts

num = 3
puts "Jimmy went to Sate Kendal and ordered #{num} score of satay. It is equal to: "
puts "#{multiply_by_score(num)} pieces."
puts

num = 288
puts "Louis found #{divide_by_dozen(num)} gross of pencils inside a dumpster. It is equal to: "
puts "#{multiply_by_gross(divide_by_dozen(num))} pieces."
puts

num = 2
puts "We have #{num} rim of papers. It is equal to:"
puts "#{multiply_by_rim(num)} pieces."
puts
