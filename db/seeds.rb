25.times do
    Item.create sku: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
                title: Faker::Commerce.product_name,
                nickname: Faker::Commerce.promotion_code,
                price: Faker::commerce.price,
                inventory: (0..10).to_a.sample,
                fulfillment_fee: Faker::Commerce.price(range: 0..2.99)
                unit_cost: Faker::Commerce.price(range: 5..12.99)
end