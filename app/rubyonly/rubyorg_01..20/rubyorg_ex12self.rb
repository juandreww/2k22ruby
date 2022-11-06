puts "Hi Amar, Welcome to Kopi Jiwaku!"
print "I'm Syahrul. What do you want to order? "
ordered_item = gets.chomp
print "Okay. How many #{ordered_item} do you want? "
ordered_item_quantity = gets.chomp.to_i
ordered_item_added_bonus = ordered_item_quantity.to_f + 5
print "Noted, we will give you additional 5 so you will get #{ordered_item_added_bonus}. "
gets.chomp
puts "Thank you. Please wait a moment."