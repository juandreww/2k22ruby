barber_name, customer_name, order_item = ARGV

barber_name = 'GrabFoOd'

jokoon = case barber_name.downcase
        when 'gofood'
            'go_food'
        when 'grabfood'
            'grab_food'
        end

puts jokoon

puts "Hi. Welcome to the Amir Aesthetic Salon"
puts "Dear #{customer_name}, thank you for choosing #{order_item} service"
puts "Please go to the seat 7, and #{barber_name} will be your barberman today."
puts "Have a nice day!"