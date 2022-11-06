espresso = 10
latte = 5
green_tea = 4.0
capuccino = latte + green_tea
chocolate = latte * espresso
thai_tea = green_tea
green_tea = green_tea / 2
sugar_tea = latte / 3.0

puts "Janji Jiwa sells #{espresso} Espresso & #{latte} Latte"
puts "Chocolate can be bought at limau. They now have #{chocolate} in stock."
puts "J.CO have new items coming next week. It's #{thai_tea} pcs of thai tea, #{sprintf('%.2f',green_tea)} pcs of green tea, and #{sprintf('%.2f',sugar_tea)} pcs of sugar tea"