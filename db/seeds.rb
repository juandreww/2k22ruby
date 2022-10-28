25.times do
    Item.create sku: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
                title: Faker::Commerce.product_name,
                nickname: Faker::Commerce.promotion_code,
                price: Faker::commerce.price,
                inventory: (0..10).to_a.sample,
                fulfillment_fee: Faker::Commerce.price(range: 0..2.99)
                unit_cost: Faker::Commerce.price(range: 5..12.99)
end

5000.times do
    order_type = %w[confirmed shipped delivered].sample
    purchase_date = Faker::Time.backward(days: 30)
    shipped_at = %w[shipped delivered].include?(order_type) ? purchase_date + 3.days : nil
    estimated_arrival_date = shipped_at.present? ? shipped_at + 4.days : nil
    confirmed_at = purchase_date - 1.hour
    fulfillment_center = %w[5bs yg1 mej xqf 4wj].sample

    PurchaseOrder.create    order_num: "#{Faker::Number.number(digits: 3)}-#{Faker::Number.number(digits: 8)}"

    purchase_date: purchase_date,
    status: order_type,
    sales_channel: ['amazon.com', 'ebay.com', 'walmart.com', 'amazon.de'].sample,
    order_total: Faker::Commerce.price(range: 10..20.99),
    num_items_shipped: [0, 1].sample,
    num_items_unshipped: [0, 1].sample,
    payment_method: ['CC'],
    shipped_at: shipped_at,
    shipping_price: Faker::Commerce.price(range: 1.0..2.99)
    carrier: %w[fedex ups dhl usps].sample,
    tracking_number: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha:3, min_numeric: 1),
    

end